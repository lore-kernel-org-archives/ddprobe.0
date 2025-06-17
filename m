Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BC728F933
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750148394; cv=none; b=plp4XTeTTksfIYQrfIzY6D33UebjzaKsNg7/cLESqH+S0QddYkPae8EqlFm3t3MPMR7LUkZZ7TMHNq12zvC66R8QAXqVfR603KnK+d2EIGETyJ9WWto7r24TU65C1IfIbD96tAIRagZQfJZCzZCUthKoR3Nly5EMV/JiPDyLmk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750148394; c=relaxed/simple;
	bh=+xX2VWPkpSF/sKrqlMHL+dtyonHoMX+7xDcc4wsrR/k=;
	h=To:Subject:From:Message-Id:Date; b=M9mqPXMSbte7A+zVG8fti1rIEQd3EBAJkQKpfH7G0KWl7KBFSv2DDDD38HI6/o/i8shN35daoOVaFDeKsvDmks2JNXZt7ccw6bdi/Cb5vXy5+WPvfEznd6lnVuCWexd6UgcTySlrOWG2u8sxKThc2CLgQwPErkcKBGNLB5tSuGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDRXqt05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDRXqt05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C81C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750148393;
	bh=+xX2VWPkpSF/sKrqlMHL+dtyonHoMX+7xDcc4wsrR/k=;
	h=To:Subject:From:Date:From;
	b=BDRXqt0505/aUnWbMvURPUGAqBliiVuH1ByDywOv6ZPoep6ZPTzkqGaOiKxUfx5Fb
	 b0f5lSbgUH3NbOrnuELUItCn76El/oBfHAArBxogt2pIZerAfWCUPDSfPepgM1Hch/
	 U85a+XDfQmr4l8wRpp8H2YxP4L1LdnCCQU+gU6v3q566mHvZB3wPIvQBz1SM22Eh59
	 VpajHnze2iJUczvElbHyEh1M8HHrVVeUajCNFQ/oQS4qyqWYJEE1pUWxf8tPPXEjY5
	 AXeCxI3PjG2WbNomKVLQSPXM1PQA4g9N676EDWNnP2hSuIh6PUscVbWaGXj4qI0o+v
	 hWebArmticvzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B33C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014839358.27928.15459151841737018511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efcb55d75df57282a42c5ed8049a54fb50b2f58165815200138293e51d9b16e3
Date: Tue, 17 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750148393
