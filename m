Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B412FD67F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765449174; cv=none; b=SAwlm+3g1HAHCzEgMesY189v4aDLwghCWuq5/iYCBM8BATLMcGuoYVNOLdcieqUxcXr4pMyBVota1pw9kv775c+NcwJQz4jzpW064z4KlRgoxJKD1b1OnWntyFaj7WZqjihlDgiqydb8Ubr0QeyEMTQpCDKXKTlC4e61tlTQTog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765449174; c=relaxed/simple;
	bh=cGBjOEpzIDOofNAUsBRVz4YV8uK7byRW8a7gDwB/tps=;
	h=To:Subject:From:Message-Id:Date; b=egJlDI8Wibk+O4eKbR76yQAPF240zGYybzvW1f8Rq1yXLHiZ3YGus5mWpx3H1uCz41+v4fyJVKCiUE9bSvcNkv+lBci0o3dlDkp/A6w4CX7wXkfP8xzwsOSl5S3jkvNhIg1MkxuGdDv2etUwiNN+8kySMapsmaz5srBjh1fHOfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIa0xt15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIa0xt15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765449173;
	bh=cGBjOEpzIDOofNAUsBRVz4YV8uK7byRW8a7gDwB/tps=;
	h=To:Subject:From:Date:From;
	b=uIa0xt15yGiX28elDgMcJtCLcbO2y0IukZ0ffkNSld6b+uk8V7ErJP7/xeK1s1Qfr
	 eUS1E024SN7ut0ljYn+fye90NHOCwsuF48kZKO7T37AZampIY8v7ykIOOVVeAXIjdx
	 c5RP6sGNBQeMW/+W7L0kPMzqJiRZC1XeZY87qbm1N78RdkDwepcSvAI2Y6jbuZFlah
	 ESKywftB3upGFl8oZ0HI67aq+YZeOT14tLoXk+vbI4PkAUoCsHQH/9SKpopJJk0A9Y
	 RaLefIjfYkyOqmzmsZJpaehDkJitqpn/68qyS7AQZSKBp6T/UsNqPrW3VF8TOQ0EvY
	 b9cwL0z2vq2cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F13D41C14
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544917358.7328.13374940000265475676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05428606158c3962e6f09af6e267684b4f0db8717e05440289ae480806e207bc
Date: Thu, 11 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765449173
