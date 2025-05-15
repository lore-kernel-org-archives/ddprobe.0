Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EAA22D785
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747304394; cv=none; b=i15WHY3vyNpxDVsTrIEOykcHrtI+aUzBIlwVTEHu4qn93u5lCYP1M+Fm4KHsrctP/SKwauKHT2mS0q0fdtpyxImDDdiQCIqYF84C9RuzhP9hwWrPLvwtnDcTM/o5ZIf3iVCwezZbleaRmrpjq/gqM4+NSFvCoCR4q+NAqpQqq4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747304394; c=relaxed/simple;
	bh=aJinaCmhR2fxHsYL7X0Hb6+eItFn5GX77ILQfXTl3GQ=;
	h=To:Subject:From:Message-Id:Date; b=iqebxXf0QOJmH7WXzAUN0yXSgtVdsnMHK2mf5kwZclsi4OiTt/IHNWPY5yYRtv7yPgQrIQ7J9/fQD4ofGSLiW1kukdorMYi65jm0F8j+i4UOdmlcijNPOseNKbGLe4J/JVA3VySFll36bU56IEjXRUKMPKLo7opSIgSJKq7/INY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccpqR0HU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccpqR0HU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BBDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747304393;
	bh=aJinaCmhR2fxHsYL7X0Hb6+eItFn5GX77ILQfXTl3GQ=;
	h=To:Subject:From:Date:From;
	b=ccpqR0HUJBJC1AO7uG27LmL39jYCaKF3aIH7WUzHkzv+qUugCpr3Z9OSdfWAftF0p
	 6B4xwhbNyYPgQy0owWMw5MTawKY0EpmixuqMu0wjaKDoZLKahG3CtBQDh14trOhJUn
	 1Qo/iNCNHttH1uf7IIM7TwlJgil9F1ihjXX+lHgyTeqOfEnNl86GiU/1Pg7f0Cwz8r
	 jXUZj5bFTT/RVlsl3FnInBryK81RADX8ncRh5WhCSyVSCIBdKdq1aLSR8PuGgjpuef
	 JNNjesQ40hTt5lZPE/cABO3cpjyj/tV+undpv1eDIpCuoI5Uy2EUU2YWRK9+I6FJd/
	 T/kHnuj7oCYxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F395C3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730439357.23565.14507193755110603659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5bb6bb70211bd91291bff16a0c3a4a51a69b5f64e0ff3ca3556e16f145874a
Date: Thu, 15 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747304393
