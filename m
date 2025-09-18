Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEE725A353
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758175794; cv=none; b=Z7Yb9Eofk1fuK5nHHJbMfXaWPSi3Q07H4ofDMzByhkcYtevu/A6Q/+hlfDcB/OwlhP4oPSrO4l2clAksjk14BmBm5DGUYDjCuvf3Vz//R71xYopsMYvwqf0ont++CT7xyiFzPt1zwu6k5weXh4oL2zpH0mHz0aELvxGF7ENk/lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758175794; c=relaxed/simple;
	bh=g1EZBfw9MUs7ddt6UyFAudUJby363DwO0fWQQGvfUVM=;
	h=To:Subject:From:Message-Id:Date; b=NSuJle/CToZJlva6CPt2w341utGBJlzlw/CHvwJv9rg8E/NdQkrPICiv8PX5FuevKLOAcml9LG0SeNITvUnMypUUfeR8SvZpACc0DPalpRcya/RDhiEW4qMjKegPKab3PFe2kolyUKRy6ITEiGH83o9vfwlahCB8O/M5dbSNmBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlEx+/+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlEx+/+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0426C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758175793;
	bh=g1EZBfw9MUs7ddt6UyFAudUJby363DwO0fWQQGvfUVM=;
	h=To:Subject:From:Date:From;
	b=rlEx+/+EfRv6hGBugXvAjjSqDxhtwLenkZ16/1JwBdbnF8hau0Y9FAkTmHnkchSGB
	 kGi7UPNOcYUBCwgivKWGZJqJRtcoUHw3MUllPIJSkvXNjxGv52oAiAKObagFdWCBm7
	 T/trdBtV+QUDYLX42pvc9mWWbezs8TTLiX2h7G2u8sSrzXC0rahx8nnSvd6FaIvLmA
	 KQ/g+GcIQmVGNzkD9TAdLl/baZ9xUtAYaUGitBva1ITtpyg792s3UXNljm2b3D6plW
	 0wsSrwNPIKA8jTC0CEyxF2BVD9UHwGPE7VszHSkT9A1fkMXuFxzkznlCZKwOHGUeOQ
	 4drhfCRzIzdHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087FCAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817579358.30322.14601247593677874880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51b861e2038619be3d6516b58fd8209bcb6a6d7a5f09a2ff8a95d47b099e7f2
Date: Thu, 18 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758175793
