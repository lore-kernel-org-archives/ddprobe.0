Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2043A26B755
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759905594; cv=none; b=ht3uxht59fE3f2KMffMWxxmbHW9fKoWhkwYCqTcChDUdVUiFwKzwnUKY19r7BxQsCksZX5ylQQQJB2h/g/l77jTfGAUZAwADSCZrSiN7HfKimz82uk8z0/B2GpQ2MdKkFRA1vH0gRlzHHfS4U3w5wvWQnhChs237S65Cx40715s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759905594; c=relaxed/simple;
	bh=+4ZibZWfAcz/mbMpOsAi4G63i1vlXOpA/D8ZjO8MsuE=;
	h=To:Subject:From:Message-Id:Date; b=iGi7cQuW/untV3yHAvwyr9cV1flaIoP40J9E9vMcdZkT4uVjqz3cyQpkAujRMSrWcsVHaUiabotzPc2deB2uLgyQ2FBeU+D/Svm9K2o+IJ5RSSnJVY7VwxjeB3SVG0OpXVpYTCl1QOD9nwWnPcJ8WZLW6xPsevMoW3cuQnlXTxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXNeITT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXNeITT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5017C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759905593;
	bh=+4ZibZWfAcz/mbMpOsAi4G63i1vlXOpA/D8ZjO8MsuE=;
	h=To:Subject:From:Date:From;
	b=HXNeITT9jmh8ZJq1Jakj5axQB1cQ8XxQExIDEvslkgjgnwWPaF1As8uNsO3UDs00S
	 ZSNwtm+BGhb9ce/PIzOWdh2UKD0Nvk6mu9QQqVNYTYbEmIFdifW+gFdhzNtiOpahOt
	 QMRevLJrqqr3fxKipufndS4d9QDHy7Yb8d9iaHEttkatJMIX27ng6oKzcE+KKPKVDI
	 OjtcQrtb90/1KAzTlH8u9KHtHenG0vQbX1uXxNRpL4IK9AiO9wXLgtyjkCSSd0O6zZ
	 1p8wi5BEi8as16g5Ohd2JChVI364aeVgTCxOFKAKE3PM39wbyCpe1GeOwn+bQ2c4jI
	 20p006x6W8TbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBCECAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990559357.11037.18129631990748077322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2755a29c8fee8d254dacd8c26a0db875da6c2e29600e8b5b10bc05d03558c7fc
Date: Wed, 08 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759905593
