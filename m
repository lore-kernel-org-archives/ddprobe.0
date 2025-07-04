Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D1670831
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751596195; cv=none; b=CSgYCAlbS9s2+ych24lX7GLuRxESENr8kZUX12dedIgmc8a+3U8tu8I5ToBgVML2QiSD2tHlXbRVbMwvSIBzehIZh7Njsm14xXK1pheF85/j2j8w2fJIXUTNnikoAR8zjJAGlarhs74jVYYRi5vZ7GBcft5M9Kakdbkb5GSUnds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751596195; c=relaxed/simple;
	bh=6faco0ut8Cba+kKnQTooKbNuFoGS0m23WVBhb/T/Xvc=;
	h=To:Subject:From:Message-Id:Date; b=gRuwn6j6PX/pIPDBgSQxiwphnYDQLjvt3HZx9a2BKp9WsewC+4+JPd10QJtT2g2pqZ6i0zpeJiI2xLME+Xhm5Pgz1frjIbvFfA8HIhdAtxD9NCziluYS/Dm0N5SiWBMcG+0uA4jCobRoN7N0EVQXZ95IESGd4oTAN3nqWxTOLVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liix24Zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liix24Zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1085C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751596193;
	bh=6faco0ut8Cba+kKnQTooKbNuFoGS0m23WVBhb/T/Xvc=;
	h=To:Subject:From:Date:From;
	b=liix24ZlRPTHfAB+GpDcV9Symp8CHda+Ae4o+KBBuIC2RimNUFBkiflXVoDA7MmZv
	 WD4/wUJArpQrU2rORk6UANcq56ENtMTwPBpW+4+VvAK8NVlglyhm0OfQy9DJXrBfF3
	 q8UEH/ISHXeF+bWMLVNfpiazqx8uvQD4yqs6HsiZhJYjx0PJCcd0wyj3cZAVTjFAZQ
	 1P7xRK3eY9o9dPTlm8sIouqNkzBMwNWOKPMk+wAMn9kpi8KwHdtwEYDGBPogzV2+UV
	 8omZfkJLYaU0Ll4dhLgVgri8MVb4w6rgDtrTez8hvkTlIqi1x6RNWy8bn16AQf0Vkl
	 g9nF8x/1yU6gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC32C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159619357.13265.1226387992007393342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212e0c1fd9919522a1a84f58d950c4357e73e2ee4fa2517115395b2f9c7ad31f
Date: Fri, 04 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751596193
