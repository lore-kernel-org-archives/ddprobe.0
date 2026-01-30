Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C2D36654A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769814834; cv=none; b=qQLlSG1aDxrqhPgasROtak+0q4LFzozxclYUAdG27kr5VDebTKdtnG6NB/pYoHNF7s5DUSRK0h4xLqNWAu+xob2olVCgwUUhsM0Ff/FN+SiMugdCIg1KOR27PuBMiSL/nYchzewljl3ph20tbwJk2SZNHwPLMno3dACwAdKubBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769814834; c=relaxed/simple;
	bh=hsl64bLmTP1v+Fmk5zLCxO0Ww8TCYUcYpvYO6dvrMP8=;
	h=To:Subject:From:Message-Id:Date; b=Gt8J69+G8kS2HNU/ATfJ+g5dvGMuzYCgRSOKeDYJsNSWbAsBp0pAVGZUrVhbRELnWjZO5N5IGAEx2wMwMr5Sse3U6uECrsXWyE8Nxi2JeWhJeua9mgqbjGKTa+sWqYaceQeJHxrXRRoFJ8aAwSE6po+XRFOlADnx+5UYmTLum28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpYW4pRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpYW4pRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62FCC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769814833;
	bh=hsl64bLmTP1v+Fmk5zLCxO0Ww8TCYUcYpvYO6dvrMP8=;
	h=To:Subject:From:Date:From;
	b=fpYW4pRIrsQATesUh5i7EDNogbCg8xLc43P5Z2n1/JhScPcWJPMc1sJQfzz6DxpVu
	 fcqi6XaOtA7IpclEUY4irLs2JjzPvqc5Xx9fWSAElRaopKlZ69Cxt3GmjxPk/wa0HX
	 ETyDkkzgvl+Z41FAk5u0mhXr7XSJd7BmMnCkmBauTvHCco+ZJF6NlLds7/UH8vJbeK
	 qoWf/nGdvKD4PRcrqoK+CQVYSgUyQgKXAPlxHj4gQJF/IhaN7JiBXscV8SqvpMSTpW
	 De8N8Dv+OMEn+eL06wGCcBKsueBtfguhYLsGKlq3C1k32EQeZZA25vEzQZPdrlyjdS
	 8RGM6Kx41w2/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F26E6BF3C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981483357.21923.15855911323023783978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376e6397e9257a1390926344ea65a4f16d044a9f5234382ca0ff2c8c5c42cbd4
Date: Fri, 30 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769814833
