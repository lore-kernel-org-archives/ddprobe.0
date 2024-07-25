Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A0019AD56
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721912154; cv=none; b=H2L/NTD8i4lJrmD0WmgsyiTEXWxwkuq06AWQAvZPjJbKwpp+F07HIzZti8H4Zzaf5yvE+0xIWrXzx2lQAkrKoBTFf8s8Qdb5fYtS6bKSP/IXTZ/apacnuEoXhV6teve5rpJhXHhCpj8jzTnYf6HdJhnmg1lHPwpzVOLdE/bMQJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721912154; c=relaxed/simple;
	bh=TDhLX0fZjucEZJU4GAiJTlarQTy26QC5ggonuQhysHU=;
	h=To:Subject:From:Message-Id:Date; b=HrBtAzql64kOeH1O8blHliiiKTL1H4DhGzZtTDw9BCNnWPE3TCt1N9p2FKGl6a6zR32ez8xTVevoPWIJrAnHr3pnZCpXkX0XQSZkRsnDJKClpriEIRjmdCINVHhBtUwYOLlNPzEA6uEafCDaTEJPSP7FwBdyBo6UtQX/YCTqM8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7uPl7RJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7uPl7RJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C46C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721912153;
	bh=TDhLX0fZjucEZJU4GAiJTlarQTy26QC5ggonuQhysHU=;
	h=To:Subject:From:Date:From;
	b=E7uPl7RJmcPCVFqIXexslX1AeXtjFGp3pCxaQ0q6SrrRbfuQ9Zadx5fqvYO2XpRxX
	 AVxkoE4GiF0SnmU0G6TGI6/DNwSv0JDVRghgO1rhZzdMtXRYGHAvdwSSC0CEZ9rscA
	 vEiQohiSmZD4jI2pqG1LgSvOUrIDfQNmDxEuBvaIEVu/y+iRVEmxAPqjO2VCMVk/TI
	 Uot9Hw4f53tHPMizBTPlju6SgxfAzyk9XDZkPGg0yQyi75ZTHcKF968WK5uYX4EsPO
	 azhjWe+u7JgdCRiuKiQ+9pvfuLMu9e9EhHd2d76cUtkQKYWgTqwBCZX/D5Ldgr9zvC
	 aoWAuDyg0dFeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C36C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172191215359.7603.9776185142030322023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2c1460a8a0ae525450a0de2e5efeb4d2c48f170d0ad115020d363923e00f84
Date: Thu, 25 Jul 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721912153
