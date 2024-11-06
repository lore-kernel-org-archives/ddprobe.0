Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0F517B439
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730906154; cv=none; b=GH/wOw1PvX0KoONPWk7DjXLamyh0INVHdQOTQ4jwRwF7FusJLcRb98l6xaDguSzwj4z+zsuO6/TG7pVu9hPbVpVhDGUa6+g112iMjY2jJ7Xy6uHeasg0Oa3i0rNT2bAOeHstSZLw2XEP1Uy1ksIvoaTegp748eOJb4Nb1wFhe94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730906154; c=relaxed/simple;
	bh=IAti9DMcvavVKvubpwSf061EkpnEOF9mNs1e3br4Roo=;
	h=To:Subject:From:Message-Id:Date; b=Z3iOP5AizcUoQfJXaAOLcCWeA3KS7pqkiNo1OvnluEtyrRBFZCG+nsDaLYS2HTEI4ovYQyEaFIDR3Nxt5mXAxMmYpUMDTU4KwCyLYUl9yp45MfvuClJlBXQ1chJGnOGxvvwy31Vw3mx9s3AH/AnI38Y7Bi0j2eCqm9XSKRVXoXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGezQIdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGezQIdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45FFC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730906153;
	bh=IAti9DMcvavVKvubpwSf061EkpnEOF9mNs1e3br4Roo=;
	h=To:Subject:From:Date:From;
	b=hGezQIdQA4mbM49KHsCvTuojJvITODXJ/nl6Wyk4sDLFqcMkeDSdIVFn50vQbegtq
	 WXyU1kd0N7shEoVoKaFAxS2CrphW1eRjAT/x2CDFXC+z7LTD7KDllULAx6YO1mJE4h
	 Pza+XZv3OJNwSqbryB0TV//1fsKTwA71uPE9ZDBQCB9ebX7g/V5le1NSHGJ/zIeLa6
	 qxoRchEnp/Of75j9ttgqI+j0MGF/Bhf9mOKvzjslWY7okR7wRHi3i5MdUKngSVBt1u
	 XXJQ/OrF1cxbIk65Mu/OBZAHqOUzqcS8mRYzqcXLqZRTH573TE6oCONF+1ejaJ/juq
	 qkDwbOb7Bw/lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E2D44D7E
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173090615357.27518.17465673479982633083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38359d10b1ff823a26aa93e73785af3700fcc635a63d2ddb8be13c8c9c737fa
Date: Wed, 06 Nov 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730906153
