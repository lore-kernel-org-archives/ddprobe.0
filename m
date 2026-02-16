Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C32B251793
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771219494; cv=none; b=ZQsTvf+WKiwDLVW07fs5/50MiWLyxUyiO3hv2y3pRV/a95+tf0e+LnZBFk81jqcmLqQl86e17IdNnJXAlVMKt/XNGehSC0uuB7xWS6CQD43hJ/J4NMTY40+hMAeRGLCNMNZ6Vv7V5keogCZ0XBq0JcIaTaalXmWjXBRlAtyEkNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771219494; c=relaxed/simple;
	bh=qynzH1lzW++mkyyQSKq6GtNpvuXNDeOwHOfc+m//gdk=;
	h=To:Subject:From:Message-Id:Date; b=IQyaE/a1wsvY9tN0TbE1ZZCH0UduE0vWFHmy7ePWX7P40vcA1tE+JUXqJbhfI4WBbV6shKGwSHzZisCBg1RinSe9rMY1RUeKoGa0Li2+Cud4UPcoNSOrKKmy5eeuAbBizERX8mL8d/KlySi2HvykPGPBhh4qIGKFubMqwW1W7pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dthMrjCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dthMrjCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF49BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771219493;
	bh=qynzH1lzW++mkyyQSKq6GtNpvuXNDeOwHOfc+m//gdk=;
	h=To:Subject:From:Date:From;
	b=dthMrjCFpSkL14f55uENblWuJuigP/5T4Tc3/s7iOh6C+Io4MOm8lD3s7I/p018A4
	 zkdqsGiOJc5UXdT9lnZH4rNaNzCO8CuN60YVtcgW9Wuzb1st7ms8mBG/gaTcEqj8Io
	 uNg1skLRGmnYI13IcbnwL2uddqe0HG6m8USqbvQljr9EfBIkdaozjsP8qJA0gOaY+I
	 na0tiJmMG/MiT03ao9xE5jJBXAHK9agOxSiFibOyKY4Bhun0MYAvMUvHFG+VIiMB5l
	 eKAGjqseHfgHPYXkHTJmPB/GWSpFb6WsaTS+upSHEa8mppYlvxIyDA3Xu8fcOPutLC
	 YDFWn7j+hOoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D8BE63F25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121949359.16977.803374216492721321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4f0c63630303a3df22a433ce01264b05f0a1cd5c6a8b72840fbb28194863f7
Date: Mon, 16 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771219493
