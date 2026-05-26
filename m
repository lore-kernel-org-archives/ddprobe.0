Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC2C3C3BE5
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779777754; cv=none; b=Ngo3o8GGt5LIiUHH+CVES1ODx1jahtinBe10jqJAsLOcOiB+RqohAFYk34QMDPg/DJYuV4XpmdVfSiL4B+Ph01rXBZYQG6tNh9swKtLvHIcqO8MyQXnS7KJbVPm7fvShIFgjS5vwtnca77yI67YFiiVdPj0pCbVt0qYuo6FF0CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779777754; c=relaxed/simple;
	bh=8ERu6dy7VuP1tcNw6p+kZR96LwgVtpK6ko2Ed9aqgRs=;
	h=To:Subject:From:Message-Id:Date; b=RngiMLNMOfKCDdn/yzaXntuzp3ky+6ChseehmI9GRi32aqBWQUtJ2K6lWeuiROG1n3fmZSZcNyFGVMT3uSgyTd7qu+uEdbH0cycf2oFCK1cTswHm8NeJmhUD00iRhRIKqGzEnbkhmsx9li9kYci6E5/REkR/N3f/NoXGPzIrMGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLmpjTeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLmpjTeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF67C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779777753;
	bh=8ERu6dy7VuP1tcNw6p+kZR96LwgVtpK6ko2Ed9aqgRs=;
	h=To:Subject:From:Date:From;
	b=vLmpjTeZTNyPxbs0QcnyZKuS8G9n2FyPlVmehsCWR3EBWCE40S+J0h73QqA/QC7GS
	 tKytE5TOm1yxhFwPwIw8UHbrC5h7G/91GLRUXHBhnIUZepmPWSyvQtGjHUGY2oOie6
	 RYLRMbTt8OrgCktKLX1oW5AYTOkGLOZuOew95Ct6BmjBSlKUFW2aQlAmDwXNT794OX
	 XhulJdM3vI8uXitnU4TNL1MHB9nOa9VLKCnAJyIqDxJPaVITX9HJ6nH5b4vQw3f9Ff
	 QHDeuZXwjsrEMjX7EQWfteG1/Rq94cYq62hVSJ0QazuPYZ1BkckH6gljecIjgGlcws
	 NBjCxJJtVIOsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCFBCD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977775371.2177.12506051728956833514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff58432ac0b2c6826b0889c301757dcb48377ed96fe9793a709ac1f0dbb8bd91
Date: Tue, 26 May 2026 06:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779777753
