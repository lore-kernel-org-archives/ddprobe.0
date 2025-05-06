Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358C721C174
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746567594; cv=none; b=MTZoT5Z5zn/PVZ5SO1VQCeCZkCsoTfAs2MvQJ+jS7yhk98nUpsSehG3m26gq9SFw8K0UEob/1hDFnx4YUF0XoP1qfoFWKSkdotO4s4hOY43J38lgQKIH9krp9a7S3NI4bU2ZqMM7Q0y0j8MfGjI/Zdr0zn8WoxuYmZYOea07f7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746567594; c=relaxed/simple;
	bh=EzqLy2dTAUtzaIEe/fntY1t8gT90oSZyoQ/mtuRFWqc=;
	h=To:Subject:From:Message-Id:Date; b=rSmN3xDKqJbgpcFIlX9uoLp7wnCdGwbr6ZIvOOJVcT+UHflaWN6wamaLuQX1NqHCqJ/RrB6QOSMyYukwVFZVF1BLl4aOTu9ciz1dGUbNr5vChK8/TuaS8uxOuZZfhkr7iPER4eje/XM18PbkYzas5JGM49yXt2v99BFXNmgOzV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R77XQOEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R77XQOEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60E2C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746567593;
	bh=EzqLy2dTAUtzaIEe/fntY1t8gT90oSZyoQ/mtuRFWqc=;
	h=To:Subject:From:Date:From;
	b=R77XQOEtXug0ineKwGNkXS3XUo1WiX81yLWwa8ZJZblWd9izXcqNefakMRl6nmOOM
	 JuDw+A63tk6Xga46X9fxSBPVgAh/2HcXmCIy4hVslUYt8yieSj3sT89RVXKDHv3wGB
	 TUvnjNHmu2/aZfZSdxEBESQIjHsJpQZp/7IU6J2xO/D+toUYRRF47CF68bEzeThEP7
	 VQmpAomoeaGVsWXe9klFml+yH691GbcuOZLzu3V5IxIGNlpW0MUhtHx2LNSrc3+cEW
	 TctHFqWmXsdutfsZH1uFdKyBcOhfVhsZOpar+k2VwaSF8qKrsM/nCozlXR11ZQzGJy
	 wzgYdNtxlVt3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F0C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656759360.3673.3240535388266598377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691d1e5c3947e36f0fd58569149e744b9ad551b339ed80d0df6cd82901aa3986
Date: Tue, 06 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746567593
