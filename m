Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2671B33E344
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783066114; cv=none; b=BaBC3pqJD1N6lWn2/j36m0CoGHRT8mDRgoxBetflPOFRBWWmWMtZsPMqHXz68B64Lx1NY8A+/h3CzErQbNqkTS9K8TmbJJvIRIuNT5gvFEC9IT1KN83IT3FXUpleXwL+2XWxY1FVfXSXPa5pQ3UnewNQ/Sc8VEWOTQdetFmKKuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783066114; c=relaxed/simple;
	bh=l4s2KCmlnKuP5fKryyzwSHVonfdqAAgDWvppyor5VSs=;
	h=To:Subject:From:Message-Id:Date; b=tGb8UHFit7XFHYvipNawMG53ezQ06wKvzmSz/WpVkZySi4vvlH4hZph9Gz6UGJN+02qKCl0dH7NQUBaCGcwAqQ79ZBekPgCtw8MRh/db+8Z8GB+lelUt4QSkeJlLoZAoQpP5L9h2S1qGCQ8VAlRCehncFxhR/OXO0X2PklBSX9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBnTzGyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBnTzGyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C61C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783066113;
	bh=l4s2KCmlnKuP5fKryyzwSHVonfdqAAgDWvppyor5VSs=;
	h=To:Subject:From:Date:From;
	b=tBnTzGyOOg68sanE3RHANmiBb+/jFWyWFF1wl5vcdkRO8zr0AynNJrsxTEWne9HPf
	 EctPIjbl1ed1559MfgkqiL97kzWAG6XL2murA7xiRBxC1pBesFpFEBZYhHD23C5FYb
	 OA09DNWYewEy26dS4qhy5cbIczGBJaVRKYsWcH0GE3PKpBL9W34/1H0gEyBS7uoITg
	 1RNJ+8tRJPEDQMkK87L3AgNNfX+CVX89pFbdaG1ib7/DbsDl4kkyBBflgliY9FarT8
	 UyUQn11odb4krFAom7067vNCrZob1brd3ho4TitHZFHyvvNpcrVRijb1ZqpJKjPh5F
	 TpHKyaVMI5DLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BB2C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306611369.2682.3606329145762529991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d9555f3a46bf5d0e603fa9a7cf69b58829624b4427ea17ac65b334ca7b43f1
Date: Fri, 03 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783066113
