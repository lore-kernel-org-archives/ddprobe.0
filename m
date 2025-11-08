Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3259E2E54A3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762589394; cv=none; b=FU1Hpxz8HNJwzQzGvbXH+ATgVqky358qk6UZ4XkUcEcjWMDYO3NItak8IOqKfUWgZzrTjLR/Jr6bgUVuSq1iBWRdr6R6wTUz5uPfGvnUBv4fHfzoOuPJuWZ2eC/k4baOdA3+dn6X3N4sMTrcKKhh8useffQ55YSWz3oFQslZZWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762589394; c=relaxed/simple;
	bh=lfrxjB7cb26LwYnkLYA0CKq92UTY4P5NRxW7IG+Ixrg=;
	h=To:Subject:From:Message-Id:Date; b=KUd1O00gt/eWJs1ztLFLN/ZBJQbXriehzx/MFe1sRg0ojs7XRHsXgoqkcye8MG9XI9UAidJwgtwId6aU/6fkPCVU/KCwehHHwEfiHVTkua3ivKDmKgDvKRrpp6Dy1CU1gYLBuAhVSThcetbrCFyLVCXPqBwbdnwNIqvsQ/uS0RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjQeaVfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjQeaVfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A20C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762589393;
	bh=lfrxjB7cb26LwYnkLYA0CKq92UTY4P5NRxW7IG+Ixrg=;
	h=To:Subject:From:Date:From;
	b=CjQeaVfkh2BSFZ9EXWghOT1nGWtigi7LlM7Hl6vTGccsMbxDIoMVHcJW10D3xFLa/
	 BJ+5ILMdNNwhTFvgROvIGTKks2VbF6fQSfbAct0EK3miZlq2A2jPD40xq1pIRjyHc9
	 VQC1OwQXAUZvaw8jeDiaWDTdCV29m63l28Hi/cgIzGsx7AcKRv+3vuPYGFLhJSSLVo
	 y8k4DuA5/c9v+vLy5BP1qoGaPI19L/7SobuMMnQzGqaEwY/H3mJYBaMCGP0r+qLC+a
	 1z/4qXa9A4W65yZ0E59yaEvfg1N8xYbY3rV/pu+TsH605zxtY73lUCpkUGQS8TjQML
	 L30fSVWoPU4xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9316ACCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258939359.12896.15031775656806945928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5aa2ce3348cf293f7a6b270a7dd869808b40f5c71b179ea14ebe0c12588913
Date: Sat, 08 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762589393
