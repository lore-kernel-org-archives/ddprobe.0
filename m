Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2548D1DE4E1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765651974; cv=none; b=bW3jenWSy9vVXz1dGRVCL6DLtxFDmRVQySgPFNiqeG41tef9xenr3UgsygUhr3jBiYDy9aJwUuLZcCjeI49cvFnedhB+UiCrXJSNtHoawiY+HK1cZBRJqA/+fSuaV+fKIsjWBrPcr5a/k2qM6EOegHCDFumAs1V/CnglaML/IIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765651974; c=relaxed/simple;
	bh=0Q/IIeSXVbcpykDrf3pEhU+yggKavHHsk2sFO4WKhYs=;
	h=To:Subject:From:Message-Id:Date; b=LIEjeqsxpjEX7ldVszP+HwrrexZSmVa1YS9SsITh+5O7A3Ry8sho0zWtMgquTR37UajmaglHYnqdCKkeNY2Z3SF4cCMgtwm6Ocobm5DVM1TPzGkLYqwv5M5Z+ua+2ONi5bi5tlKqEvtGq90quyZn8A3qjY2TTYVY3J0/Zfc5kzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4q0t/ZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4q0t/ZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41D1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765651973;
	bh=0Q/IIeSXVbcpykDrf3pEhU+yggKavHHsk2sFO4WKhYs=;
	h=To:Subject:From:Date:From;
	b=j4q0t/ZHvuzg+MEn1q8k47A9edYWUrcX+RNaGChBrn+Twk2fs6K1zEzldJJikOSSi
	 a6WnKsbFM918xJlmJIGRt8aWiW4UDhGi/AK6eBkm8JGa+JO6hhZ4Bxvz9RYEEr9geJ
	 qTUEl4WkHaeed+jGGM212Fb2ku3tQvBlSbB+IQ+YdD+dUo3xoHiFyiJzxtI9NC5hW5
	 M7zwsr4/6e+0Ft6Vrehtiq6TT5BPpA9pB4BFp+ngoQc4xq9TDGLTdrz+TjVLWl9tP3
	 Act57OpQt1dOv1LTxuTZkDUz+aknSC+e+yKJoklNecUB2u1JFf6rQHQIE266q199x1
	 /HX3SN2u1olNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92270D5B15F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565197358.13839.7689482993963876235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843d439f55d1b247794a064511ca3bc077d7adaa4c4cfbcbd70e2c5db9779027
Date: Sat, 13 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765651973
