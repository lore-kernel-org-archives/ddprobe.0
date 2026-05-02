Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AE0382398
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777739254; cv=none; b=Ks8V/MvFU8P1AMZavQqe8MFnqZABRCrKmGv/x91lntPSHwi/A5LeM4zbjol1gtNp3ivyZMohcRsfo6f5orlqfrIvEegz7JNp1dSbHiyy5gV8okgoglywiczaqUwUlN2cFHaAXw00uy75LAa6dlY3aTtb/3/j0lWUGcBFEICfGD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777739254; c=relaxed/simple;
	bh=np8C6gO34l70OehfAeju9CLVRasSWmdr5f0cixgLfLk=;
	h=To:Subject:From:Message-Id:Date; b=ZFsrStZZHFsvAr2GpmhbBhzqYX18QxaBZikGpZHX8FJa/fORHUnPmKtnSfxirUSvpIzueOi2lcEolv0YGPDxhNWwolBG2TWhueVw1wpGnMFzfRcKN9axaLojXszpCZS9Vi6s4nuBv53gM60Ea77XqYrbNNuTi08+5uKq9TviX70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FduIAOD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FduIAOD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3985C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777739253;
	bh=np8C6gO34l70OehfAeju9CLVRasSWmdr5f0cixgLfLk=;
	h=To:Subject:From:Date:From;
	b=FduIAOD+7OcdCl9yT2AfnfW6+9bymljr8+U5XbMIX+onc19zKUd/ZdCUNTb8S3mGw
	 IJP+4UAYrQUTg4zYQ+NWpBmHUsjcBCM5+Pweq3YURQ3FcvJjPPg5xAYSTI6CYn30ir
	 ZvzgXPrtezo8U+VOERVm1S+tjkDh3WQ8x40mbekOA2A+0E7sE4ID/xIWAQafkpRTfP
	 Fd3b8uYrvnFqFCmFTxarLXhIogUbcSNwVBz2yE76IRODY/9bEzQZHtY38YYU/uM4Ah
	 ZKm5k08+CXmQorbjJK+fnNTamQCtLYqnnxKI2UO0WnDaT8QftwebvescjP6mQ1JiIx
	 KPXSGlkmcasig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAFFCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773925368.9209.3866159162118946842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1f72e10349b934104baad4ecc116b4bb84c76ddb22d50fe8fa49d1f09b0abb
Date: Sat, 02 May 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777739253
