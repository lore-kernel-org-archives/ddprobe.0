Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AB3218AC4
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744020594; cv=none; b=WZq5N5B7lQIzmos4r2wKOXOPM3X+6fP5XclbWnSrYq0ZEleQ5ae0cZNQUCkeIAoIf7x7XhzdhQQ71y2ahsv1FJvAibnBMxO3p4eKwekPl7y0hQdFrw79v6mwV/Zj94rNpes616dEJL2fBr4V3IuXamd0CrB3U0CbmE7bk/qFoMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744020594; c=relaxed/simple;
	bh=aqvC90OHpAY4vzhof8zVA92C5WRteTz6uHS52G3O+fg=;
	h=To:Subject:From:Message-Id:Date; b=LlxEzbvbtCtvzq2JhBuaw59eopB2Ft0HkJF33/Q5WslWcsVLypG9alZSN9n01AwxUpRFnaz0FiMpbjEc3/n0pZ3E5xt7VaipBbAJGOk3JG74Su3HDxYwsfQJ7TwL1zRJr8Rgb+6PKF29/UBdBKl4x6vXpGKABBhDkL2IK3FW5Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rta/f148; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rta/f148"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4162C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744020593;
	bh=aqvC90OHpAY4vzhof8zVA92C5WRteTz6uHS52G3O+fg=;
	h=To:Subject:From:Date:From;
	b=Rta/f148FnbErztApsazh2pl7e9Lbfm1FMLcrzOyv18SPAKq9zUUmzC53wWQ9C64l
	 ynOTz2sOBYodDjgaq7MuL5WyB+VnIO6pR6zoVbKE+jnb+vZIMRa9kpM+767ur1Z1/Q
	 XjjF8LNsVqyNeNgnRGwnRrzda+aPAgq+Fq58PIPAqHFKTOABtsAlXTqyLEfQ558YPZ
	 EyCViaA3KKBU+7WfLLdLkYY+AQ0EeTHbD2ZlOjtPHW0+nBViRbmIKOJyz+UITQKrua
	 i0Vtt4b0B0CbaOpvR8Pp/0gG15JDV6cacojs7f8banAAy6C0WD0RwKLo6aLvbchRyB
	 c26NvjRh9GIsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981DCC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402059358.3255.5791176874888305174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a3ac54a0342da57f6d9d5f47472dd4cc87cf827fbc282d2aa77cdf99c59f64
Date: Mon, 07 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744020593
