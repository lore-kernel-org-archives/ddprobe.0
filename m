Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F16BA2E
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753127393; cv=none; b=dj76w3Gpll/SwPYRmlPiV9EO4lzwVSfIK579lbgSLfXQ99VrMfzRjkSE1jvP3tI4FKXWWBxdWjg6pk/Ypoo+KBGmjQ4+xlPTrsY7OPeV66u3p5FGhXoFi1PIBcgXpEFd5zYpVs9wWBlW97OTrVRgu64nqok1pvL6t7cCGaf5W60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753127393; c=relaxed/simple;
	bh=f95MHgNCcBwp6hZhXc0pOjHRYFeDdrHKzd9HdrAL/wo=;
	h=To:Subject:From:Message-Id:Date; b=pri3EA8RgAW19TY1mTcWXNkJcalCGWlGF5PpTwyq/YgPTOM/0hV9j+x2+BooHWwEMpp8DQotMRMMJ5trWzRCoGSNSkSzfSv7fEDozzUeSEcg3GUurqYI442V10pWEMdDq29QqJ0flSxptBbsboPC+yI33x/67aXf1eiK6WWe3Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNrxXGFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNrxXGFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE2FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753127393;
	bh=f95MHgNCcBwp6hZhXc0pOjHRYFeDdrHKzd9HdrAL/wo=;
	h=To:Subject:From:Date:From;
	b=SNrxXGFxfNIkk42E9NPXUuBBbob60ghoPnuAD6ET7A4YaJLUHzxjAQ4N/3F25kKgs
	 GHg/wLFZmFRv2izkJFulEdCL0i8atRimQ7O3ikRWNY4n3NV/dlSsQgIB3NhRPp0mKl
	 hm3ds7HJ0OFR5yxsheUWnT6//OZGUQ/FHJPFsxa6UVTNCIL6b5bhyeWGJ3TNDVOBvr
	 +kMoGPbqdgLzpA3tmdU0z1Ytdz/1RrE2HHNdTQny/b8e0wN0DUCpINrALBuAe8vG7F
	 swggldC1TIfo+V/SUOW4T+JlNWsi3t7FBFlTsFwBb5zRQOhh9wzcRko6k/9oMcDvfH
	 Wk/4UCi9KyE1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCEDC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312739358.13169.10887394468675467290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836cc1ca7681adb75e8c55a7b54355eba10bb4c0357d517615da7104f6b25058
Date: Mon, 21 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753127393
