Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361B62D540A
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749597594; cv=none; b=t0iblz8uwgzgAnlIYmrIPfQ10lIMYhqmGrqLFIpdYVzFPEG2O0VAxkrjwmaDAyt3yAN0nMYGebmvFP/8Gev4wHU6sbLg7om7m/V4K+J/TwdZkE47uDPyVMjgZS4QUPjo/sJD4KqKR2UNJCM6zJJnTEKVrVe4cg59VSjv5sAZUGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749597594; c=relaxed/simple;
	bh=pOBrUw0eXNHwHftCET8rAHCOA1hKLUni7BbNQ3oGcmo=;
	h=To:Subject:From:Message-Id:Date; b=mvgmHA+kZRSDnSXpylmjojZvLnFNoQH5q5J7n+r+Uf05/FBaZNM5ripZRfvVXRiMbN2omX/JWTDWjM/MDyMYU11EZqtovL1/57pOMycLlSm/VcyFzv3oi0Arv0tFu2Swpv1tW2xLb/9vHgmfOa9kyP/BxedKadhdvn/BYNWKeo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkAyR/Pt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkAyR/Pt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB529C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749597593;
	bh=pOBrUw0eXNHwHftCET8rAHCOA1hKLUni7BbNQ3oGcmo=;
	h=To:Subject:From:Date:From;
	b=YkAyR/PthO50BiNaISna9lrqx0oSPbqqZh16wdB9fDBSQbz/EaxC7FIRJd0BYEVEx
	 AnvKEp/XMythGNEgn923DLDr2WLKKNmUvHfkNHQqE628EC1xH4laehn2Jer/HhDYBa
	 KR4g+dT1PT+MzbjCk6Jq7pb4JpblXwtdNcgCocjN3Ke7omOZVUBmhwiiAjhB4PgXDU
	 ZQ6otXYlwQY4zmRNOQA03PJg5Wm7IYB2CqthFjZHH12ITJXMaQmiS9bXT/eWwv09zk
	 dndEBRAdNnwH/Zv/en2krclare5mg/QGZPGHGaXp6MOC+J3A+pexPCGixJpqliaMag
	 0SQ4JVDu7g9wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E14C677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959759358.13709.3884158945917862003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848e4f8fb1eefad2593afa7876e1edbca074d32b3e348a7bf6ec39d8f927731c
Date: Tue, 10 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749597593
