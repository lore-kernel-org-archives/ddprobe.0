Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F68F366055
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781602594; cv=none; b=YNlw8qy3HJKmbdbdRpv6L5FpGh1tVALPFx7FuOGpOE8wEFZzNe1bI8NNfO9zb4j2iJydOeBEVCnFefXNmQyaDHlPdAt6+KiZ+Emvcfu/6yfS3uIcZF8llA++JIp3wv2f18Ge7UH0kC0CmCCyiheV3VfMiQ7UTcaymqt2Uu4OSZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781602594; c=relaxed/simple;
	bh=iDa16rX/sPmf/Dy3PxHKYZd6AVmLKm02J2d+wnxDFv8=;
	h=To:Subject:From:Message-Id:Date; b=sStSE8KhxaFIUe7nVMMXVEsFjz1AQAwLz/sujfNPEKLNTlOb6PNGIutYtuibLVtz5Ucn5io2T+1u6rRBNI3iFRzpzwYLKPCjIaR8sQ9HLExRTkYVLc6kIayx7ikLluvwv7Q5KvkvuoZ4rcSQsNztlpQUtHlTCi6U5kcoxe27p4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+ROl711; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+ROl711"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C5EC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781602593;
	bh=iDa16rX/sPmf/Dy3PxHKYZd6AVmLKm02J2d+wnxDFv8=;
	h=To:Subject:From:Date:From;
	b=V+ROl711S8O2iNDN+PeSf7qHovDxd7SGFLIHhC7nBw+rcf4TVjhnN//M9B7Y1/BjM
	 CBfhvKu/0/ErNFUIJ2vp6rQmnxTvkmWvzYUpSDHKMYqvjF37yjaTjfN8/gQzlN2djL
	 SD5javwwVTFgnZHmCQWGDSONCeg1IG0oAVyr/UGmJxhMsHqEKmcJqMP+53ncU21/27
	 yFnhuozRTq8n+hcvkrgrfCnmLbZPmYIPyUmiwcIZc6SG7LvakGCK2/S+E7ouNyJsox
	 KjGONETya2paAcHLox9Ozr8QbBKQwU8jS9+vnNlDNbyk353HZ/TzichMbtC3L63uyR
	 NUtxgFYdf089A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2F8CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160259375.14461.8459575353765307594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef47226bd8cb0ad9ad74e582872f314947cd68a5f4ebac2ed79e4aec2e166e91
Date: Tue, 16 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781602593
