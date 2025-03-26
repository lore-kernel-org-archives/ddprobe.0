Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BEB25E81E
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743022794; cv=none; b=H5hpBGkbzGL7Q8Qx5fnAO3519QkWefarFLBhKT5TWh8XQ9SfddcIsCE3+lqsj4LXd1p1L3Fed59Xn0WmFOJDfMzpl0W2Agg5J705mhM1LLP90btVqbFgodO7GBClP1oxU+UwN9bbEigeNNDtm1G3KsWxXBXEM583e1GNxdFLVgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743022794; c=relaxed/simple;
	bh=fewtVEEcYWLsSFZQtRoorLFMWZxIVZt7DzVdpnNiCzM=;
	h=To:Subject:From:Message-Id:Date; b=bcCtLDGxIA9/9UW11qUAXlKrbISrzmmlplhRgeqKaok+71DWQc7x/wFZAZn2xKijglcvR1tlVdF3TwiHyDdkd6kF5aQABTPZjbxHCBr8xFKVxA3khCMZRAECRAsGtbk0+mIVRXOlgXXP35q/AKA+uXXBL4/QujpIUU3C6Gr4QBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8LGrAPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8LGrAPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59C4C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743022793;
	bh=fewtVEEcYWLsSFZQtRoorLFMWZxIVZt7DzVdpnNiCzM=;
	h=To:Subject:From:Date:From;
	b=g8LGrAPsdqicKqs/4mpTQO5K5+liolmjismhss9kzq6uDTp4g1NZqu/1R85pYoO92
	 DnCZ8WHMATR6M4Ktn7WKTZy8kx9X9v8BXTxZAdu0bBPNIpKPFTdO8XEyYIHNCiey3F
	 rPwXsqqxmipHyD7R1SWDlZQ6G1T2mvBCxwvzgQyfGEyYD3+EBSAZ9Vm4N3izocHXXo
	 /5Wu9x8oRI6gpBkMiQvRiWBwNR2TAcasi3PU68vzyY3ZYFl9V46rfh+QaUFb7YUklj
	 6Z+HHkjrE0tJtRbYLZHjIE7c1ldpadPWsJ0U3aj7GySUMhav1TUCZgb2t6igwpuIju
	 9H0HEOGukVdYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E8BC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302279364.5357.11193293805858735361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf916e126e551ac8fd83f6c943d1df4c32240b916350c90023f4460bfd3d93d
Date: Wed, 26 Mar 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743022793
