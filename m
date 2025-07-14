Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CDA34CF9
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752470394; cv=none; b=qDzvJdZw+4EWZT7Czltw7V+p0j9DP78NCk40iGN65ibDlBMXWLEFEE0lFAHH/jvmIsYruAuEBtlG6zjXbQpoNxGAsKooKRYHFZp/BKupjlGxaJZ+IAvwrSNU7N++xEUlCN2OnsO8HBJp4Kac6CARpXxmWowlZiE/N2SxRTHCPEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752470394; c=relaxed/simple;
	bh=i9hAMXYNTMCrkRPPpEIBRKvQXRRBkVqvdKKYx2s3CVU=;
	h=To:Subject:From:Message-Id:Date; b=BSPfSxt1n2ZgmSH/tXGDW/n7wVYWmXvPG1+hu2CVF8hmsV7Zbr4EE09dt8U6osdeUairQNeIkJDCmWB9Bt5zPpIUQgPRBDY/nPejH5ElkFbmSOz6bVCeDwg/Y5avHyurKc+NvYSayyw7QvATMZaT/CWfDIJ9lkWIvAFLpiB4oZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/PCC5xt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/PCC5xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C4DC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752470393;
	bh=i9hAMXYNTMCrkRPPpEIBRKvQXRRBkVqvdKKYx2s3CVU=;
	h=To:Subject:From:Date:From;
	b=o/PCC5xtDqmQLUkhERvZ+XzMYcdS/glVBShDr8rW4RiRLzjY0AM5upIQr8UhP8//i
	 H1qWEAzZKhPTtYrIJNzKYo9Ye7ypLJAhM9q5nzrff7oDMCd201VmYOCqWBhltO1ikm
	 sCgz0lphp5UMFqOjzzRjozHCREp/dQ8Rvg/1QzeAhM8lJgPFwtwAO0Oo9OkSCwJC4X
	 3dkyKu63rQStT61ArShn8mKbGrMoJLOMARZQwfcZgb4J4EdFvxJqK223JEs9BORVC6
	 F0ERQqyUPAnyFPo/B395pZChUuucCKfDKymJRh785lt0gB1NboWvL/E5k8kLCygadR
	 6aMsa50t3u2bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91767C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247039357.7309.5685416363795185239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ad54ccb6ef17789a4491eb5eaacd68629aabdc00f9c48851581f70977fe710d
Date: Mon, 14 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752470393
