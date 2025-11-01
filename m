Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288B33002BD
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762025394; cv=none; b=Tlpj1RXG9lrEahynyFv1bMJv7/XgmL9CU1QpXBXv0LUh0o/ZQ5QoIJDd0rTH2GRbG6wIALL/Zu8AOZ7W4Gze4ELVML7lJaCCh59Ou42MhT15GiXzxjZ/41WERTOZ+Cp2vecTwRCOLRaf5vp5K0nQpjElTS2f+rQSktJTuaVBr3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762025394; c=relaxed/simple;
	bh=E0TlcvKmEd1j7gXbpvCBt+r/L5X78q4liznW4dPB3No=;
	h=To:Subject:From:Message-Id:Date; b=D7Mv+iW7lcLHv/Gn0MnQdP89MZymeAYivM0ntbCTiuxkkLKRlPB9oywdeD5fNitpXVHIHHzW5mWB8LNPHFfJzYapuxWO4arIbSMsSmqkSPSbhXfTtJexqJbU3N3xbK7WV2mY/82gETeO2VjrlbhQBh0lLsiVIrwgUVWKD8PcMiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3a1gM/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3a1gM/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD519C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762025393;
	bh=E0TlcvKmEd1j7gXbpvCBt+r/L5X78q4liznW4dPB3No=;
	h=To:Subject:From:Date:From;
	b=B3a1gM/scWbcVkRNbRb2427MvRFphPCyIigf4+VJaiP6XkcrkKwM+5Ye7IJ2eFP/y
	 0oMNPPKoa64h5xXxEe4Pb5xjWNyZVbnKo45JW8fFpvDe61wT74IrbAmKJqmwK7MJOY
	 rgUHbUjXx30cN9EuukKZaODt7af6Ty9ejfNdCrF6mzFugj3A52U12zmjzMCL8JG0ju
	 FCZH6JdOrYwKRObL1rR9iqFz7+ZdXXxBvsvgvQsjJmi6Labq9cdE/DJPUCG7e+H3IE
	 9Tz4qVcW581HzRrVXeVQkPUHOz1PmjnTfSHVxWSbg3YH4ipJxQNRwPnLkPHUebVbXR
	 Un6yHPF6xOWMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994A0CCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202539359.13870.7885890386838365127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d4798a273a182e44885ecf80818d84070cc4c0dc518390dd64d3b7bd392b1a
Date: Sat, 01 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762025393
