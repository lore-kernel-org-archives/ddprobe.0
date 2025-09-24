Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DB52E339B
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758719394; cv=none; b=SOPeDU2uvSE28enLr9Gc3EGN4uLcv5UtZuxj+kgaakyewbrxL2tx64Br/Zjzn/zx8TmXaxgDQ53NcxBa4lNwhfwZmljFeNsJEphyjnaUftfsca1WTJVRYmn6UWhssFhXS871NZPxlZ/4TT2zMpWela7C+PzRqa4/7q+raULG1x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758719394; c=relaxed/simple;
	bh=Hcyx58TExiBFVJ7fx8SaP+kXH7PrvwQKXt9JbjRN8/4=;
	h=To:Subject:From:Message-Id:Date; b=DFe7/nGmILvSFw8utqrhj+fgoQSWUPXAbI3yh6oXP6wnBnW5SaMFSysfuzOgeLV7kwmZXvNwTgXXaGQLkYlYVz0zUFMKLq/n+e2jD7MpI4kXOzTp8NM1Ru5A9i5bLh3Cu/n2EzxZ7EqBkXRMrLF80wlpZsO1EEnxrgB+gbEVkEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaYAB6uz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaYAB6uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A204AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758719393;
	bh=Hcyx58TExiBFVJ7fx8SaP+kXH7PrvwQKXt9JbjRN8/4=;
	h=To:Subject:From:Date:From;
	b=iaYAB6uz3eITBG+hAd/MPYzUo+A9Nf9OaCUv1ZKMtBdn3K+TdJFz6OAAMVZILdXCc
	 35dN7GZwoEFZsfVWILzNohnkAAQgIcpotDJk0JIxcoaukY4R/gLZqC2NNfy+GJVI+E
	 k9vM21CEJdd9l+94mvhtay75pQi645zcIu1a2o1vhXS2+6JdrYlLaFvwRa59TAxiK2
	 EI2hFV/D9gixWrTlgoOhn9aCZ13Q21VPK3LwK+Ifn41a4AuWV5j3LUuAXN70exg3eE
	 gGr0oxA5vHEZOP/2Ovtb8APCpOdHkX2skJKpuxC5/LuPDCyYqeN9P4Yp/2iRMaDW1N
	 MglPOmhz0rzmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF9CAC5B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871939358.17901.3094115794366933118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f9d36bd9c50c2c7d66438eabe0e8f1328e667a674b6e3a998675c12096635c
Date: Wed, 24 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758719393
