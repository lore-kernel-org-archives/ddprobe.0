Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334A28C06
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722153954; cv=none; b=a9segpBp+mD8x4b1zR68mC7Z9jR5xtJ4/CSt6ZeGYRo+Nuw1mru0/sRrHqYWlhCf/5QpiK1jcJcuanzdx6Fo6HzkJ67cLqi9WFo/a9aaZmNPHtn83TXp/xVbOVc1CjYa+0dVMRADT5AVi1AhVo1r4GH/pTYMjrOs3NSSB0KaCeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722153954; c=relaxed/simple;
	bh=8mgF75k7bdwW6864jBfDSetm4Wbv+3FgGSCb75yfsNo=;
	h=To:Subject:From:Message-Id:Date; b=nyZxfdrYUxCp7365iW43bgQbLGoSZedl+ADzINc6tNJkgBt1C9eoC6QDxBgRg6+NvLN/Ve4uPkdwu1StYSK1VsAZQoj4himivzfeqZi+7BCHikC/kARiIGZlzRoI3IRld0wX9iEv6rhBvTkjZo2qRKiwallXXaD6uvf9tzAzOkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK+zVqxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK+zVqxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8AAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722153953;
	bh=8mgF75k7bdwW6864jBfDSetm4Wbv+3FgGSCb75yfsNo=;
	h=To:Subject:From:Date:From;
	b=CK+zVqxuWyeGgvZ+A5STW0BPNDmnP5UhCC3zUjQ+bk5LZlF8p1oOv0MDGX/+MtjL9
	 gH/uVjlpxRGq1W87N4XBcClByDdvgMmo5YQ/isM1/D1qG7tcqCwSJgi6TqC8b1O12c
	 eQxYHJ7EOoPZoe786HqZ65Hm4HNL6xiCoH6VuF7ffE0LbmDew2kZ8Vk1gvBWw1EzvA
	 uam5PgZ5xz/STCk+3M1NiXKNHTraKBs9VdXkoOgQBxqE4uXDaaWoDTbsEyZ/iTrzmH
	 abOHKy+P3fxR2DNecpcmTA0ZOoNlrqiSWcb+2ALBPvNpaVIKGmXT4r5J+Xmec+nhkf
	 /nec5FY+XzXyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A0AC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172215395364.23169.18043916247499707345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999fac66207ed97a9286cdaad1b98a5384301d73e21bcef15f8ad8ce24865e51
Date: Sun, 28 Jul 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722153953
