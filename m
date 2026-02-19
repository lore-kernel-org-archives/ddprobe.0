Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EE2347BA9
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771523094; cv=none; b=Zgv+jLaNhdDt9/klARhkwQlf103B0vr1Nut7Q56TN07eXSsqAiXd84t8pw9OjEsJ7yKTKku6ur3tLYGhLXRWnXwUs9LEnmIet1JixLgrnctLWbAVVkjT80CSSxrTmhVg863eF4PrhRTJS8r+0X7VonLr/4ZhXBw2WrtMphxnYM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771523094; c=relaxed/simple;
	bh=3x9PL+Vbf6/ErnrW2QXB9FJp6ydrOJCC4x8j2Lt3fJ0=;
	h=To:Subject:From:Message-Id:Date; b=FwE9HzPqcIs5hmi6ScBR8/E77Y/xOWZcSUJmsd2IfQnWjJ3100qF7is3wykHct+z+mAbdf6LQOPqKjlAyULHIVrIZkP388OxPQ3ErH5dAGPS2kRimPpSQItDULmNxMb+HhtUn4flsbTsggBb0WstWRvvlLjzI2L19+mu8IxiNPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhSZ7HeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhSZ7HeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44A2C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771523093;
	bh=3x9PL+Vbf6/ErnrW2QXB9FJp6ydrOJCC4x8j2Lt3fJ0=;
	h=To:Subject:From:Date:From;
	b=HhSZ7HeH6MOHxu/lI33dQrsgSBKhLvWPc+qIJTcmDDFv0YVK8AOT1T4iGxQywO6Au
	 4CtEIBTUa2jUmGPxVAlfSDF80dmBXkho2z9P7YTDvrrTcWRU42P6uLmf1paW5FVABt
	 FHu/TuLtPKt9WtnzsNHAsaQ8MCu6eYThD6FjkbrWyyy/rumO85bVOCNaZZz/XeD5Iu
	 2dyq7bblUnYIdCPgdRi30jGD6GBnEfXE4BqThl0+E/V2LlSgtaaf1Oyi7J5wUZoEF8
	 SGDfpbJ9532KU95tRnATY7ENOQEf7sIvQVfpT7wa1J0G2Dkmmtpc3zUHnYOFX/FoF5
	 dTGIa8WN4wLZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94202E9A057
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152309358.21040.15385764297019122912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4ddf518fce59e3c43a5beae28037053cd829ee960e9ed4eb50d4b9463a6fea
Date: Thu, 19 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771523093
