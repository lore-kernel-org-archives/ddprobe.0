Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398C41F37A5
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734787554; cv=none; b=QPdA2VHrLCcKZRekIDTzPtbbzrkzbdMhXga7obXoJTWLiLJtVeOfTruL4wrFajL7EI0NZyGUiiT1eNP7STSnal788aPQAfZ9rFB6cqbvFCNDOcZmxeuZj3x6w9cHc8kFdefIO8gmE3QL88JPhxeR+miqFOGBVC7Flw9hLRJIgOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734787554; c=relaxed/simple;
	bh=24geFypzR4sU0i8HVeh1gbPBUoBf3kQoeO5ob9boL8M=;
	h=To:Subject:From:Message-Id:Date; b=JcYlNkTINhdVyYDyujJVRoiXRIRmWmjLZf9E2Axuh1gURB1T10JXQVeyVgCLyr2CTTg+PS8ZvDlLaPrFt/qliEKQZSPSOJu/Bzg/+t1//Kv/EPaFtOwgZwWXdxhCmPZ9ZSu2hKqF6WzODkZaHQHfKAFuQ7kGkCVxbvRePGX7A6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQG+Ffb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQG+Ffb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5952C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734787553;
	bh=24geFypzR4sU0i8HVeh1gbPBUoBf3kQoeO5ob9boL8M=;
	h=To:Subject:From:Date:From;
	b=jQG+Ffb+VhZ/uPV0XJ8uFwzHknivoeC03hoWMM2Fi7rvONcMx2SyziuPmK5AQykP/
	 1NNUYS5xlatBFwXqF/gjBgrW2Osu2wliBSaAhkXBrYAd2RY/PAbEQW/gMbDPnLQX22
	 KhzchEob+QX9N2SUP5Wn2mfsEkEEYiiQ65mtqvjopJMTGUAQ9thQC7QYOyZGt4v+dX
	 ULcy7T8rCWhqxe7tswx+XQ2As8aydHlJgRf0sDYUVkGMYULG9+LAm8O80TC5YSKlG4
	 43m41WHhYMLL+ySzftdDyqiZ2yqHYsd/Ylfpuh4oo9oTMuMp7W8kYTb0IXmuLeFZQI
	 Z2DzjucwvhYYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A022FE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478755362.4998.15739849930070739540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34acce369f711d4383a63f429ff39096f96ad91027f1faf14aff8c3ed4da4c78
Date: Sat, 21 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734787553
