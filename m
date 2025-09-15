Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC3F2D248D
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757920794; cv=none; b=Xl1qS3hmtdv+3dDvAAdhZfTNNZoYAQoV9uNkaUjmSEESnP2UIrsNJPsWDMTK/EVRGnRbns1OarV4qrXU7pp+2F0gLo5zo47em/6ePH+k9FEbmiMHonSrwLugmQArN0aYjhIKmon1YPcjrm96DI4BbNxdvbq+IKCcor8oOorkcIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757920794; c=relaxed/simple;
	bh=TBNq4i9E/081Uxa45g+0jPKfxJnRAqGjPm3jPbny0+E=;
	h=To:Subject:From:Message-Id:Date; b=bRkQM9l3ool/dVdhv+NAVN4sKPkW01ZlKZWtLx3DH9zyTKpqSwn+3UW9QCpj16FqJR7STMbQqWK/SRWSde6pz7JmHtyPAgYn8yu2wH6CTe+ntMJFaYabGzRVerT486b8B1MluSlJQH9B+WCI4BjUREC7iRp94DSMSUG8p5eCUVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1j/eeNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1j/eeNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F49C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757920793;
	bh=TBNq4i9E/081Uxa45g+0jPKfxJnRAqGjPm3jPbny0+E=;
	h=To:Subject:From:Date:From;
	b=e1j/eeNrdpu4LObSzLaag1Sv17d/w01lYpYAwUUzREvmx/MyIKhWqO5KjPKks612z
	 pkvjqeNCXQc5qxTJG/+wbm2c7Zr/8zD8RbaPqF8z5oUXLCZMbKmKn3FUKJOevy8GZp
	 Fj5qT0yQSbWkTEhx923TIoXpT76AGA73u37631XYB3J0xWNmn2bLbo/IaTJbSp3fze
	 hTwE13QDRIJWk/KupciL0Yqky0l6G6Fx1dm5bbM9Q7AHasPlfH2J7CfvuBLGqd3GsU
	 Ij54V0efQL/F9TkdIyuBIpLxWImM53rbQNCg+yuMM0FQFT7HCOtdMqWWySJvdki7Zk
	 rekk8W0saANHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952E3CA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792079358.10993.11719575005778463964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b74cd45e14c25b54d7a44df6b31146b9734e9735e1446eead92d57a71151bd
Date: Mon, 15 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757920793
