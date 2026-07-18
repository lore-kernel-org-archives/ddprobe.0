Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3782E7F2C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784390315; cv=none; b=ufFfftRROVIbPKTSuc3I6za6kns/bq0CVY3evS7i/E88i3q462iEpXA+SFamYxk2jbRA5ynHCGie1izG2uVMu9Jn8WblAJnEI/RTW+Zpko+VzHZGp9dsUxpTucRA9axYbj7i1Cjvyu0VYVJNDHFAF8xdz/33kbUgG32UNAZTvRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784390315; c=relaxed/simple;
	bh=mjNnwpMosyv7ALeaeTMNRBtuX/9DXCv8Eh4lxDn/KDs=;
	h=To:Subject:From:Message-Id:Date; b=fzZXBWT+J8jHWl2ndfBenkZlfperrStgFG5v+7BOEht0/1IRY89Ec4xLB6nEiSrlL+B5pQ33hsYujr5fVhoTxunj8f+q4z1NlJdTVrSRYQoxvKjW7VCuMeBC3MX/RmkjDmOn1mZ2U9Z0cW5FrQkW/zkJ3Gaqp8No0Faoy6vPk2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzs5+2tt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzs5+2tt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D050FC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784390313;
	bh=mjNnwpMosyv7ALeaeTMNRBtuX/9DXCv8Eh4lxDn/KDs=;
	h=To:Subject:From:Date:From;
	b=tzs5+2ttyHhlWVQeD/wXg74YYVu8Eb4Y98RwzCMubZIzvMHOAg784y4GQoCDQ4ERn
	 VoYxkPBmtcxl2+utlYTqkqU8IVTuKhadQw2O4hCgqzclyk5CLh8RRhTnLlKvTBUm0P
	 GIM6yt9GLr2riRG4nPwFCDTG7Xnx1ruiZurtsMomWUEYoKrDmSiW9aee26mjRgi1+I
	 qsw7UQxGoza8IVWM5SIoleEVqp03r5y27+2zq5UqgYvLa0y8sSAsBDLa30GeeBgXvo
	 9Q8y3UEC8iDj2S40U55TVzh00KYpl7I2uBjtFH8d8LuYg/R4kRDbN5ele9KZJzS5YI
	 ouEHMAIIj1SpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE957C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439031368.12241.11966444100875430803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4ccdd12d317e25ede09ce680098616a5508eff89ca2337fa854f4079b664ef
Date: Sat, 18 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784390313
