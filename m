Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312AB395D8C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779172834; cv=none; b=neUJJOYskhyWQnsOq70dKIOQU6SzQRwP65GJiH5ESzUAHZh7yPiGHjmHtZXjQaRg7aGDQWq3aUbxFWGuWhBybsvpEDkmhW7t3lpXipPq8Mln8ao/q6Wd98mYL42uC0DVpssMc5LQORlMVoP8Lwj7sjNjQEWAJFewFGmKeQ/OBMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779172834; c=relaxed/simple;
	bh=uaBEXuCzo//HOg+gZpzMrv18Ffd8IFJcaZLCecbbjlk=;
	h=To:Subject:From:Message-Id:Date; b=T0qqM5wnXRMr5ZvFQiLRGv67/A/s7m5xMbmCj+r2TVKvhymJukXAtfuOVBptS5wXRsTWqWcXt9Wlgino4KGNJYzS/sPcZpjN+KmZP6mElxnOxLWgidvozRTxIOeSJhEfckZMSsJI4r6wZ91+b0JonFlvEgNWjiDCVNOqdRErnVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtWneBNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtWneBNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1514C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779172833;
	bh=uaBEXuCzo//HOg+gZpzMrv18Ffd8IFJcaZLCecbbjlk=;
	h=To:Subject:From:Date:From;
	b=XtWneBNkldwJO1JmOdAHqtOsqzLu3w2aNGwTRiitOPeT9ljzqC6X29JfaRo0+hWuU
	 ZMUZFYQ1ybCgMyiFZ9jklsp3doViP2ML67sm0uKGdq9yNkLoAxPV3Ho8XcN7SUSoe8
	 kTEw5NX7KPrnlrc7ZrwdAX0AjBCd+TdsQMaaqkKSVClI3hJ0fIv291T7blCNKI4EHS
	 BjyDI2DcD+7ng6/0W8sz1HG6sTydetBR9x2etAI1htl5T+rfGV2EYtReanbFkiEsXw
	 GYBJG7U+9NIneAeZtj/GKk//6qQJ4WOEXHDWUYqw5Uys7KHr+JeAmArv/mv5AQxmmz
	 zprNLu0AP0zDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB11CD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917283369.16521.13133410078955167421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000f1a157a0b2141bd537a22622ec4bc990f9a7d3634f758b28964ce0eb3dff0
Date: Tue, 19 May 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779172833
