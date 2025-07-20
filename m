Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EACCB11CA0
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752978594; cv=none; b=TbL1NfjSzSG2MimSvU2ZhpIr3/I4kpADZNYERnntEmapbq/5qnE1DgtnmIvLLIJc+FMaBWu1TprhRwnX2+boL7LCbf/bbkKbA1NyDx8QY25v2LIGzOLlwbanBTPMhzv7S0syXRfN5KmlpamVaAUt437Zpsv1lrUgKXGK2kTtVCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752978594; c=relaxed/simple;
	bh=vZtW9Mc/1X8XcQqI1K12p2+yAAVi/ea883hTj+tAM9s=;
	h=To:Subject:From:Message-Id:Date; b=juDqn/vfLWn2DUtgPOyTPctjHNZizSo37ck1eiCQpyaB+pNiIZL6opxkJ+GU25oqeC8mdsJIlP0vsmayDK5Bf0l0scuKJ/p3jivddZiHSLP3g5eIFjt4OEiqLHumTq5Fc6tRmo1e2eBYRtvGEe32wQf/TmRfwK+QTiNb1mKcBeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2BWO+UM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2BWO+UM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A890EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752978593;
	bh=vZtW9Mc/1X8XcQqI1K12p2+yAAVi/ea883hTj+tAM9s=;
	h=To:Subject:From:Date:From;
	b=I2BWO+UM4/XeQwn28/fAP9IdYJpCddI4vXg3mrjIYpsHPAwF3q2zRgUv88lDOzPdF
	 bmBh6Pxigz9Pa+L9r7J0pphyZhOvJ4TcaAYPv/m3s+scWu6+l4AHKXsu9kNuHxpB4o
	 sghRsH8vKRbxez3WgCmhPGAWFf2K4YyoN4V45E7YbrSoGFX/QRKadTDOtmZxdTkNZW
	 NPp490XWgbPRNuTcLVorVwipbH8jIeCaoFYTDih6VJ9sz+Jg1rDsf0BxALXgHsHqIo
	 4Z4RDc5jF+jPZAXXlWvNAfC/bP793wK2ineVVqmqZZ/m/UPNhVuQ4sE/C2IlrAmXwc
	 IBeA/snZ7+r+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96275C83F27
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297859358.7420.12577795801439658044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd8e107327ae442cae0a93de84f6913b8431d9580f9bdf633e870a7e6d12004
Date: Sun, 20 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752978593
