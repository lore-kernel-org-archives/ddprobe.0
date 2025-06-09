Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107719461
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749435594; cv=none; b=Docf6KZnIXRLfbhcDKvGFw6rgmFD9vQXuKiaEsVc9uApmjWUQjfEl40bVo6VV0flycv/RuIBfFhBLIMxM1obYqy0AxARuspXVbDIQ5seFtV2LxmMBdItZburzlWblFZKjawHHA1zZWZMZ3blrXrjli/WbP8QzhiGhBW01omyHZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749435594; c=relaxed/simple;
	bh=2UQgUBfBD1V0Su15ctU4g/5TvEKtRrQg7WmjBM4VcR8=;
	h=To:Subject:From:Message-Id:Date; b=mHddj3sHbAnoU0d3EiUw4IotCjyrGxt5x4LLV8gLvz7VunyWxwNzynfE/JbSx33Yp8+P4Sf8ucUTI6FQMFKuAq8BRIIbA100P9Dwh+mkec4P2ACmLH0Xg8dSntDJStbalK489G2PwY5Td7i2F9SoAN7bgBaXXcjSBuKwrU1OTFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AV7WvHFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AV7WvHFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FC3C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749435593;
	bh=2UQgUBfBD1V0Su15ctU4g/5TvEKtRrQg7WmjBM4VcR8=;
	h=To:Subject:From:Date:From;
	b=AV7WvHFltfvY95THF/sEOUzZWaOevpq5c8P/CQNK2IMbP7NW41IHDsmOzWw/QIFfp
	 fH105w/fAVrDTs92z41DD78VbHqwrDO1XRFB1m8pU+d0r0kJ4QBQ/7fwT7nzQrhZWh
	 iFHzdcYxJkPP+i/yTujBIOKOq0mL61lFmYiAv7bWFxkQ8UlTOIMgMk6sUvEAcapSe5
	 BdRiQy3L9Ycaft3rcutu0qKSGrC9CfBx/8PD9SdhJtVc20g7LDQG7I2nhmv2BH0ax2
	 gSEjnFwz4u7TfXZFjMLFMn1wY3GgOo+G5UTXzQ7cx/q3AUxZkoNo2ls/j4YzWy+atC
	 hnQhWUxBUYRMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C3AC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943559357.9927.8003073197934425574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1ff0efec15b5181eb34eff9aa1fa0d8aee5bc4462f38b84c7dcb93a8359a9f
Date: Mon, 09 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749435593
