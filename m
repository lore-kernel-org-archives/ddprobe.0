Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4456D1DED42
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766822034; cv=none; b=RS4nhSsu586o5qIo1Cwly/9RHTw8D43FknKEbRbQbk9XPT8jN57EaigE8fQ9ccgZDL7JB/hQxbpDAM+ERhyGbvwkRZuQ7iYOccoKxBdyGEIcXHU9sqWit1Vlby/cHNCoJ1QRB2YfqRwuQp4UwQeXRXM+au/ViyJVM6mccBS+AsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766822034; c=relaxed/simple;
	bh=1G1CYJd1O35jhdKFw1+CQP/ULQ4Ss2GCY7j4XPLv7dA=;
	h=To:Subject:From:Message-Id:Date; b=ucKXUyjOtNu+wiElXW9K3Akh9WpfH2PB5w8RuELHVwq27VEWCPhlcYwMcZmGt+mW3Z5hNvWCiBFl1nicfaYnHEDDCXpU2p4pZiCebxhJTLiYvy45rE9PnHW2DaxE6cBGP834e+gperqDIk0vYTGIIe2RrW/bchBnThcMWqkLjGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTD9yeo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTD9yeo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D1AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766822033;
	bh=1G1CYJd1O35jhdKFw1+CQP/ULQ4Ss2GCY7j4XPLv7dA=;
	h=To:Subject:From:Date:From;
	b=bTD9yeo1ecBuuwvFfWVUcwCoWlKR0bsTJ0DH6FiLzCaDBvFQ2kK9aXFgOx3MygDKQ
	 vJMVJ0gPKKOSKF/V8Z3owJae7NCx+wCm6GQmzcFWg94OiSNJ64w3Hu9O3kDDxofVOg
	 dObDV10nQ47pqhewKww5V2r4jPvm17+1vBuSOUc/vcF4rtC7AsRpHNTXfl2Y1+HurV
	 7CLJPOQTseNPHTfy31yLdEuv6EEvGUp6r48Spa1tucf2+r+rZoPaSlN1rFnjlRvix5
	 aFb8j7d57PbR8FhmfJYeeP/G8NjyxDgH6oPq9MXE/x8QmsiDrHfUCvju2yuyom9OIA
	 AEQvmYVRvg+3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C848E8FDC2
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682203361.20249.1943121337355741871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a366eb4ccb74e766acada9e30797e7bd097556dcece53fcdd36ce801f5535b
Date: Sat, 27 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766822033
