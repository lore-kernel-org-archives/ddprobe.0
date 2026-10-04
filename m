Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5968F22579E
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791080434; cv=none; b=RIgpUNcv4ToN247QVlEueckjdpZzySQWgCzHG683DZ5QsvjR6LuL/fX/wpfyGhZzDr/WYCUxfyrl8wXIxHv6HpxduV5q6CRXJAjkTNMCCqmEql7A1zXQ0Y1olxir4PLqGA3YNAJyP+an++7VgYSrVX8RIrzTY5mIgjeM9/011TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791080434; c=relaxed/simple;
	bh=c0L7WuTc8uCUNSOCbCRbmtjL1lWrljWjUfHT1GN8wzY=;
	h=To:Subject:From:Message-Id:Date; b=jWJjt6Atfu2hWdAAfwlAfbkM+gH5sGl75tVGrVQVTvpE+5sJ/HO9oK+JgdZOL43cH4+OfIeYnlNfvw4+rQkRAUY5MpdEyhcdJG/XbZ+RCNpT0H1nzcmBgl0lE7t9B+kmeGdNmxNZS8gGHbkD9/1/3fV4bat7nz8rmGtEuwUm23w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKh1/KQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKh1/KQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1B8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791080433;
	bh=c0L7WuTc8uCUNSOCbCRbmtjL1lWrljWjUfHT1GN8wzY=;
	h=To:Subject:From:Date:From;
	b=NKh1/KQi2GfI4LEGlJLYBrGMQI8/ATMlRCWVLk3NLaEXGuKpoiwk4cQSS72PFJS1V
	 C4Ro04uuklWXDWDfpYBnkcrufFUsw03hVTdYUWLH4bRcYEzanae+ueYPhhwwbM35/f
	 JsrT4IRyzsjreywZwc3RJLt0V25wLMmNUM9gqHg6t8VPefDr56/gv/xo65jIXi0UrU
	 ASZDpeNal4XJeZalWqDJjdPYom4GLXb2QQ85caqHRFuBCCgZ3reuiplb2b5oVYQNkc
	 FWqg3f3vAXhqiyhtP50sIuhNjYY1NFtjZsssnQ6FtLTtXPyHwx8hkIy8E35jOcH+i6
	 yoQOFmrP6fZCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AC4CA5FDD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108043369.22988.14321828864013418691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956853970224365d2be018568a2b6e20bd68d23a699facc570ccee989f4cd998
Date: Sun, 04 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791080433
