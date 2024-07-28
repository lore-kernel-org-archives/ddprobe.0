Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2AD4C85
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722128754; cv=none; b=Ttmypy8Imrkbhye4q3Sg9DYo3AFNoJL5UKDLd61tTDxAmBoEAz9eWsCfFAuCmudHucdbDsL+440TLlVd9XJ3a+l9UWkNNdevRJSkGO76DlFjr4BN3hijiGCVW/dfF4l9GYmj+kBg6d45VGTvjsonVOzkOzW6QtEo6R/JY8PDOc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722128754; c=relaxed/simple;
	bh=TnZhGbSy7RISDev88ml+wNkEQUu2HgfL19c1uXfG9JE=;
	h=To:Subject:From:Message-Id:Date; b=fAJ/xALR+2DdylCYG3tbX7gODB1giMifWFwGHsKVRf+zS0RQSsXcbGa5YaKiP/SZpnoxmHnYYnuts0lZlXCaS2oe6fQcj15vJowGlXGlrf0GJsq/BNa4Y7Fm5cFfp9PIW/kHF0Fc+8UmRlYnW3CTSQZ67X7Lr3urkRkmb6fw7qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfkl//nT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfkl//nT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB87C32781
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722128753;
	bh=TnZhGbSy7RISDev88ml+wNkEQUu2HgfL19c1uXfG9JE=;
	h=To:Subject:From:Date:From;
	b=lfkl//nTkNc/6KxM+VqZ/+/V0RHJyfLgSfqO99Dw4zEJwrIIcdIMPsxdJ+79EEYAF
	 mg67F15gHXEO3Bd/gkbUF+S0/GiZdVSXEAh8U6lSNqas7bLNmILxjL/xJugrbcDfLA
	 IWTjqrsrJ/hRN043s8U/qF3PxNObYUcGLQ5uT8vnTz0mP+InM5GTXUEwuZy1pWqrik
	 LLlRhiM/39aEFwJnT8Zvy8rmfT1/2oobiKvcUW4EIdfHdJUYzsNJN5AzCVnNGZPXcF
	 KPMH9F4x/1+vLYOr7AcQv4wyZUymA/536VbFcAIcNdwp2B5MIcqGFkkiF5lOEn+/Pc
	 gTx8L3PsKOKIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EFBC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172212875358.10592.15712562742231376943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0859b7dea03441b66925a4abcc3ed0c8154c0b4584e5e0ccb99980952b301f40
Date: Sun, 28 Jul 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722128753
