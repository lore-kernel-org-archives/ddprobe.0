Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA7617C9FA
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729050954; cv=none; b=Ay9hHqfH5dB5aUHy31cq1FWptJM7Q6iJkb4PfG6E/iJuPa1I2QcBIidekP2wyepcqXLSgI2qWtAM0+JwIrLT5DU8AUJ8JA93F3yizR9jWij/thcBLtxstylvkTS0ilasmAvcQzZhoKPUyGayvYSA912jeybmXuR7fhvCVrRy6gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729050954; c=relaxed/simple;
	bh=YB4ihsenCcKb+kxgQpEfJFmaSh3q9kaQWva3oQJTNfc=;
	h=To:Subject:From:Message-Id:Date; b=jjVnecmkzMOwaTD1ZjNwvFqQnkwnzfYYlnXhTY6FplBksBSuqCYM8CPrAdDyMNC7fZeif/4zQIGcDbfe03HTPHW/3FSX4Pb/ISk2x1nfgjDE2Q8uFbaGwH5EKSS38BvrTs7LnY5+PfozDuqYovJpd5hISHd2tXLidNpNGP1ir1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuSFInoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuSFInoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA743C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729050953;
	bh=YB4ihsenCcKb+kxgQpEfJFmaSh3q9kaQWva3oQJTNfc=;
	h=To:Subject:From:Date:From;
	b=CuSFInoTNoApA0GBb79fllPGVdkzigE3bS6Ty6rq8A0IR2yp2bhCHv+wHYdyH7ulJ
	 7spBB5XXnnd+dDLiWfx7SRwVQWsBctB3J0BR/r6wrL45tP8VE4YUNNtqrco43DPPUN
	 S09kceIYdoOe+LqTEqDaihC9awB+Fa4GqnI6MikLnC+xZpiTIDfzusQHxqzOKV++FG
	 eNp7Fg0ouVljcqucP1JhdvyNps7Ot4A4CCbLvxE3Pg/veP9Y5G9E1TPNCtM44CrbkG
	 RYkpvFeC2VNjYAs7BhHAyALb+xQiruupR+p0PYW/bgAQ3c53LVCMx7M9fEFjxD05en
	 aHzaV7AlZYlBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8993D20698
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172905095368.20026.8476558995583220571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6835d73600a7ff1722fe18856b26de485047c09dbdbfb9a900bc8187f89eb32f
Date: Wed, 16 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729050953
