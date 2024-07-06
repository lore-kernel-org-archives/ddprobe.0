Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C8F17753
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720290983; cv=none; b=sRpJsY7m5rzCZmtGSEla9k2tHVTwTYAcEmiAiWW9KJ8RrfOPDluHQ0bLrSpQLU9S3ucQPft9XZtUqweWoa43jgbzJRtzJnMKIlC0zbfjhUOdI9Sxm3K8YWcHpRoYX/17GFYRneyuoB5oS5/4t8/GB7Syupvwoe/cblTJCxRSy1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720290983; c=relaxed/simple;
	bh=HqLobHP01Z6Wz9Q7vO5S3ShPsVZ2YPG3SQOom/+bkLY=;
	h=To:Subject:From:Message-Id:Date; b=KVj32CPYxFcJnUt5J9ufKI7EIoHJGLIv79sCZyAWDNd23Y0XEmGrxWco4PLvJbZRYgRGpwFVUNGh/Eh6YXcbWgAD3NkqOSJh0moTQ+01qOy1Lyak7d+t0ZdjChRRM4BEbV/f4iHhnsc95tLf6ubkQL7GPg8E5mQOdoXonRRohwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjQW46bx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjQW46bx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1D9C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720290982;
	bh=HqLobHP01Z6Wz9Q7vO5S3ShPsVZ2YPG3SQOom/+bkLY=;
	h=To:Subject:From:Date:From;
	b=BjQW46bxEO10R/0TVjRgADXD944zMwfoVqLx7QvoTsF3nVIoS0cgOaJvegMCCS14H
	 +Bjgm9hl8vOHtrlFzEzVHXbhggODLS9tswPZkNGwelDWmYiUcwUvT4CFGn90jLGrmd
	 BRkakoTUVUkegMwg4jVJfaicsOi/iEM3Q3cy0UcYxaG9JNuVmRVb2ySoBYfV9Bnby+
	 VZr2AZrwIERl1UgnBO3PwuSUz1eNcG81FSQqaMwRcHjQBJqOMBu4kx9tJiZ88l0Sbi
	 7mIZAxIOaHHbHcE3vN+xegx/Zcr74wsCsoDDIWIVmhbhWMNDaOeIf1dK9mOxZ8rn3f
	 oVm6i9QK1d84w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4603C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029098278.8502.14844391405655134438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036baea6a7bd0972bdb01bb38125e9b77d231f3875e67921f8f25bb592a75347
Date: Sat, 06 Jul 2024 18:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720290982
