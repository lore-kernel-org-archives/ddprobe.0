Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274D9331214
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778863234; cv=none; b=MFoO3E/VqnrnXW8PSoTRZzFvHz+madOBswgA9URwHN/t8yepQocM6z88Zt4JTMCwG6RFPkltjd2qqyJNjSUvVcyzezuWy5DidUiF6gmdPQoWlBcLejjOi1/fnkze2GU0Sh+HVis+8XVhPknDetTPd3pztLqMMzsX+8Fa4YRoFew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778863234; c=relaxed/simple;
	bh=fZB6BvP7OSJsW8z8ijBTBb07S4EYhdsqZDDE55eTMR8=;
	h=To:Subject:From:Message-Id:Date; b=kvspjAb1bxE+TmohK8vN47hwTHMDDz9UnC+R3NggD9/XPo2lUuM2RkFGryWu6N9UdKkXBMKVoyYHnAof58O1gNO6BanaVdEzILfs/rn6HdkIqFXT/4gBrzv0gh3Avh+5gUNLvmL0azaEivecjbemqyQcQYM3CIWVulJu+abz4P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djcVRR5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djcVRR5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA17C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778863233;
	bh=fZB6BvP7OSJsW8z8ijBTBb07S4EYhdsqZDDE55eTMR8=;
	h=To:Subject:From:Date:From;
	b=djcVRR5dpSNCIr56TZwY/YZ8N4LqtlGtthchZQ0U+b8Soo3VWJZj0rswxKvkZAiX1
	 tzXh4dgkTzpgsG+nhaIXqdccMkW4VTBrJXfqoeoWosAPKdlzF5UxvY5/5IEtzdrF+0
	 0sQHDXpl1IBNolB1XSrpARC5xCpCoQkcBHHDRrj5zVAg6sIskq1wzO/RBwzWQRU0kE
	 khSUUlAbF/rudFm2p6lh7gpX/q1KPPzfaGX+aBOW5ggTqA9DKnaI5QjvVF1rKEsbhx
	 BKLUzKu8tWTuQI/4LNJLz3MZ7vGcog18tGuZgWJKrWW+iqWHvVIU2EyPOzy/TuO9dV
	 KBZv69Sbe7kiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F9FCD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886323374.3946.547141800015048247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3082fae8d0d1ace4601c6ce969ba81a467915347fa42caf674780ba502b43640
Date: Fri, 15 May 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778863233
