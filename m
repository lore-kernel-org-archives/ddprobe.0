Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C54B81ACA
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 14:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728138955; cv=none; b=Y6WepNOsk06Di0Ai1pipey81nJPAQefO1Yz7/04Bv07zZWX6VaK1I/Yz23p/OhiqpjJqaELlqGVvrXKI4ROBfbecyNpC64epCMyAMz1ibtNU8GF8h3HupWl4GZu4i69fz9vhiS9l6+Okbhwg7Te+bTARsZFnjE8XY29SE6p99UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728138955; c=relaxed/simple;
	bh=4wbtzsnid66bndE3dXxhOY8GFZxSTU8jQ5IUdZMoKRA=;
	h=To:Subject:From:Message-Id:Date; b=VWMDjjognL/wiU0Wj0M91HVg7TWkcdKylYBX9aMh7DDB6KfW6B5q50a6ockVbyj62MKvv+JPDhafUlra/dLW8d3A/WIpQfx9aJ1xUGoKdLlkL2mFzstDkbCC+RrsKtSxsqou9mxVXx7T9TUoVNXySdcWNsesFTsU/p6AemLiVxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nz3pwobg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nz3pwobg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1184C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728138954;
	bh=4wbtzsnid66bndE3dXxhOY8GFZxSTU8jQ5IUdZMoKRA=;
	h=To:Subject:From:Date:From;
	b=Nz3pwobgTgdoiktGJbkoSQPl4+4/yxoPBJUMmB/kXcNHqqSAV5W+deUsTSGvybB9b
	 ZBuwNrlXKzf2fskrQQMGPR2grLhcBlwJLd+ZJHyC1gZmJTV2mth2cRqJEI9Lbv83Pa
	 2uhU3ilJvLMQOESj992OJmHuFdsyEmgb7md0L0spEb7uU0dAvIZpsCoEMQU6nBsY58
	 bR8V89URUOznriBEewTvIX+Dt43krZhs0swThlll4w9AJrhFLJN8SwjviJfhNddK/b
	 Ud1M/6xTZcWhjiYFwa8SN3iiv0s0w5JXya0+n0slU/+a9EcMBTCHlYYyIAcHD2APJC
	 8OZ/l7Ru9DR8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2AACF887E
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172813895362.8826.18109887823833924471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3d5c06b6b954d1b6650b5acebec88b7f26d8d226ae23c22824aecd39bf9c50
Date: Sat, 05 Oct 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728138953
