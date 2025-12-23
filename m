Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290E01D63D1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766457834; cv=none; b=rNMB2eAWyFuy3lNfzJsgGO77K/QuW/iccjvBOTZNHy7szMxieOTP/J/QIcrQkqjZfAEkC7BYP0oeWBtGAkFin2ePYZfb5kD2ICVagnD8s2cg7neCopDewO6rdCdFCVh6NiAi8OTMxBFKyR23cNuc1Il9RdEq3zDLMcu+m3hMEh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766457834; c=relaxed/simple;
	bh=QRqk1I1i9jv9tMCuDjbuj4lrr/FpLduozartVZEoqiU=;
	h=To:Subject:From:Message-Id:Date; b=J3R5r+6V70cRZKnxYU795487J15gsi9GgehusKeh7bAJ4prHAsurAX5/FsfxWqlFliHqLcx0C3Aex48iVEknHKeD71Vx2chdGxHiXJ/5YC33/Z2ywFJeHwBFZuFpsVZWxZYrARj4mG1L6GvcQ7A79bTBD7xFtDnzT7np8ukxQTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXrFiROF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXrFiROF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1645C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766457833;
	bh=QRqk1I1i9jv9tMCuDjbuj4lrr/FpLduozartVZEoqiU=;
	h=To:Subject:From:Date:From;
	b=mXrFiROFsZEhS5haHNaNhvOLRGOQnZtc/znFhYDmnzyN/IxHf+AhYG3w1DHWQQxTP
	 aLJCwoYdsBnsVQQ1NRnQl1tVv35tJcd07rPm0kV6KU0C+3vIzHaKt1UsvFxNtnUDiw
	 jrhCcL153r0tj/0yyNXEVipfcqdWnuU5y+rmg4ZgEmWJ9Z1pgygYlSYuFbWuVcEzQC
	 9nloQhbZ6LLTnISrPCPb5fXNj62/zx/tdrx2LN8eiGfYptuRrPyL0YT4m1YHqz+YVQ
	 7DDItFy0Wmbjch8pO42jxEaCd5jlYq1mZ3FVtwFUfk5jTTaizGBxq2DIJ/xkTFDOoy
	 lTa2z2C2esAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9068CE6B26E
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645783358.4178.14469628019621651411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cab52149f07b8961d60056bc3f879d481ccf18d89a795b782e46691d495d0de
Date: Tue, 23 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766457833
