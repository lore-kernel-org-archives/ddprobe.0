Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5183F4A3D
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719195743; cv=none; b=jn42+M0wF3p04H4hqAUT3tizyww4h7z3i06Sg3ihUgXxsuuqlaxNx8mJrswBN7aVhMscpLa4kBEn/iWM72gUrNhyGiwcGplxWXj4ncFFaMk9z3mSPHXhZ3pLpERIMDKSeG7oirAFK/GjuA/NevyAVswEen/rCsoZEAAirTvk7mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719195743; c=relaxed/simple;
	bh=FS128T4BWBpCDinL7Se/hI2hhSR1SJ0TVCq2R+w+z5c=;
	h=To:Subject:From:Message-Id:Date; b=VO+vIqGsm94Py7mr+9ZM522qpFKZeF8Do3sEZXjlNI0dyHOaYWxqDXcHZuzllfaYNl0FMUnTucfMthzbIjJClDYT3T5xijUf70JbKXE+rwEDWAQUatDeP/ycFXjP6nseFleMPonpBhhbQ4yy/c6b02E25VljzzehDmoQW+YrW34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJGTgHYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJGTgHYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D832BC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719195742;
	bh=FS128T4BWBpCDinL7Se/hI2hhSR1SJ0TVCq2R+w+z5c=;
	h=To:Subject:From:Date:From;
	b=cJGTgHYbkDTGYQZnYsdUkjgH8+yo2oJjj3viAl56YY27GYuw4UzATW6f0NpWYaV7s
	 WVrJUncIa9dOYNA7JjU5InZ3dG8ZKd1MUacCNHCZFbgqG1yJtAmhbpHys4tQd4ID0V
	 tUikRoa4wT733otw3x6alWPxc96tH3bCVnnaY17rZsG1HoLjfijH5pgYE6613IrD5b
	 YjYC6X8Ue12SZDdrng9PQ9y0OsTvVWEDTXoPrNU45RgdPV3vX8SbVG/lSHmEdbNZho
	 A4xykiKO/fz5NVtdyOtq+JNv3/4dJYFe/FhMr38TTMoiTPw1qV6J0sY5hE1Dviu8ow
	 D/f9NKO7sSm+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD77C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171919574275.2797.12384003081084071973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518320d437a5a2fb47d0c619b6d8d01b857e2858b020f5487aeb1a63a64e6a0a
Date: Mon, 24 Jun 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719195742
