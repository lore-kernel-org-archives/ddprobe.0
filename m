Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F79F1E890
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717843043; cv=none; b=MTVhoYFBA3mMJ6xBVxH/EiQhU1vOdGpDCW3BIxGKHa6UzSjzDp+YWX7YRnLPlu5b4DDSVKgV2clKNC5czENoyhso5tAoeZQCj1AaDWSvSRiEPCcIYOm+WIY//jnkcI9wyCdye8KlriUgQRYl7go4dfOxTNBhIdN3xupead31664=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717843043; c=relaxed/simple;
	bh=zoNTg2T7U6ndhPDAA30M9SXi4e/TIq6ecRjg8U3UpWU=;
	h=To:Subject:From:Message-Id:Date; b=Aro00CjKjawCIwCU72mpWoYClC3krScOe4LjSku9OBx14d1j4ZDm53apvG4rKaH0EWtnaSvSNqOqwcL2+Y1J2X8lWlhfV6xB2WW91vZcFS8WxTReUfgb6VB0XPEVxWRuUn2Vdv9sT4QO+af7dkEGmGbP58+c1QMl6+37zp3oyN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxmuAo9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxmuAo9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C92C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717843042;
	bh=zoNTg2T7U6ndhPDAA30M9SXi4e/TIq6ecRjg8U3UpWU=;
	h=To:Subject:From:Date:From;
	b=XxmuAo9mg9Tbu0s+88XNAS6FB49SqxeHIBETji+UEXSEKDziNTv6z4Uq5rmJ/yLUl
	 Qlmyp8ksdfEDIbYr442i+PjFYAopTmFLnZlCF1D1hNZK+ocALzNGgb4Fb6txoa8bHh
	 BzuArZQhsowP0IUQvACEYDo3CoMrjCasrWwKsQb05+eGGEwArUfHuxV5jE9dUha4Bl
	 yTMkpbceBPVe5vs2Ukl5OHgq4RB4UPhwY5s13GlHjMNa5NjbRmQ7k5wx3UsbrBVLfM
	 94sP+iogWV5l4f4g0udW9abs9YxLGqvIDM1ZYfvTBHPFrxy6tNJpE9AziMDqJC0VS4
	 XrSSTkqZKycMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBFF0C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784304277.8292.9857545631188214519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7e6fe7ee378b857f0323495c4c44464111f901e1b8e903f36511e7fc216bb2
Date: Sat, 08 Jun 2024 10:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717843042
