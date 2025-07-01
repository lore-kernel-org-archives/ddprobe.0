Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D9413AA53
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751359794; cv=none; b=jFy3dxhnbKPhsAYqMGBOqq9TpLx+GMDcIFAScNF+tSSpO4ttbN9haGr/Z+N7bBVtAfdkg6kc53CHtK8PaduQHEqK5NkhqD+tgou+ooC/d+mXDxrYzzEf81IEn8E/T+xafNkllMdxrkP32Qe1iipYhsi4a/6Lcbohi/9lYiE6knA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751359794; c=relaxed/simple;
	bh=mwpK6Le7OUTdZIoABeaXR1dm4It6feVdFMtQJ20KGVc=;
	h=To:Subject:From:Message-Id:Date; b=lYvlZBavfFjvy0pbPSuIfXfFR+07IUACFiZ/oTHOxfwEj+hS8NcHG3JAYyURgADL9SjQBEC2Ca9An0XuG863GMPmIaoGR4kgCsgaawtYf3D4uAdxV62moSqpfd7fgRrtLMuQ03Hb9SzGiwZz1cMQe1OPJ6clLAdaGeB4TA0j3h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J47QHXwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J47QHXwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A813DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751359793;
	bh=mwpK6Le7OUTdZIoABeaXR1dm4It6feVdFMtQJ20KGVc=;
	h=To:Subject:From:Date:From;
	b=J47QHXwF+gBDcbrJYusIilJp5/4v9EKEq397w8T054i1ADCc7gSUQoZma0hVSUFvs
	 3+t90sGLOukpuWLhPbMZQ1qPyPXXt8gCXSupbyRt5JVQI5XUjiN4IKz/68Q5bv+j+a
	 8XFAV/TVXMZY8vrLFXisC9HbSChB4ANXSPHpHGHjH+ngCfaaASP0gcWhEK9OcCQ0Dz
	 0uxZ6jRtaNwCPFpCIcqEHUB3vP+2QJr6Dxt6VEXxDstJqmE+QflxCl3BkSm52fffG8
	 PPNsZHVcdXoflbJ99c6/pqCcCG+E+mV1592dlKbMW0cZuAV2Is+ozDTnYlQUg2jUWT
	 dsIiGIr3CcKyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FAFC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135979358.6145.1477479958957191726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f67c35e7f4c1ba0c1eed547303159ac63abaf4a3a09fe2ea0898c9eddb8cba
Date: Tue, 01 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751359793
