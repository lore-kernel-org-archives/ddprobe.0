Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BCD175D26
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733156154; cv=none; b=J5VyMDIKCzyKG7Qtvme3+uwaFy7i15oaR6vD6bABY0j5WZ5QmgviN2ZLRBQ6Kj0QptD+SqypXpJy/8VlC9sJmp2gOgXpQa/7FGy1pGTq9hguvhbYFuCrS7uYiD7US4bwa90Z6pJfSW70eby+rMRWgXzCK60LFQUTw5WOjeuYJpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733156154; c=relaxed/simple;
	bh=QcJCPSze7UOMsdV0E58K9s7TRsAgG3KDtFGdrm3R5Ls=;
	h=To:Subject:From:Message-Id:Date; b=jay60uf+INVyUgo8Rr1t6/BvqjlEQVzubNIF2iyr2z/nlbD+HTCh4YJrS9gpl2NGCfR6OXYHqSAEZVLKX6BHGSQlTjwroWAdKtTCFHfEAYw/nsizpQwWB8l/tu72hKgeJmLLQMQ3fVj0knVD/w5+n8TaHh7xwiTo6TpCBsRGhs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxx52eAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxx52eAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E51C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733156153;
	bh=QcJCPSze7UOMsdV0E58K9s7TRsAgG3KDtFGdrm3R5Ls=;
	h=To:Subject:From:Date:From;
	b=kxx52eAneDcJ2Ok5nyEkTV0RRF2mIMbqI/qKVB4SdEfmcSJgV6JDOAEbsUM+ruZGb
	 gTzJCcDcPOUhuVG0nznOBPMs+7RKeM2V4AqnojjBusoe/ZMT35GLaV7b3PkYSQKXbb
	 7myoKXHRS/rkjQGiCxrNx6Y711lksZ/kVa5N6DyVWLnA3J/PQb6VzC69CQnzC1mfEp
	 1HPiu/QyaT6mR3MbN+xr5RMuCYyWpqhRg7yi/zj1xUe13YqAndohbZI3AKMlfNbevX
	 v/9alCKLltZGlDZKguBDv9YcqfLCW0n2dMQt1yY+4D1xcMKFX7lE8svEHUqchOZJXc
	 hQBH/YGGoZqGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAA7D78333
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173315615362.1201.12537745641865471053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8596fa15fe8a6394037fae4ae6d4701d4cdd2880506bab1965d8d62ce9189d57
Date: Mon, 02 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733156153
