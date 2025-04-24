Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46480226D11
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745496594; cv=none; b=Cp+RmpTnfOj1TRYoPsvBkBLZ9+G2Wnbubvvx8INx9iJLMwDh9GxLG9D7Vup4RXx9gRAI+povIt7cWro5MkW3FnjPgjlh2YGHHux37gtfCByyodcoJLE3peEKU6qGizAN5OLTMnWgtATcO2Zr8iWSE21zv6l8efM7aiXVlrxG7kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745496594; c=relaxed/simple;
	bh=GRPbKpR/lehDA+RoV2SV3GhJyFEnLXec6SAhr2M5QWs=;
	h=To:Subject:From:Message-Id:Date; b=dzDHa2pa/G+pX+R5y+vjBFI0+pQSIBIPihIXBuKzstetEvtovTEt/YYEIgXQ/AhOyKQmuXGG1y533QstuGsiN/+Ifqvp3P6s3xCVypEcKpoJG+ECRWBkJQaCNqJ+Y6FpQAKOFoE2CLlB03fixJJiV3SgcAb1AYgkYrx8KW4pG1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+IrBAkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+IrBAkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A159BC4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745496593;
	bh=GRPbKpR/lehDA+RoV2SV3GhJyFEnLXec6SAhr2M5QWs=;
	h=To:Subject:From:Date:From;
	b=f+IrBAkna3gnqIXqjwjRbvKE1tPYzQJ4gCV7DLPs0L6RETz9lK3KAl5JKztMN4iuF
	 bCFUq++ejejKdAs001gKkQ3d4+5iEIAciWzkI996WDPiLu3XpqtrEFIXhCMFcGYyPx
	 OZxyqDqb+BHulSTIPGBiuDQSUBL6dBxrQabwC1077MoKUsHQPwDSgqm2yP2m9gwO4Y
	 Tj1QkNZJLsNpNJU0mODwZN1L4b2GE0bXPh2xdncSGCtVMprsUytMfDTNxEet5SN15H
	 yKuInzh9eRVNcmsumMZosMVK3fkcum3HCzrWe56JgLv/HGeFJsR29lV1dP7S5p3JJw
	 tpfgON2JRnF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F317C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549659357.24318.6835418297354608054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20837aef855dc22c0929cf0950fbf0b4e3a71b5370963a912aaf3072bf89aff0
Date: Thu, 24 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745496593
