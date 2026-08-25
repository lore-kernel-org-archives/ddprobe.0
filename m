Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3210E3CD8C9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787640034; cv=none; b=M/3r6bfd8nMApyiFBbejs6Qk6NjDdvIgfJ7Ntig2Q8mxoZMpkEjSv1jm35VQzFS4LivUc1DTw2BVcHoU3p8VCySD1LhWPKeevZox3tmiEZJuNtUyyul2KZqkvRdHe5rSEC4qpdcXMiyaRxfE7/CdrI/PxrFQI0K3dk0rqJZ58JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787640034; c=relaxed/simple;
	bh=djwhC/1juyKhoPWp4BUsdXHIZwAWM2krwxGPPHqX2rM=;
	h=To:Subject:From:Message-Id:Date; b=sKoRE2rYFFAFrozGp+sZyAoFCSZFF/f1Kh6OpQEI4TGJ5gHacpp4vTCvY97smWxoHwAVBQ9bMAW/7r3PabBWwg91Uk5bo6zzU0lIL1GAlPIhDhE75E2OiKEMPTuxoddvIjMTY+NbQVGi0O+89p2bLnI6HTs/LJngq+0wHb7AZLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIwhHPpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIwhHPpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABE1C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787640033;
	bh=djwhC/1juyKhoPWp4BUsdXHIZwAWM2krwxGPPHqX2rM=;
	h=To:Subject:From:Date:From;
	b=vIwhHPpbVqbygmi75bwAdqmwcJXQjtTKWJ2EZLfw5QdxVoEk6hf2oLcZxXdgZax88
	 fM/eZIp4nzK+IeaVhR9bP+R/jzyvZbZKsdRmRzfsaPxDtkOYIL1pQEHw6vxX8xJvsZ
	 ZkSvFBBQ9WcggLCScb7wVJVq1Fzb+LuLNLF0Sfg7ebRMtpoN1PicUbBGrdCvWJUp8K
	 CXRwTrHtROaLC3Zk8JHVwIAC1MxUbWyPk0EEaNtiCvMuy+GQYhl+GOBzGzMO2BoLGi
	 Ww0Oz+jJfImLaZwOkuJQ4KNSf/bqLkT8RFkZd9dQhsasDCJ1AbdAduSEWnA21d9Wly
	 b6GI/bUw04Unw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42CAC5DF94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764003372.509.6177595753586304084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54eaa4438508b9be639f6b398af55c38a6cc342bbc16e7efaed715e65cafc19
Date: Tue, 25 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787640033
