Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D5F4A5EA5
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791636634; cv=none; b=YwAoHzI5LIXf8ZP4RG7Wcbe6fxXJBon9qj8MckGIPOgDusuJ92mTD69RFkRkvMFWx8G/Tf6WX3P7+Igo/whIjSLH3FdFQKLlEE7+kCrTJ+dmgMiBE+gk0N2F4HJ6SEESv/AejzjVfX3wKW/NPA8qvPIGWSH25oxMpIOzdH95W3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791636634; c=relaxed/simple;
	bh=7vzogPzGGvXS2vNQHmkbJ5okR3x3FaaHQt43UvnyAiE=;
	h=To:Subject:From:Message-Id:Date; b=NEl/wvXjci8fMIOJ+nnzbxjY4lQbXOn1lHoE9kl9x8bbdJMCh5O2NNg5GicdEtjMrkeMpTTWwziDmppeaL2kYFNMKUlmQHI510JOtgIRRsLVEHxoGffHUncNQZmzhtLV0lB1kH7MvgcnlC1tPQrxkIaaRSt679Ton2ZpMNBoxeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjO/pEld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjO/pEld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB281C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791636633;
	bh=7vzogPzGGvXS2vNQHmkbJ5okR3x3FaaHQt43UvnyAiE=;
	h=To:Subject:From:Date:From;
	b=KjO/pEldPmPjHodY9FV7wQ4lAsls8XbwykZMjB/nk/rjqhlAXr7mZs5Ih1axjf0j1
	 Mic7DUEdTOdjKjPOk5QT9OD9vM6QyXdUHSuPz1lVTCesvwJeyNGEbJ4yIA9ToOohgy
	 AXdP/aG2ur3HfrSfZGN40ku8J6u6d37POp2H4TKWzAMCOSbysSIN10MJZkUc7yMGw8
	 XzosGD5aqATMZ4Tieh6G2hoSmb3YkyTPSlIqIMgu8Z51aoUus/zqaNlmtOcmvt+ut4
	 2/v8rXFH6RQfZxdU1dlqTLyT2bebEasy2Ml0yxROztLdjPd1ksPiNpaG1ICSVRrakg
	 RJ4qrS0HgawpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA182CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163663368.20304.15949998809982299760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8cbf5d0e8ec5514e9e0d2502492827edff6ce23ea1ce6dcf60860bdf650b63a
Date: Sat, 10 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791636633
