Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129F1291E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720228523; cv=none; b=IF0W+dXEJf6cUKkUPwycCpPxive3I6GwEPdhTi0dYxlp4hdtlUt+X+LVTmFzNJkmidT77yZze4cOnqGPy//cgWdhkAoQcliUEj0WhOzuCNcgIOJ2SF3Cm4JscRkBvc2ouv4re8nhTupgD20aNB3612aoDohyDgZaHe7alDtw6Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720228523; c=relaxed/simple;
	bh=8YaxjQbt950HP3gTdymXvEF4oIxNAgVbKp6cAed8S6w=;
	h=To:Subject:From:Message-Id:Date; b=GMGlE5vvGyjju6Hs3ToSNI0cWbkQa6UAVmCoE50jYvwVgjedrOWX2aegmOPxfpUQPbCAkoye8UIoMVzInLLjQTTyNR0Lo7k/Tx964MUfRUzn+e6CPYXKv/h9guLFY70COSIqaJZYuBEJQ2gqW/R9QCHY0QdyqncJvp1Qz/yiKqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqtV1V4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqtV1V4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFECC116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720228522;
	bh=8YaxjQbt950HP3gTdymXvEF4oIxNAgVbKp6cAed8S6w=;
	h=To:Subject:From:Date:From;
	b=EqtV1V4v292fPNUggMEmUbOow9EscdblMzVatlRHgmdBXPm1o6jux5i7CsIHQ3cxs
	 0G9ypVhmTnStsA07/3AYAwaXN/9epQLS8co4+y21Xq1cre3/7Uku9JMAGPBlqAQ+j3
	 vHrezfbvxPfFecLxfV6g7vV5gwES8yKlZwTZddXia71tLN35rbwWLcxDdts0eoFws1
	 zP2+qdDSyqm1L1MPxs9f4h/7KztO+U2adlGt38tc/igwGfhSqRQFAwjewVPLV6n8i/
	 mU3812SgLY1RB8JpUdBLLhjvnAWioFMorjSu4G3ONIahV0LT1p41dyBGftBPYk+jka
	 Mr71tQhLfq9VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB404C3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022852280.4802.12773816123794022053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d69e48dff4bbafc6d00154f5e4997cc3337ca661e07ffacd719c20b377a79b
Date: Sat, 06 Jul 2024 01:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720228522
