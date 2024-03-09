Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0364D1E894
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709995697; cv=none; b=jzDZkXtnOMBZhtQzHqkyfKkXLP4Calzk2UOmm/nrymwbc/Y8I9aFq4iHDxHxP+M1EOF4i0QhYWh2n4QTyvLK/jsaSIDLpHEs8giUY2f2pzIpTStkllvBEqaYgtlIElU+aH+iy2IZZrWTjW91cbIWM1vwzUzcoi0rsy3eDQSrcX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709995697; c=relaxed/simple;
	bh=b7AdS/obdlaA7S7NoJbX6HtqT40FZ1d6o+Y80Fq5Zrs=;
	h=To:Subject:From:Message-Id:Date; b=o85rpdYOXWkZPlPA4RDkCuMwGadUvU2/Az4WRhQn+pl9L9bvjWfWPoniq9irzqo2d4QMnShDaBI1IAPUzZyb3j1EbFsnQV6lMrXL8YmZJuElUK/Q/NGatSzCChJFi6W8t31RYE5WZ3D6fGvIYVle5QMv6tpOlIKfZ9AJ6+sNV9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmyQv78B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmyQv78B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7728CC433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709995696;
	bh=b7AdS/obdlaA7S7NoJbX6HtqT40FZ1d6o+Y80Fq5Zrs=;
	h=To:Subject:From:Date:From;
	b=cmyQv78BwI17xJy5798IddoAHr9rxGpIQVAY3oJC9YpLWBP6RUBZrRKjWlGfps4oh
	 guEV/I/NDwtnJa/0j9w6zYAeN1IPqg2MaLswwROv/9V4oKwg/i0UStpKA8RpirQq/B
	 TCauX7txO0NZfbZnJFQGIy6HXcg0QryRpl+Wggo2jc8UsqJXPzVU7fcEPwauWEjq9d
	 97ysaOwZZ+fo9bcpPUIR3ajbgsZZWXwaEuH4UeNnQi8cSl0dF1z88sP4Z2IIB8+sB8
	 eI8FDydeAd73RcTpmUuQaXZWgml1QKNLitAwGvdt29GMNxfak0n6iR6DgyzQM0lR7D
	 KAYLMSO2omUJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CBB8C54E41
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170999569637.26624.11674478049259515555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94768b84581a3434155b6870c1741a2c14a5dfe575144f1470186b2a2793c91
Date: Sat, 09 Mar 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709995696
