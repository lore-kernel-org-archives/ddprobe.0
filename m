Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC633BE62
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711178897; cv=none; b=XwEYW3r0srwIFMZHzFaVVOVuqEwVKYqKvsqOxRszzDGOFQVieoDRR6wH8YKBkZwTTz7Bsw4qdxnEQuPtIk+vjvetAGizrnfKK3cfTYKvjHY5h4UoVD6inpFBvClh7Jbik16TeLacPhiP+dBsjGHx20AHpycmwWSdkOAFHaOt9ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711178897; c=relaxed/simple;
	bh=hhAN7EqeTuciNapmYFnXbb8/RCX3LZ/5A1w74+bC7Co=;
	h=To:Subject:From:Message-Id:Date; b=Oy7CgHj8Nu/R892QIL18NtPixO25KQTXHQV20qu1YVPrcuXoCHnaVW/giY/bThzJlXmuuyEoaY23KfkVTvWwozPbfIlvFT5/YohJ2JeYtdr3ol6oi9qrk20W2tZ02aYRRu1nYyOtxdAxSLibglYWDOLL3n2vhP3VnsIUwnSuAaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojE7PWyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojE7PWyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F56C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711178896;
	bh=hhAN7EqeTuciNapmYFnXbb8/RCX3LZ/5A1w74+bC7Co=;
	h=To:Subject:From:Date:From;
	b=ojE7PWyXJij4SnSW7CRZ/EyHQVKSD09ByN1lgOE2x4I3j8i9s6N6yBfPO8is5+6xq
	 WzHLKWxeQF6uu1ldvAvhgaXW5IJ20ByhtRb+MCkpDc/JeBjPEe1UXeZ+OURgLokAJh
	 XwmEClKlzdCNRiQDIoOd2Zh8nYKIjNZNXeW32+OjiPwSscl85J1yA0zGX7/WdaN/BA
	 t/gwhkDC9VEtdIIa0GVn/urQs/AITbAi+3ogwOmYqGy3ana999jnQKAf1exlws7MtE
	 O5v0T4J2vhyOBz3QD9jYri3AnIv0q+5DGhJj1/R4ahbC8yRYOnYkAP5kyIjsSUK1Tn
	 1eeuONBdF1kkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BD70C54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171117889639.24198.17849194088760937378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876f055c0f4c064d59c134a695fc65d8cf7ab15b88d92545acbc7be53455e73c
Date: Sat, 23 Mar 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711178896
