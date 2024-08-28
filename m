Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390582F41
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724820354; cv=none; b=YvOla27WRs2ljihaGFi85d/1/P1tiZ+i5At6yhklSYRe1le4FmzrmSsa8FsRKQrlEIEuRjH6tCzjqCW+TX7RV7AAZb8G8xEb/SeIN3MkKRu+vBTHjoh6e0d+sCESzQRxiBJsjGEIFvIX4MWRfnjXZaAq8etEd27X2WLO2ZMQ+pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724820354; c=relaxed/simple;
	bh=xLp+qbc16nRvI3zkVffNZqchoJuUf/HZymPWbSF7APM=;
	h=To:Subject:From:Message-Id:Date; b=oTyTuclrNOf6VoBGo4E4odl+gzBekaSZlyMnPFnrjVf+y3GrXO7m5v068F5WNSbRe31Rf0kUk+J4mTMlPbS/W0XfdDSfPcCefDVcuivKPcbeAyTguB46biZVuAwxEP2kPaz+Swzo8I5AgZRdjgAePwc7q1OschzSzgyOJpcdpck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoL5qFD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoL5qFD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA3FC32786
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724820353;
	bh=xLp+qbc16nRvI3zkVffNZqchoJuUf/HZymPWbSF7APM=;
	h=To:Subject:From:Date:From;
	b=WoL5qFD5Lzy6gYKoxDuTS0/I9EFXBWxF8zSCxTkkoSJE5d8vnr3K2PRD2xfRnK4qy
	 1cyb2UrxTEWb0GSHT/uqelJpCwAt5IhqtG0ENqbmErxTfDoIDQra1c5qzqKzjap4+R
	 3OZfvH1+SPCESSLuFz5166+Xj3TWENM8/VRBbehZHoC+W2Gn1LfLu0aXDPJ+3MipTm
	 SepJY93Pmp3xwvksf+rOfeab0TbAgIDYc4b86THvgtha0fA6LtTZRmB16GeIzr0yvi
	 vSTXdDPpM1XpF/LS5pIt/G8f0iCPbL0wxChYtUHZMA8VhfPP7dMcUBFzjQFBGsKIr+
	 CReQNt8LGhVCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4955C5472D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172482035361.28347.5642355141522783617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc5bcb1953d6b051e18cfdb75f03ca734b96b663bfe899d2738cf93ef9ece4c
Date: Wed, 28 Aug 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724820353
