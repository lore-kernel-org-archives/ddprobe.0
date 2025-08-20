Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B67C311978
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755694794; cv=none; b=QYVsDBGq7PxESatMtehlMq1OQ1KvwNrDvR29z3NX8rZkOqhOOgFgMJkt+LLf7RRoWlhYgRiuEt89/fbClaP+hoC22FOTlKTnUMEkxoTRbOfHT2YHZ+NdXH8dPnmEQr0+mGBgBqsV/4PBUeoSN5DtNxB9kYKp2hB7Bhr6ZAbATtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755694794; c=relaxed/simple;
	bh=MF9AdTOYEdOkD3odojjRmcVUh3g1UP/zeqU6ekhal/8=;
	h=To:Subject:From:Message-Id:Date; b=lU0/S4Pnp7GwH4kHXz1vosNx/TwjUjZKXQQTyNMAPSDJhHi/9rGmm/IEKSaCV3zz0Elms1TnB3IlLsP1lh/ZD6p8GSI2y8WM1CMAbKd1DDUNyBVckdIWhMwH1gZ2yW5Fy9diO22buWEnaurELHZWtFzbULkJKVd13CH+mGjvuFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYgvkJfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYgvkJfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0054C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755694793;
	bh=MF9AdTOYEdOkD3odojjRmcVUh3g1UP/zeqU6ekhal/8=;
	h=To:Subject:From:Date:From;
	b=JYgvkJfz1ncI6819RWfomp3LLm2AsmiJrRGZp+osXYgnHxq8xgFi7wTsbwO5/ueu1
	 9ZQ7y+IqKVDJAF5xo+qP4T8c4gtgUI29m/naUmgavB5XyHeeJeTOIXSocS3CtrzkEZ
	 +4sgua9JgVeKUYgrxVV5Djm/tQDwrAtMxjjULHIKrt+PN4hIpBjO0eA251meBkB9X3
	 /H67LOXRnJG5K0gm5JLJDixsW2zT5xb61S37tzyjvBaiBn8h76JjWLv2qZA+LdO8MN
	 G8ZKMd9PPQNQw7pcLDzTorD0cM9zq/cNo+sfmQqH7/n7tofEp/83rqc4SFRAwrCUzI
	 RqievMiH3iqaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE07CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569479357.6555.11985465314159207570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406549d48d4105356f10c36788ef45345ad665eb42fb35fff69a802306110495
Date: Wed, 20 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755694793
