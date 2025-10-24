Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2017F313E38
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761307794; cv=none; b=ob9o/UXRt/PCjyoWCvcJ0BhBCafKJx6dRSFyNXy/VL/kMvoYCaLVciTOioU/nOOeKgs6nLM8Wn2ZK6UbXgn5oz41TF4/WjUgmNCi5wvp/rPqOxU9ca7AvsmKfDVFF4WH3bLpN89s9sLVFqfcOV2NkfaDItlELHF7T4t3Wpf6UwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761307794; c=relaxed/simple;
	bh=t1t3U3M24C74S8LUJrrd0sv4vcaoiHXtVloLFsTK3Xc=;
	h=To:Subject:From:Message-Id:Date; b=XNJJ02aHdzH2hAdz1hqtvSPJdMR3Q3nHzzwDnVr3gypTyLOy5bpy8V2m2OJPKYGILJ4IOKOvBjUGX4z5UDYzswLzfCzQtWbeRHyOSnnjRmrjS2VlF5byot8vI2sOCE1Yt+DQOzybPkMmSEiRjhIx45bRhA7Wqo48UgnfA3QVjqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utJPhO1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utJPhO1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FAFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761307793;
	bh=t1t3U3M24C74S8LUJrrd0sv4vcaoiHXtVloLFsTK3Xc=;
	h=To:Subject:From:Date:From;
	b=utJPhO1rC6a5fabbSN4w2kPFaoAEr9lRDVzZMmKaY70Y3KDua4ter2YfO2FzSmYAe
	 09BMmCl7TyawxmDuQALBTZbTA/8X6Tfx2TeODDBQ3H48F/awip8cJxLMs4nMCNcV5D
	 L8ERphsGkn2Vd3Z7AMZWjCFLlyiPOEr4oDWRX7OJ3sgd5WxVQtKEXTCGPmVGlm3G6e
	 s2SBnmBTM+a4UKkG42RGl8ptupitKZpb8j2N4g2WIcdAkTV+75/AaeFGQnhMC630w8
	 HqOlSzCvkkgX8nRW0O7kPSZuwM2p97eswYkb7tRvoB/9VDPw1iOc+2+zYOgbmwclqi
	 z0lpGf3Tvo4Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91185CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130779358.10196.12030706309631592504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647da38d203f44f1f2035945103f91a7eb44baf9de90af4507c70725011fa725
Date: Fri, 24 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761307793
