Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B2810FD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749371994; cv=none; b=k02U1B1O6MOkSyZ/4hlugJmeTJl60/rPzSSkFVsA22y6fiiH4Hs8JmzySwZDSxZinbzwzd7kDgVIRTbhLYHK913HbtJEO+Ehn5fou5+es5GUeoCHJNuTlf1hsuNDI90Eyzo2npZPR9YOcD+Qj1ZruSkNe8l6PUUwY7ddKbq+ueo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749371994; c=relaxed/simple;
	bh=sX3s/L4pvGbk4xQzeYhyUKmcbl8HAlryflerXsaGaZA=;
	h=To:Subject:From:Message-Id:Date; b=i04v6HWsF06DLy8k9nxdTSt93mtcwtffzNTHREjQAbTP6X7dc9M4ExY3fORr81dAwCmacUVjOaDWJ+9HH7WyJ7rAMZlWcHNVYW55ZFR8Ozh3/DQkI0Ajqf+E5OcIsxkFtPrdAtAv0StbXDnz4b1NsVa6E+GKlgEe7ij9IrCLwiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNe3hFjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNe3hFjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D21C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749371993;
	bh=sX3s/L4pvGbk4xQzeYhyUKmcbl8HAlryflerXsaGaZA=;
	h=To:Subject:From:Date:From;
	b=JNe3hFjNB5zHKpoQrahabNy1zcyNTj7atWmrkPUZ60F0WXgKgfOk/+OWHP4ycAA9V
	 gfWXekGeUekJIS7/p8pxNMwJi39Ge/LGqMyVGLh06kc8DhP8NJVSoj41223hJ/Ygux
	 BlUNuzv6L9OSFvJMqXFtIilVHTu4AJKK6xM2Pyw2/OOcllE1RtW201HLRM6paT1w00
	 S8oZByCz08Y8X0/UBL1FRLZUXQgFMMMLdrpalZ4ADtucHWpvvH3zEO4Zm1/RAM25Gm
	 rDMfy5rhTRueLjufnSxevmF7B1huxfH1/SDA+NAOfKYZD4Y9GbH78egXY3gtMlKEzi
	 xHj9Lg5e6aRrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90339C61CE8
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937199358.14631.12548741418224602859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3179cddba16ee48f712c4a909e4a813a80fd2b064c4b7d2039a0b31593c10363
Date: Sun, 08 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749371993
