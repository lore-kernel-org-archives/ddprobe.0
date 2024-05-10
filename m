Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0D053E26
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715316743; cv=none; b=pkbbloPLvEaZ4dF0rK2rrIy4eZQUJUAEpEYaGg1YdMP7x/Au72QG3ZYmDNdwhMGD+FpZqepZ2JspHUQVcggzYYt2lJGph5+Q5DStgWw95COVpKbpJbUG5sMePBxFLGRA3DSmyBK5nn68GwZJCG+37YMpaZrbOn3Tu1XBa8MIbQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715316743; c=relaxed/simple;
	bh=FfDlvEcyFTuHEJO819sVVUvMrjNA9YMVT2EXl10u7Ko=;
	h=To:Subject:From:Message-Id:Date; b=U9pmdppVL3yZrnd/cBna/+eXLmfHYzxnkSliI7RaVTHV19K5HAflVHLT6riEEG4OLfzn4KrzQ5mbM8nXhOg3G4rTTPm3u2vF7rUfEmPzs6sbRRApnt27nVdzUEzxJiPhljnz73xze0UNTZV0wrHmyXFnF5fIFrAnVIXQm3ZaZ88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hv1+ARzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hv1+ARzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79A7C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715316742;
	bh=FfDlvEcyFTuHEJO819sVVUvMrjNA9YMVT2EXl10u7Ko=;
	h=To:Subject:From:Date:From;
	b=hv1+ARzdth8kGPR3HEaEr4JbjWy+j/nDWYqJytAgC2Kz9Lm8raVRSFMl9+2aUEsZh
	 Xmsz21nA/2q6bnuxSrCBxDvcgNiyeDFzXNDOmSLJMKqCjLoe8Ti0H69eduk1SWa7nX
	 fjjTjm+E+xpD//4WKWukt1YENxZV47YOY3KHimt+8MfBt8uvY1oMu4ji8dKgvg2TN5
	 GL2jxI99MUhPdnVOuZZmLhkCuWcTZlsKcMLRByDWJRDk7Tg36W/Jb9zMYJ75B7WSYi
	 8HvwpZpFdBH285icX5Iqoa4lgq+2ILr8cv+RFc5YGuZ2Zo6LmQipRoBGei1kPYyoGI
	 3Ji9Ju8OuP1KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CB1C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171531674278.27591.7047503250922136380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3c5d3bfdf2c409e51085fbeaf366fdf9e0331e8ea8583dd62f7ff76b3301cc
Date: Fri, 10 May 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715316742
