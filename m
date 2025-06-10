Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2711018E02A
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749525594; cv=none; b=ojsxY7apQ4mRJBVqQt3EskKfuC77VtnZoEpxGEtMfIHrqpWoY8HKKBQC33LU/8x5I7yhM64GXTKQtErCTa2anjE09SXvzzYQ0/bWjzmivN/fkTR5ux4F2yreOHySPNw/DejIoPrSpg/yh71+La6fXJMrqSpF3owzM0rPPGHnmtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749525594; c=relaxed/simple;
	bh=e4bqAGv3yXgm142yFUEesRgpvbruS/XZfAQfQeRmAqA=;
	h=To:Subject:From:Message-Id:Date; b=S/t5A7DHWBH0fUlgLKNdRAs03BDRzJOZbgvmmBe+cAbLAhJy6BWNF5lkNfUwr4q4IZhcaC74NU37Fcxa9OvB9K+R+h0qCw8tUD0bpEnNltQSi72WHFW/twinqurxr6/1UZlEaflzZVB267b9LwOIFEBn5rBoX6Jri9uPmifmopE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnrgeMA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnrgeMA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B6AC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749525593;
	bh=e4bqAGv3yXgm142yFUEesRgpvbruS/XZfAQfQeRmAqA=;
	h=To:Subject:From:Date:From;
	b=LnrgeMA92+punvwvPHbsprrgGWDQ1fe0B6t67sw2edpb4HFC/PoH+Vh/b1WiqEmMJ
	 GE4hhAPUBoVClDorZ+6RMZuokPCJztvfwZT2oLN2UE44hhxsLt8iAnvsj3t1Eu4Q0v
	 zfHuoVuIjhAL82kKmtBUPUiYbDthf2Z0yMfdaM/V441RW/UD8I/Sv0soaR6FTnvWxw
	 2puCQCz+GT+NwDXzmCP7wUUwPuByBd+MzYXFDpIdkg9CbPAhAss+Gj/SSY/L6DX9Y8
	 M5+R2RG4Te7d1GQDaM+PzCVIkRZ5n7yYbz76t9PLnnstl+OozZBIPmLLpIBvzj9vol
	 Wx59rQcerSBiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B9C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952559357.17872.5777457152625480159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30eaba8eaa059ec3da7ed9f2feb6c3e1e7b6b60a4588f92abbbc2ca734fc4dea
Date: Tue, 10 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749525593
