Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3555C231830
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767199434; cv=none; b=A4Tickvj7eiztlK79mOs09lJjeRg37FEUHx1AprbL+9WiMZJB3j8yPksV/vZusKisz7yTgfgt8GV9HowYe8AqJVu9pvtnGV6BIFd7uwdv+IoCQTsQ9myZq4CKMev8GIa5FqIi924p94u9jZGL0hAJ/aFHMX8fIrmi4pxV5S7fak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767199434; c=relaxed/simple;
	bh=DNzYOgZhi/Ps56FRWeFg+JK9Hqz0xKppoEQGUIEmEK4=;
	h=To:Subject:From:Message-Id:Date; b=R2mesZsX2EkG7BDHRW2zFhNY9I8cj1eN2Myq3RXZxW3zSDwxKbCSkfJ02AsStdCM8fblogOSUlrBz5YHdYZahSvcPlnoklkumgIRHVBOLzuvbGyoBDfZiLhDHR1jiJW1eQ767BjgtPxpFfKerZ9NUSf1enZ26tVJrQcoQoFcU24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imvVTxMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imvVTxMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5679C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767199433;
	bh=DNzYOgZhi/Ps56FRWeFg+JK9Hqz0xKppoEQGUIEmEK4=;
	h=To:Subject:From:Date:From;
	b=imvVTxMqmRZNllEh/Jt/HEZGXHn7nAggiiwRlfSOdd20kYmHzx+BHXyN+ItISwkGS
	 djgVq/BLe7k2Zh6ih1+ubTFGEl5vY6VQjGKZdoC5H46KsR6RMZ07cWEbSEzNWDXXT2
	 CHLDVzleRn99eIAq/U/fuEiAaSKkQ8DMdh7N4sLv2PbcOULJGwNDR9qiQYfn6pBK4I
	 kl4MxRS2+4WaWlXD+3xZtsPxMqQXbr7CvnKlXVe3o++7fb6W0ExrtMOZaE1H04mg3K
	 Ro2VoKzpfi6ITaFkcFUR81yyNa0y2JGVaGgwfBacVMU0Dcuj4Y6XKU3Vi8Abi5KhYF
	 1yQke8VsbvmBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950EFEE6458
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719943357.29204.10891070303829515537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a7a966775aa9143a0a7a38949072c19ccaa1e540515d4d6ccd33b9390753bf
Date: Wed, 31 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767199433
