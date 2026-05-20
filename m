Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370FB1C3BFC
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779298834; cv=none; b=VLdWjFM/lW3J64L8m2oUUp2Op7heQm+At9YG8TM7xRcdnSkInXVkLu6Z4Ookpr4FMYUQ2KYrCnWrY55tXSfFqCKlAZdKpFuaaLRAuEDegTKwu9qB5dYZKx9J8Ar8fMmL1zEZmqPpe+HX/QJeGWRFszMFmlZ4rW0ESoYmFuXrKEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779298834; c=relaxed/simple;
	bh=TPJOO9zplypaqfpMZBGyjixuvTLvLmcwzreJSBgxKhg=;
	h=To:Subject:From:Message-Id:Date; b=GOWNM8c/PEjAoHmF/Le+W7sKMNdcx22Px7SbLTWftYFG7tD6uNZjFfn0X9WfdRMG7nwvfJXYl2Ji7j3DfjhmxspE2Rt3OzbapK06necbtMRaBScM50a9zX7sMt4y6L8ZbUKz9hwjkSVdYf8oybgLE/Kgu8gHcx7JRPMwIfFUong=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHuN+9/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHuN+9/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C983DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779298833;
	bh=TPJOO9zplypaqfpMZBGyjixuvTLvLmcwzreJSBgxKhg=;
	h=To:Subject:From:Date:From;
	b=mHuN+9/2jFk1CLFtsJNByP6UCeVCgqK/MpQWeupvN8Tq2ivVWySEA0w9sLJ4rR1VX
	 Cb3Vt3eKNuwE8YlUnwPOAbU/BZd9VQroy+T+1eic00Wob5n+UOabd0Hzk6tEJdtvDy
	 8xg37R4B47iGpTM3RkoCEC9EEJmu6OkXcPxeksxN+KOAoQ3GDZ8/EMVEktpZpsaRut
	 fQ7um2X/U4q5uqyjuCW5n6BlVz0517QwlWPaX/b7kJt3AJ8jmrlTkjeTNNdVHHDNis
	 jI5dxEMLQbSJSzc/ghXGzPW6kpJt4nqx5VeQl32W4t/eh+lIO4wconK7gzzydU8lWM
	 wcy5MR/eVzCLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC05CCD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929883369.23462.1291737377667807449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2171687a34b6c3e905b21524e562e7bc924d3cd9a3ee3301b655ffa3816b5cf7
Date: Wed, 20 May 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779298833
