Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1035A2EA72A
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774676694; cv=none; b=o37Scfryfsw60QNm73KUTFAr/jt2Zb3u9p3NgY6Ghf4K3qMwrZLJG5B0+V0tuAlf06SauF+EiMf1O5Z040pbtyGZAaYSNYbWni5UsX6TVCkxdwGqKC7h0cBmXy2ClD0O+QMyAAG8D4JaLAeX8Qe5TPi/Vle87CCjoLC16CCEBmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774676694; c=relaxed/simple;
	bh=qOjkeflyG3pbLDxluXJ2gUIjDAdi5cRc0XHdfq0YCSA=;
	h=To:Subject:From:Message-Id:Date; b=E1EvqKGdP6+tGNTrQ+/F0kc3DUbPa6vMP+ohmG0qI1q6AiYnefM/98tvfdSS8vzX3kn0vGYm0vbwwm3+HZVyeko3+bGfzk51dLnwmPgk+qiTIyEtf/E7i4fj+PIIjTExZAfQpyKpWaeURxjVXt9ctGfLBJV4b5BzJha0sCEhEV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pChIXLVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pChIXLVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41BEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774676693;
	bh=qOjkeflyG3pbLDxluXJ2gUIjDAdi5cRc0XHdfq0YCSA=;
	h=To:Subject:From:Date:From;
	b=pChIXLVEOoZZ/TUAiH/VplcQ+yxNLAt3B/JCNk1jZM7rBHsbLK+JVgwswDFhbui9n
	 lzNwfO5GiUBRo7o1lwVoGWeTkWMS3K88tjdvHkq+3hsdgZKf0A19p/yu85g7MEEs4W
	 zO4kVMx2pBv3RxOLMbMeAfnBrxebDklmpoZzUpidqaQ2JKuGNJv9V7zhEwM7SX/IET
	 kC2xFwvDPvELN1RwKWkt+sBU7NhhRmkxx7zfESqsMhctY/ZCGMqLTkI53gHX0JxTww
	 maYjyCdopFUC/7QRtxQ95q7rT1opjH8h8qDAjyKphqEOQcmfPMbnUksYqNYle81VBl
	 fOGiREab68dXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9089810F3DD0
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467669358.11592.6334524426045676145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef7b709e76a3a80e126937008c5c33934815324ed64da96d4cbfdfd6ea384e4
Date: Sat, 28 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774676693
