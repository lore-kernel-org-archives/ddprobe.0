Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4141DFE22
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760505595; cv=none; b=r1UmTn/MYlQPwfsr/qlQcbXKHlEQNpGpGiLkK6N4Pmsz+oObH4M3IjljSc31Q696MkWeadNuKh8j7ETY7lEZ736nZuMt6iDparmpCQxv7eg99KXNPKwcn6XL2JMt/kx9vWHU7YE/REDhI4dWxwlIjU9PkDSXkswHWN2oBAZJjSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760505595; c=relaxed/simple;
	bh=t7DYID4zlWSka1NoOObdmLc0mCbu6PZM3CclX/ajelY=;
	h=To:Subject:From:Message-Id:Date; b=BYsW21XiPxmbsxvIsq2xHMTwyl6nPOF7zlZNB5lZy+i4EjxPnbg0BH11nmGRMKguSmNRI2siNRTrINCNM2HcJI3mtgNF/RkCuMmOdKstu6cttvhtB4mDNX+P/KW545MjWaSgbuuTO2u9dldG/SNNrwnuxIIqKyBUvYiecU6GLVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ol6pYEt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ol6pYEt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29E1C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760505593;
	bh=t7DYID4zlWSka1NoOObdmLc0mCbu6PZM3CclX/ajelY=;
	h=To:Subject:From:Date:From;
	b=Ol6pYEt4u81x0y5kkDwfzm7lAh5jD4T9YmR3RcsAkuid5f+YqQdtX2GSjX/EY1hGT
	 SoXc6ks0CTBzajQPHgrf16r55WPQY0mJ5FdwrNedEENQq1XZ8gT9CGEN/Gb1FWVlNW
	 CAsIAbsxnXncnmeU79TfVAHk1/4KtQS4NXOeKw8nUZZEGfamoKCE50Q1HWVy3cfrtE
	 Q0DI7JntMBEPYC1HzHeSE9x60ieqbiE/i2AH9odV/MoxSMXbBZa5Fkiz1n2C0GQyXI
	 QvWaJFzhA0IWD+BiOtU20fM43pWerCQxaQDk0eW8VtAMVwsAXWWX1Wz9qH8JSTTGpr
	 98kSh+3KfkWIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E0CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050559358.28678.4513693990519446245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b13b04c8b24973cf576e92ee31872c0ed3d6ebd91560a88f8b7750e7161822e
Date: Wed, 15 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760505593
