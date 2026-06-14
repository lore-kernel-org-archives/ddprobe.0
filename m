Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDA639FCBF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781442394; cv=none; b=muTWMwimcgGd3mXER0toRNAJnGJRydq4LCLtTJnTOWqQnbvYFLBXG5v0RRJJQ419GXtPQuTft8YvxiamEvBoWDYYx9kPKQN9vDdG8b6f5+bJAzpx+0WaeDFT/HonbpgQ+Ucbsz41WJ/B13PbjJ4FfLo4IrLXWSLykflpWTK+GIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781442394; c=relaxed/simple;
	bh=+gpSkE8MH6hOK6YbEbMDRX202yNad8cXplFjepD+mAU=;
	h=To:Subject:From:Message-Id:Date; b=uC0eTrOcw498tJT6zs510cFS3Dw1aov7i3+4BkdKPjxmEMvlTNOS793jYkE0CP8+MYpkTyBaWknSnOdBmgCC8ozCyYN8+zAndJRBcex2rZiUMlixMnOxFdjrbzlj7mNR3j7lWld8S1LWje9ijjiH3kAgDarSCVDU6sucY/Nqmro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPqGcWSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPqGcWSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B84C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781442393;
	bh=+gpSkE8MH6hOK6YbEbMDRX202yNad8cXplFjepD+mAU=;
	h=To:Subject:From:Date:From;
	b=PPqGcWSOf07tw5hJIwa/m0/2fuLVo66jwmCbgHQbiuskmVb6KzMLxDoAJWWzpn3mn
	 IK9+SUpiFCmquPDDN/0QxN+QwKyPJauz0nfyc0uJ84CzFrAX6odV4L9IxJn6CBkcsp
	 H0hK43OSkkbEYa3QOE8fnmGqxM+3l3t+A3tEgYwMKGnYDM0l5OoAqVa1Rjd3UcBkLf
	 Tlxiv1FBpFh9jT/q9nZlR395pcyKY1KqV06BQAm1QsS39qbZJdtnTNAHLsvRIyRJwL
	 FXKam8+kX3IkUv5xgVmA0CHvgvwStvroa3cfylGYQij/PU0Od52OQFrQPx6YIlvyGa
	 0lCUgaipAfneQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ADCCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144239369.7653.945532821222005558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9383516e8dced88429a82de5b10aae4be56769d87a218a7ec32e392c05ba300f
Date: Sun, 14 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781442393
