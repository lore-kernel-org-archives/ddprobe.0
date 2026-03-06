Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CEC371CF0
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772825094; cv=none; b=l54u1Ml9FmkGcM8/RPXxrTkfIp0UF7Meih9p4n3bOVAlHyo47SPMGFEumJMqvdeYXwcNFLmqQBgPPFfasi+r0X3S2D4LigLlxtK5iB0fCTJiVFYLDus1CmtQA+Chr+XMRxv+JqKvXjy3tkv7rPJn2gR5G6sWM31UFiSAh1qTRvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772825094; c=relaxed/simple;
	bh=xtfyFRN8HINlWWFOY7sI2RrUAX+0i0C/Xf7HHmqeEO8=;
	h=To:Subject:From:Message-Id:Date; b=nTm3CMm/LWd5qI96J9edZnhwrrKFTvcnCMl/R+Hfd/AKlJwEEPRS9my02qhQId41UMtjKNMvHEHzokQWBLLaf+p4WJpjA8ZrjjolYNgF7lPJMsPPIhWKBa8kck3UwWhT/+FXmPMPdf2M5zcWYnU6lXbUsT9tXL0ltUWyWqeCVnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLQB6B0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLQB6B0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8565C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772825093;
	bh=xtfyFRN8HINlWWFOY7sI2RrUAX+0i0C/Xf7HHmqeEO8=;
	h=To:Subject:From:Date:From;
	b=HLQB6B0I2mQzIuTk6SWk0ZxFbbEMc3CzCV3d1FqaMQ+OjvSDrrPl1RrvmT2656ptr
	 Pbg0jDvA6I4cAFmRN1tIZEQ4jmd93dTjtWD1FcAAWT+aGPWnbX6vfyp2tlGf63OvHc
	 RsgPev2BmHfPXZcV6mcSaEqMu9P9w3iY7WLiy6Ew11IVu6iDapv8z1+9lCNJwDWYC3
	 ilCKMef+zKcz5e3i+TTtzYXilJ68E71/FMbTnXEiWdiorpmXbsZYbDnZVycPj8bjVE
	 p4dMzrLSHWe+VDyU0yc1aRURLKQKwIBTlYNLOPmoSUQRME2+bcTy5yOaALzORjYuYX
	 PSL+NhIPcvGJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B4FCC062
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282509358.3065.11357412484891432679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7c97adb07430358bbce6813b1083b07eaf42c1bc4949eb57f764f061548208
Date: Fri, 06 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772825093
