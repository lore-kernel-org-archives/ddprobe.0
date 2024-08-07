Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1950154765
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723041954; cv=none; b=MvRksU2IHVJnF3cVDymQgqi+fV6QLpkG4RnhxI/Xxl3PDqnTiMcHhvGGcQ3dLsgmHfyP4sAYqmsAiAOH4sKGVNBrblRHLBK4jmV6LOjC5CALh8UY4r9LJFW7gQnqntTmuS6vltE4JKayRO7Yqk9ae6HO4mb0+4kF6ac5mpiop90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723041954; c=relaxed/simple;
	bh=rf0TrrtDZCtP+b5Pl7LoYp8C+gbhTJ4SOmxhh+4sbeU=;
	h=To:Subject:From:Message-Id:Date; b=sZVxCBR+csfDpfBVe2TksCRjESNWmOmv5HK04nKgxo97Gq2YptzcN1TiaPwOQPrVaFsx8Rg1FOqOp0zLaxqncwh/ZNG57HsXzr6yfjizIeU4d5Iy0G36NJeUCl4LLadKHdU4W0cPEJJDOfgQjIAoXO7ntYSZAsuPWX5g9XTZaP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWbrs1sX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWbrs1sX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1985C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723041953;
	bh=rf0TrrtDZCtP+b5Pl7LoYp8C+gbhTJ4SOmxhh+4sbeU=;
	h=To:Subject:From:Date:From;
	b=SWbrs1sXi9xa5eixVIaycnpGkgrPMUMbgVPNLeuWHpALNHQu3vq2RYdpgdbacx5Bs
	 nsQl/ARc1LmjA2btY5kr/5sQO1bsx3NhRxTn7ndC0hP2amioiIZtC4k1V/GHTzIwpM
	 Dpmk5t4f90/xOpA/bSZLFHwGcJZv62M1ZXGJ55dwsC7dq/BAIjOjJOW8H9MVAWukDP
	 9C/gS1WpKIWFNKWtWh+0cwaTMVG582j7avR/g2Fc9f7EGrs1MV7p3r5x7YyxN3Ps3z
	 tf6BtZv1wiTY6vQwJpg8mG9Jz+OIgDOupWWwcGI2myf4ThUZ2tNr67hudTi0r2D8KE
	 M1nlirgMNyiwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B96FC52D71
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172304195362.24797.15286852784816101062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e12fa19d35f6be29c67cfd53e37e54339f94c426e21e25639931fd1b387791
Date: Wed, 07 Aug 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723041953
