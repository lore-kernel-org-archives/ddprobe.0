Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17102371D13
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779389554; cv=none; b=SSUc2AGROP46ALuVfiWnNr5y5jJQpHXWF7pieuBAmpnncKGKJCJa/CVsUdybDXTwBwDRwfSfYCKiIm2k8+9cSL47bnM9DSLPmAG4X8EN+0bks78gfnWauxybvNFcHabB1AWG81wqP0vLYvaSWO1SiaOgIQ/hXe3wL8+9pCOvHZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779389554; c=relaxed/simple;
	bh=VR6LK9cGnHKHm/KeMbDlOHMMxuBVG5BHslbUIUbFkkI=;
	h=To:Subject:From:Message-Id:Date; b=qohTnF+GgSKKQw12iWloXY5rCkcQ9bLjxbMGxLrI2CUcZd+7ntBe+LkmFhPGzS22zDr5xrqmZ+3GkSfbV3eL8bsW7RAIXTGykzrrL1RHACo/+sS2EUfe1jjOrucRRlm1aUaajXck/g4VjWqR1N7j1ol3N/LrXyNwDW7T3ovjMPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PID594KF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PID594KF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AB3C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779389553;
	bh=VR6LK9cGnHKHm/KeMbDlOHMMxuBVG5BHslbUIUbFkkI=;
	h=To:Subject:From:Date:From;
	b=PID594KF4dQTzLcDfTHI+waKyuSufYQ80nceqCyy6v4Ss1h3/BnO9ajh6BFlnuxgB
	 Ddrnt5UIaLkj8EZhNlOWHFdwHlGy4m1KiG1bru1KUxOmgkilvnnV4+Z3b3exKMTRk8
	 JekVlHMivzAKZEfvujjaPytY4RkoTTYBE6+9j8g8EgW0zGvyeukZzw4+qMCV/2OJzL
	 30HQOmhriODCVcX8sLKazFlKAJFX6JgIfT4Aye6U16aKD7sj0BWy7a3G9Gn3TN8+uh
	 oW8bIpxmqoclbuxaIcfowaUc3Ta5sKnoBBexDhcH3Xb2cIaJhU52BXMM5dL65Bdrft
	 mD7dMc4O7E3pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9158CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938955368.12737.17518683626953951556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e008d140d72b4bf3c2525a458530c2017449e43a92401bbdfc68aa2fff4d1b98
Date: Thu, 21 May 2026 18:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779389553
