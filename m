Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062B62DA751
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759511994; cv=none; b=iIs4or1bNUmZFS5RF1ggafy3DnLGrATUDoIg640TfKDULmiQ85qS1cVa6nwPy+XqbaMBpAonjIgqjd33c/iJHBr0/WD4vYmykXqVHUNOI/211O4uDFd4+G/SCSt1LvllutGzp8BMDEdOxjHfNuMz8sn7iYOYjz74ocx2YO9odXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759511994; c=relaxed/simple;
	bh=m696IMEur+txIvJ55hFmUkRsdHUesVgApzWPTctqQC4=;
	h=To:Subject:From:Message-Id:Date; b=SBZ0fIMX3zVmB/mJUNSg6qYKmYeYbLXhwxAyRkQ4W3CPPQ6yIwzVSyZu7h7Sh/JJoHB8wzkHL1UPv1UbDPX9JJrHODzWCs9WLvy/MQS8pTKN8UKC0UuWdMJuzCAncGP7760XeBBO/+n2E0lIW5r/ZB6xV85uWO1vqJU6vpxreTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLmTsC4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLmTsC4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D930C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759511993;
	bh=m696IMEur+txIvJ55hFmUkRsdHUesVgApzWPTctqQC4=;
	h=To:Subject:From:Date:From;
	b=vLmTsC4IjGfom+uHW8iK3tnFU6I1Dms0Na+0vDlkR0hN2F/fMYMr/ucJLJXWxV0/Y
	 QvGxXMetDiAibwOXBaqOoilmVVnXXB10gp4rYWUJ4XhG6JU8fDBdtnOk+P5xSkLDrr
	 tDlgMnUQekrysA58FaAiMv8rxZIZVqMalBUhA64nwtEYDtNVaOteCLMxWjFL11i8Qu
	 BcSUi7GMpwO7yLB80T0OUfc669xQUaRExyoP4Ew3HexjhR9BUKF/KW9I5IbPoFndLG
	 fJQ8rxziaDxSAjRidHT84wuX86oulm3ki/Y2aSlmPAjY4zMQc89k0sCFIBxUH0O8Mt
	 uiIMEWMmqHbQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25FCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951199357.9392.11906461057541309374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd30c2be1d10a635944d4eb85cb5f1646d1613a29ee8a00ecffbc5216a3dbeb
Date: Fri, 03 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759511993
