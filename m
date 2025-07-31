Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E1121D3F8
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753994394; cv=none; b=Pl7QNAoU1BExD+auJQ5oveNm1lagLg4Dpl+RriKaFn/SSchXOgnn4qtNcHB2dP2UAqDiAditQL2Tf8or59xfnuCdW9j0wXkVxDOsIFC7RRKU9zgIvohIZ9jaW2M5zst7QtHFEMbTh/Yd/7y9CR4qNydSKalGxcP3ciZB92MxDag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753994394; c=relaxed/simple;
	bh=0m1UOVSf3Qfbv5k29LbfexGZIpOBHkF70/rVyI2lXkQ=;
	h=To:Subject:From:Message-Id:Date; b=D63uhZE5F7gnVN9hO6MI23BJIDcVXQryvkdGSqRHK7AvWgvclrgqciLstJ2rPyM93qzZKPF/xZT9gTKKaKfh1DhvV5lQV+V1ceuHLmEbCr3c9FyH1GelcorHTZ7MVIbt/fZMbpj+KK1EBjnYfCDW04dY994Fu+3WSloKuuVGWuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFWbagYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFWbagYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A295DC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753994393;
	bh=0m1UOVSf3Qfbv5k29LbfexGZIpOBHkF70/rVyI2lXkQ=;
	h=To:Subject:From:Date:From;
	b=vFWbagYcJV4LzQM7GK8gwWv5IaZRjMyi2Ym/aLqvdsrFTNvIfa4oatrS0vuRmi7yw
	 2LErtsCZ55SJfzk8gAHu6E4O/mAuDtdJXS4dLZdlQe8K4bSRVKydizTbfywOimsh90
	 ndJYlTSNa1JBaGnMXJKG2J5kxXSirra8InSgcM3PH0de2wdqVCU1Sts1+11AxjlRyF
	 EUHDXotGxrctE98BWnM4722z8upbfX2hJT+473NsqTQK845KQUHlPMNSCfT/FbiliX
	 IO+Q49t3Y7wpe57/j+CC29+Z7ApHLNP467EhGKTKxHIuMzIQPFLBSeIb1ZOBqcRijB
	 SB6yjjuP/xfaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F812C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399439357.13939.347215176997999024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3085a91730f73b99fb621956337d43a2decfc59eed18c4e3b7d45896ee1135b9
Date: Thu, 31 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753994393
