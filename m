Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5825637DEBE
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792204834; cv=none; b=sBeIat0V6oOzB8V/fpFL87MP3bfZoKuzej3h2v1dy80fUIyJtuAfQjuZW4j+TBppNrhr29Lexmglxb7ZKHLJ745z9AmUZeFXO4KMp9fSm2x5xTMRW0P9iC6U5AR68FFZKwstPQM9+AvUJgBF+cp5dP6G2fAK+uDMfo5Q40F+pv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792204834; c=relaxed/simple;
	bh=ihGYMVCz/n0aAAJSk/A44dgKjVlWlsktqFPx2q4/f6E=;
	h=To:Subject:From:Message-Id:Date; b=rnRdwy/WITKkFlnHZVV/hcO9BD1gjVS4oJ2hTa/sIHklw201rV9PICax38vyYMoM7xw0Yl0T4/xFGRRtiEjDgt8q7qBNEXi57qGWx4JIhx82Lf+RVu3eKYTkSylO7K6t+VUTaAWlFNWRdrRVFnbgcbrdvo59z1EWSYQsQ38i+e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohuqL8eZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohuqL8eZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DC8C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792204833;
	bh=ihGYMVCz/n0aAAJSk/A44dgKjVlWlsktqFPx2q4/f6E=;
	h=To:Subject:From:Date:From;
	b=ohuqL8eZRRkCZK/n2gVVvKvLy5tvXix4+Gr1uJ2O60nuVKUmk+kkDDf9XloEMRHch
	 gxDJBxP6ZyAJGm8yG7/X9WC8BrBgW2MEz0D6Bma4yRZpFMSPRiOoaH2MzlbWMybLtW
	 k5cOiOIKaSa/1wfCGvcW5Dw90n2bivbaUtCfnJavCeFwbeknDsVXIPLIOsPvaUFHbq
	 2s638QiuOe1qBcPPyz+RlR8di6dxLuYAuqqLbABPDU92Acm52CrEP5doq9+PDh4BnH
	 mUS4XS9Et3ytm/EOWrDKzxLm4vDzvFbSIpFybvTI0RcombZtsQvAf1hNGBWuBdqsTD
	 h7ZnYVAhlhD4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26B4CCA46C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220483369.21122.5492051018539559444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207349cf09e348914178ea64a029b609f3043a462083e98f1fdc74fa09162566
Date: Sat, 17 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792204833
