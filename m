Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5E61DE8B5
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761700794; cv=none; b=ZdAXhimTjpwW/hRBBHxaA7A1ItCY6dspS0Tj34NgW3HVqNEC6YrGjVPhoWkzIODUDqJUok8UDTyKirGzoDcVgTQ+TjkE3LKymYiFw/D25Zs4vyT2TqJocJ7G2kpcDXP6Khw9sqbrHfCy+uZAUkrBawuVdK02aN2g4UtIVTfXivY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761700794; c=relaxed/simple;
	bh=apg15dwJ4Z4qef3NzJVkt5w+lmkYWvaG6Fy3tkZT7SI=;
	h=To:Subject:From:Message-Id:Date; b=Ssy6t5k3rzbdYFG1YL3iW7cIMwU92k1516t3Qse0lUgF5q5YSHnfHRzI5F6GJEn/xeBwA66BCe9yEVn3OKJG0KBz7jjyXowWKWiQlf6HyiZvkLN4ry2enRTpzCS0Y9ktFwV2iU2cZgPmMpLv9vgowmQfCTLyW7dKAdETafayjQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtU/LdmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtU/LdmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BC53C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761700794;
	bh=apg15dwJ4Z4qef3NzJVkt5w+lmkYWvaG6Fy3tkZT7SI=;
	h=To:Subject:From:Date:From;
	b=OtU/LdmULo3Ra54BuThigK8Hux5dtkMyfpZk5xBN5sw+LrP4dBRq47KQDSdWkwgZS
	 zRMd2LbR/hFGGpeAEbmW3xRokTdWrBeoBNt+zFVWVT35x+rPA0PYNRxCsrNQmFa75l
	 fREWknUw9QVONWGlturhY3a7ZYDw33+aART1i2QjnwMdL2xTYcuokA7zSe9ljYjIwq
	 tqx1xb5TFYWK2voA4OE7n2l+zj+NbNe9aFz6fIk92MsQG+mRCmsGAdCyQjYCllh/ZV
	 UycCIRWYLPz4xdvppGQr+/GYPWvNeM2VTirChVLgrltKffkH3D+PafIKqFg3zpHY9g
	 TDxhsWPEkaAuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1941CCF9EA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170079378.23300.5506875117023941864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e93712c8e35567ac1eac365c56c74d8dd1d39df22cb26e9b414a9d95ab2c7cd
Date: Wed, 29 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761700793
