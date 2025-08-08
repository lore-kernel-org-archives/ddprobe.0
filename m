Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2725C15665C
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754626794; cv=none; b=csaQX1f2uknnoSRRr7thfzXiPI9nsESImvuRdjbCkriRQxUoRoJ47eWNq4JptPtwCw04Bi9EbNRj4uRaD/KpdJTHSSg5szZPNlswuR8HoOlfwqE9udm1BPEKYsJg0UW+yicmxpz09SXNNkYAkhqikEGML97No9ZGCvIM+/UqG8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754626794; c=relaxed/simple;
	bh=XHIjPbeM1lFhetTFATfsI0LMZgIvduve1gLzkSNpCPQ=;
	h=To:Subject:From:Message-Id:Date; b=iPyGrq6xK5AT7rRCVWjN7qodrFUffmzKtgg+ycFY/JBoLUeTehbQQD3pUJwsiAqW1uKW+LwHFd7/XnSVH3MLAo1hO35k5AW05eyzeAe3A+GYzuOOEG81jWxoczqb5DbSIamnByPDBUsH/AIQSdQmzA1GPq3Oig+gUZ3aup+zrc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YComlGha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YComlGha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAF7C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754626793;
	bh=XHIjPbeM1lFhetTFATfsI0LMZgIvduve1gLzkSNpCPQ=;
	h=To:Subject:From:Date:From;
	b=YComlGhaSc1Gi5b7L36vLVdt3Lw5MLVTOK+Wo49ih/qvhUOnPWUOZYaaJP+de+wTf
	 muWDfFmcdeNAIrdr+QLyN/TJPSb9cdkOxJcr3MEWpGuuOJnnnYjXiEcQ3GlCjFngfc
	 3rihja4WKkzyHTfzs9C2qYiCLHJFVkW3I5FxlNznz0v5oNA5PFrf7HlF0dexJjrLBZ
	 Vs/LS2qbseyOvM5AIC8e4Mcdn7dmm6ql9/3EJfHmBYDc1J6E6n/F+PUUgYKOEjgV6e
	 c3tg3Q9xTkS1d1N9KedPGB6m0zE28z1gfTNDO6qaKF3rMbR3GymO+izG92FaQze/c9
	 ede34Q2HkLiwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90448C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462679358.22888.12125017571763637240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ddcb22d7406edda9e0942830ecf7dca466f4f18c327fff013e1eafe1cbe28b
Date: Fri, 08 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754626793
