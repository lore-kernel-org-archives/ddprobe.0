Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4997828AB0B
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765641174; cv=none; b=iP5NVYSR1NRW8W7jTdi3GNqv3tR0EsAZHoTtNvJuFQQQvKlfjR1GB2EZJxSZv6DJ4lXyOreHBOyxHUL5AeC1BypqzlvlfV5G2MUTA+15vHg2fkm7eu8O08Vluyy/jR8Lfkl2p5RGFPgqnk5Yu+z5Sc0igDze2yxmkrecooFojJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765641174; c=relaxed/simple;
	bh=Gb6mRq0EsbChF/Vu4464/82+El3hiU5zusD9zyY7GoM=;
	h=To:Subject:From:Message-Id:Date; b=YvOuqXG7zosmn86vtDmgxpkQJrw5ePJzVzTfsPmCa2Fal1e43bPp7EQaXl0D/cDb4cVCC4pTNAiUXiIQqtBsXdi/8H7PiPvgDs8nDEzq15zgMhOH2OmF+KZ7eeIYkDyUUrp74FjjBN4t45tNrgK2k7qNDZTrSH6B0nPTlnYKUGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpxSjeec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpxSjeec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA7BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765641173;
	bh=Gb6mRq0EsbChF/Vu4464/82+El3hiU5zusD9zyY7GoM=;
	h=To:Subject:From:Date:From;
	b=VpxSjeec8h8P6TKkkQ/loOleAMCv8RLqtgZ+8cYOLLhdaEVlRV1IYJGixAaqF5ppw
	 +EIsFGMHgGwGDnvbypg2DjzDip5PD5tt7AzaUJTXSIR7V0GnJM50+NSyzLJB0SDVDa
	 lQFGo2ChZMb23vHDmwb+l/YUqX5yHCD2skX8HBA51X/y3mgXVi/AyMlbm61HepWPsg
	 0wGsvRuGMWIxcsXpk19rwJVVJJjIZdVK9QnvycZLxSvTEAUlorjd7xE+MG75B178pn
	 ruh84XuEIkbaUTxCQtPngXhT6OjdNqgqm0kwj1DJR10Db84NJX0KbygysNS6yTroz4
	 JTrRT7jnE+n5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986BDD59F76
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564117358.16365.4954460731417156972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60943bc000063f5c458a28a62540a3fe7da9c1a8dfa3fbda3d8375c1efcf75ad
Date: Sat, 13 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765641173
