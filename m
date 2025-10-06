Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167E619F464
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759750194; cv=none; b=ra/fbEEmot4w9SxPVEOjSVrDzwO+WWSHw4aYpXwY2bb/zaOPs6FKykad7r+VUzLWBTJsR+ei+GXIKYCYe/yXz92RKhJZGuWmYe98iwqS7Gjh69krvjsOtsNBoJkP3iLSEZXtdcQp4cR00s0d58HaOaA2zGVstSnsApzwL1gaFhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759750194; c=relaxed/simple;
	bh=i0usDbUwg/NP801BlchnyCjO1TvDgTYGV1U+FbJdBnY=;
	h=To:Subject:From:Message-Id:Date; b=M4qmMqVbhZry8lEOs0nQnaPp0/42ep5VFsTf0uWFPRUATRu5vv03iGK7S0sFILWKfXe4zXHFsixDw8F02AJB2sETIt6X6R4sX0jdprTnWOVzvT/l1Drp5mXJOsvXl1gjjiMKS2OuOKtMI/JUsROwkOO8kiIjdtUbMxIx4olaLT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOcvUlEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOcvUlEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFDCC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759750193;
	bh=i0usDbUwg/NP801BlchnyCjO1TvDgTYGV1U+FbJdBnY=;
	h=To:Subject:From:Date:From;
	b=JOcvUlExS4LUcza7ak7JRvx9x+1JMtq4LuFIqY99reEJ4RPGzrsFW5Lnolk3D+PhW
	 shh7Xs5UsvGb7kfeku54bXAVmd4fRdzt1fgmMidR1JjBmN21etiMEc5KnC8owBp6tp
	 FLtsjtVNJ9MYO+r7G+HRaJSpQNziuBgequO1QpzqMhX05UPKGn5yN8uaVn5q+9DPjE
	 UdVkwRTR9rCRanXlmEEUPvrRN0yjA/8EBieZP7JPwIf3fQCXkhju9kGt1tLVJp2kIa
	 21v6Ev2SdMG9GRIJzmqvHqhvQSBQJLlY1wSavUHWZr0fiCVKBk2xLLat7zMkDmcBrP
	 2NzrfPuRuBIeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F844CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975019357.29165.11901051827219009743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493782a2a52389786d5ca159cf1ebc77ec49d0e4f315759a9ba1eed341060a9e
Date: Mon, 06 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759750193
