Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF703D6CD5
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783541314; cv=none; b=AURCzHuNRZ8SnLBS6EvhBEJ+4SNR+0CjAGrKdSGxn5RnY36BtYtvCvCitrCRL2jhfvI88w34QmqC+gJEXBu/4+DshYevjE4NoFLZ7B4Mc+VCcdPC1y20WT3zFnSZtEnxd01lLIK5XestkLCDNs1yHLiAFnX8cOu2V1fxh5WaIwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783541314; c=relaxed/simple;
	bh=QaRBvXj8z+yNfpVO5TP7AyIn1FprjJpDHjJ5YB+aRao=;
	h=To:Subject:From:Message-Id:Date; b=LMTGsuz2Y+L7UGG/aP4nhHqO3m9JGU7Zek+snE+hYAQYmaPOiVfcNtv0FMRPLAKZ76y7qA0/8f8Zy+OWHlHBPvrtBqLN08nv6rde5IEQ5tXhCalq10BYs5rkEZ8tBimgja/4U3FivfVCvBhzZCcBEbVoo4Gh8h7buaExQrHd1ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lb+dd86u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lb+dd86u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0099C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783541313;
	bh=QaRBvXj8z+yNfpVO5TP7AyIn1FprjJpDHjJ5YB+aRao=;
	h=To:Subject:From:Date:From;
	b=Lb+dd86uPqll3a0AzdbO/hZuPU7wWL9016C6AjwITYE6/1xnr1Ix2LUFTDqOMlech
	 XQbmjA+8v7w5FRa21ZjAGpfR1PRko6/O8RkUQt58g1HVCKnksmmfZYPIBjSRgFXJ0t
	 XbNgb40zZajJtsPPsw8kkTeyX+H0BV1NMbFWvO2wv8TMQkH+DXsQ3JFEdmsMTGaVaQ
	 j1alYIeuA5HzxZXgJ1sz+JL6aTkWAVT8cDVyyKnHFcMnuIq5iXoEbFG/hi0b8EIyBR
	 78Wve5BHAuYNCp1Br9VXjYea8fIP+IsasLhjAed1+i2uF350KcQslBuBwIi8GlpKOn
	 O+FxdH28XUvLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF67DC44503
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354131370.22111.14787242938383657776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6cf5f88745b8953ec4d4ae579fe02861d7a703ac8b7eba2136dffa4c23090fa
Date: Wed, 08 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783541313
