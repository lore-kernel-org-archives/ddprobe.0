Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FA01B0F04
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735874154; cv=none; b=sf71+CbGWmwFc9XggKnb6W7kZPrn8tFrhlNwWwwodH88cSxXFh0dbde248Kdeh0EBRbsJqOMRS0lybFLZPebK5wCB6h+1luKIIg9KcmnkSxfPba5dy8B5MIhwz4T2vV+p1EuxidTD610XM4g2gTpgT/6CaISSmB2m1R3LklbP2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735874154; c=relaxed/simple;
	bh=Q5I9Cj6LC80jeXyvpNomFbQ2egA15Un0HSXJbdrWrv8=;
	h=To:Subject:From:Message-Id:Date; b=YBznQY6D3c4kAKB0+ucbBLCvo8qRHbo6ekFVghnkkjucag3wBL+92LNojYWvPqHGt+1GnUKpg7aivCOZ8Ne7YFvUTv4Pvr594Www2Xpl1nR/nMwmQIRCBbhrJkJR0Z6t0uvDbHdC5h9eec61bnXeqMb0zHVqJ9z0wIiMqp7kssg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=It4Aar25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="It4Aar25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ED1C4CED0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735874153;
	bh=Q5I9Cj6LC80jeXyvpNomFbQ2egA15Un0HSXJbdrWrv8=;
	h=To:Subject:From:Date:From;
	b=It4Aar25PFJ3Hn6C0rzD7MLr5eVsLjMb/iHWVD/Y+2RaCK+SCiP+jdaMdbu0msC/X
	 7qvRs0XRuudLgStzVBRQWMDkA68hbh4z1OI0IKQYpUMAMXqRrNJELWvKplqfXaTvWP
	 e/tJjXHYvW5OCtnnJScnxrrwLsSpCgREid/5fgA1w6Wy7EBMJRWOj/zuGREx37L8Sx
	 rpblHK78crR9KvrCezG3NmtjqxL53xvHBejVs+nUZbDF5ItL0k5YKALjle54rwQaFj
	 DjBIiFhWsutDMKaFUAQ71PKfcuc6GJnCjkLfFsFspM100kHicTIR9kRKSdyd5u6cai
	 Wx98c4dqYsZWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9301DE77197
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173587415359.32070.17381775221992372444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1a3df56865a92f2964116449cf00c7812f2285dc8cf13fd7aed0dd3fd332d2
Date: Fri, 03 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735874153
