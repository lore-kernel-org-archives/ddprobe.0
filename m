Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6029920C029
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784513914; cv=none; b=Y/agKgz9npeNao/t2ByoogSazQdSuEnr3jlsUZw6vrtS+yfUqPzRLGTvy3Am5bJsFWkcrlKkZiFbKWlLh10w4j6s3gLea2jj4sbcL5bpjVINBImpLkp/vYvU6Oc2IrfGVG0wM6Skqxn88p9eFZkPIMxE7rVudo7Mb/iGjmbb7C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784513914; c=relaxed/simple;
	bh=UWKYf10NL6qE3HnOcz3ONl9Wbzc9LFeYZ3L05RdjTII=;
	h=To:Subject:From:Message-Id:Date; b=mESWXzrahjuIvCGZ6WHdEZ/hP7KwTfwl0mUK06grBbeTfXARM6e+BW7spNNfsqMjyJKpg+lsSIaQdzORIskyXGMlI7O7cbUUzi28x7Tg2DfbU9H80Eqj9lQRX5JwDP34UMb3BEba+cAp51CT5xpth5BmI2Fqzx197D4NBicdd4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohwt2wpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohwt2wpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D805FC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784513913;
	bh=UWKYf10NL6qE3HnOcz3ONl9Wbzc9LFeYZ3L05RdjTII=;
	h=To:Subject:From:Date:From;
	b=ohwt2wpv3QrKYfI3Q73d2OlrU6904tUPecqDo2xzyWgCiQC/lVk2n4vb/IQhpotIa
	 MV83AGlxyvUV1H8UboUgJ+hN/nHdSpajMWWYlsUOrdCRnvFMuH/0Q/aWLspEqWDAS1
	 1MdE7yamqDN/sXBZWyxGBGPt8drbmCxZv6Qi418Mwd705no46DfGSoeY+2Ovfd7EfU
	 sx47+87KWK8gcYBe0OV5EiHdqtaJF0oNEx8IA2uQ+ysYh1o+GzaYZHNjtir4hTV765
	 ZHm/Pu3sdEgipJpPbagV3RZ8fZdXuAN3hHxDUFUYfsF9MvddtmfG+a/66z+W/MA9zp
	 cpz2WWk+wM/Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4603C44512
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451391370.11460.18075940750146224690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c679b43e0dc17d5176876de9d9db0cc86023c7fc787228934ccc6da0224db88
Date: Mon, 20 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784513913
