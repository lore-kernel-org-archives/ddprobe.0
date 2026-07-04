Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E461FCFEF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783207714; cv=none; b=S79UoR2OPzjnclJbagU52pWpBR8h/us3QT3QncILdkGVIDgx/oNp/5UImf8c7Dh4t5CDolVVXc+F+5Zzx6KpFUl0X5KfAKMJutrb4fbVoYRs3BqF/qScdqtpFfUuimA9sepYHjMU+zJ+w3hEWnoTtT+u3iBQcQbD+G8HZle4s9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783207714; c=relaxed/simple;
	bh=rblBeAstWRuOJ3HkE/Krf/J+/oKAUGYk0eZXzSc66p0=;
	h=To:Subject:From:Message-Id:Date; b=qeeamF6Ss+VWRT9UJlnDJaXv1D+rGv0bbTcPH+E+2Pfg4d0o4SpKNvGJhBV9BGDzGKQeW88LB1cbWB87qWVhSZDxHBg8d1tlR3YXIf49xJjvnUnUDccDiSexnd2pGQGibtdwQtUFGFfO56EIJkYv4aHZ0a25xFcrXdBIr5r2sKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGBceemB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGBceemB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8513C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783207713;
	bh=rblBeAstWRuOJ3HkE/Krf/J+/oKAUGYk0eZXzSc66p0=;
	h=To:Subject:From:Date:From;
	b=jGBceemB7hC6sfwLDHgYoWmF4AmTgoUbljf1KeAtKm2MtLMIjsr5huA0ynpnbRiiu
	 dtrh9P4tYfTyjQd3lu27XS3AmvTOcRqJuCKUjUNIv8Xq0XTJgebeuopG4KWc8LqT5X
	 vavhRU9PkQ57JPEXHh7bR3KbS86FS60ct9a05pDncJhERDTL42mwhR2oSCdmSfAzqq
	 G/x0azQ9EJSztzGIGm8ryvZPVC4opsy0SYInUVSGiMXspXB7vmfniJLp9vWD947W6n
	 sbts8I3FIfpwRNyxFjsMjuA3H8euV/pdVJ4YGWUJi+EAjFKGmNgbOk7R9FRvxhlXXU
	 kcw614Kd7QZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB837C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320771368.8022.8373263544739165310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e6f19e10fce4d56870c46451ab3b07395d2c570a3019112bf2f56e3033f4a3
Date: Sat, 04 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783207713
