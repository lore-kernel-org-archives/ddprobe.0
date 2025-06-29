Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10913242D6E
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751240394; cv=none; b=YtDCcTOH/J/u3eiKGVvyu6isnoSxIkbMGkll2D5qj16M5wx14RyalKkQZjIccmHf9CzqsbI2LnZwKglITK1jWh5830UkPJILHzhVhW4QVBCWwNsuJC9rCKrEJnk3d2tV3iKdbZQOERyYbIn02J+XL+Gw0sABaCN45rTsQdwacuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751240394; c=relaxed/simple;
	bh=70jkIQeg6u0zu2q46C6rxbflRPe7YS+/6yh3Cwvp40c=;
	h=To:Subject:From:Message-Id:Date; b=XdMNaFm80BMXnOnD4FB9k/sXkH1G0zA2xexvX20RIAnZ6fj8xIOqqw9lM7xyNN+pxq132QaBRPopGU/RJqXJvz25rpH7+7wgCRwN+IfZj2KtAKsVrMSJKdaiaXlK8yMUEr/LhvHUnEUvX7ZzKl9+n96gyS2DJaysOIVNlUDIz/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQUdMUB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQUdMUB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A570EC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751240393;
	bh=70jkIQeg6u0zu2q46C6rxbflRPe7YS+/6yh3Cwvp40c=;
	h=To:Subject:From:Date:From;
	b=oQUdMUB+wtdUGwWBLVQ9HamdfizFR2Lf7c7VCqce3alf1fVLhFw/RdVJKTjEzxIsN
	 8XyddA/3t7Udzyeh7vPpRjcWJrkMFTfPMnCxtG0mT8E1s+3BzXApbFpQJGK3ODgEef
	 bcqzhmbC452WetE0+MbvG8OmI7Pu78MIaNiKN03K73GIS3sLKlikXLKsocopWVy27N
	 MbbEnQalFXB14JoFZCCVSFN8HHFH8eXHbPVenc2kIeENaVjVnSe0Iky/72SjPMEMP1
	 bQbA8il2+TTpjABKB30qvGyjgHEo+UlOvWgm7RfbJ6ErObzGd1LZ4GXE5PfUp/HhB+
	 MTcbeqXZ3nbZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D83C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124039357.19340.14463539946022280610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9136c45cb03d7dcbfcabfbc2fde13fd12538b2ebc8b0f43a06b8375848990bc
Date: Sun, 29 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751240393
