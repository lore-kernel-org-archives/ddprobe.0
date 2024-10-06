Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110981CF96
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728207354; cv=none; b=SfVzNzNJV+uA9vYPcZw5Ik0a4LLmxnvgmeNG4Qy66U/LnXnuWrnROXbV1zztm38y2OcAffizKNh1udA1OptQOe8rWz5fOGvriHrnRt/UsOUmtkoc47U48VEt/I4nTf0YuXaG2dwialuqAZ6R7XKhHmE2kBOMZEVQdP2f4b0uEf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728207354; c=relaxed/simple;
	bh=ch7u9GuQsa/diC9h8ykSP0Cl9OLlET7BMhJUuHMWuac=;
	h=To:Subject:From:Message-Id:Date; b=hdJ5beAJTYbe6wE2uek8kFKvr4J0WOprY5wcHaa5WGuAqES/Czq3tirUiKQ3kcjt5b4TWLswWKIUIqo2jUW3hlsamPpwRGNre6+cQywbVo3eJYgUwfDNYaB2uysyhgKAQ1qVt/TeTnvH/G5FEU+YiRMxbGdVTIpZ/++jh765TZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXOUxQxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXOUxQxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18ACC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728207353;
	bh=ch7u9GuQsa/diC9h8ykSP0Cl9OLlET7BMhJUuHMWuac=;
	h=To:Subject:From:Date:From;
	b=NXOUxQxvU4eCvRONQhq2zTb2j6oAnExMDt7SyO47eeO9S/V6lYlM5Zr8RTYOQA2CQ
	 7ysWhGgcSU8qVQ26fz7vRyftWiS+f2Up/p+C4AVJbamv7I8z9qZrhCCaqDQt229bU5
	 Ojh9zK+/w0Clzl57ISN1CxEj11YzNFfdZZTpx9eD7pSoH/oTAz5/5/V8J79pQfwkaq
	 H4r97Wt78rMqYRoE1nndWq7fyxU4ui9zEYaP29740MIIIOEpN4ElpYDFTSKdMWNN8m
	 sec9YxOzQgg2ICGYfp7tuUInvFQOX1XJkxlAYgGPdbfMKSsY464lmhRFogO4ZY+Csy
	 rqMt+ZGc+3mCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92389CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820735359.28917.16483937221852375659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a450b3faab41c8787096d0720ad168b08af0d64657cf987135ca3d99817f7e
Date: Sun, 06 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728207353
