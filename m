Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B0A23643F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770173634; cv=none; b=pUH0riLSuc8Q9+GX+M+ioPWBQinrOD5Q3ob7pidTX5/yetVcR0M31J73X9GbthW9rTh46oI2UNloq+ASMuH5qREBjS6DJR5B7qyyKFPVenGcDzD3lVxVqEhzcoWd6jzqtc/daPcLE5DRgiVHHfF9cUP6FpBZo+mCC8NI8P0Mc7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770173634; c=relaxed/simple;
	bh=2XoeTipVm8tjaJ52y0QUf36oT+0HS8K1ZaLKhvulEQE=;
	h=To:Subject:From:Message-Id:Date; b=A5YLweUmJSakLtHSRQQS1mmdXpK4VRxhm1Uq5HVM09kRzRl2R7KKoGI/iDhOiet0jhbWoRbspR8dSiD76AOXl6wOsPDUeeMbJ1Em/63COpO1WE6O09tEY9x3QqXzAxjb+nnLUse0jYJS8gOsClUEhyhqiFeUJPW5HIxTz9E+GJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHwnfbT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHwnfbT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72E2C116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770173633;
	bh=2XoeTipVm8tjaJ52y0QUf36oT+0HS8K1ZaLKhvulEQE=;
	h=To:Subject:From:Date:From;
	b=LHwnfbT6la24DiS76FaTaxbqoEPlIBgKOTCmqaYYWYuNk6Q6evDu98+3/KsmW8PsY
	 gtu2PcJvzte+114jGXx8x6Z0stucSF500cAN1ilKKg/QNXBznS5JJ8XT16PM1m26Ee
	 s4wB55Fx4YjcKMelT9LF8bpaGDRfFLWVnvIb9NlQUEBC1PGmk6PaExakOuKYkbyG5+
	 tkKPxI3HvkbfOdUYemL1ON+78xnaBc3WIUf3LXBr60GPQzYVCKq5Q+XfFk0PqvtZ4I
	 8I3bzGJv9Goodo8pF3gq8W2WJ7mxyOgL+Jb9Zux5dI+v6YHvivIeY66RbAdMmXV3Ul
	 pj78if6iXT6Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95195E8B364
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017363360.13708.17039310768365552613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a79f03b9ead3efd5e799bf8d426c87806f191d0f144f03b364dd54e3fd0302
Date: Wed, 04 Feb 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770173633
