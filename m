Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172EE72612
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761322194; cv=none; b=TCOD2kewab0n8KdysArVZQlprD3In+6FGM07weiHeQtvWERFtmGBodP8OSNeTii0V3rV1IA7MqSZVmN7Mvur04T4pFW+Azsjh8MgC7LcRvNm7ylMLbWHVkusTaVyiPdcHAaFNQUhotpMKNCBA92IdJE8/g0KH9J7c3+LB+wyQlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761322194; c=relaxed/simple;
	bh=RRijAeRDCY7nK/vjnJ2600UC0VUZTvNUYbw5GgtxRK0=;
	h=To:Subject:From:Message-Id:Date; b=sAQqxbzbjbeCJuThN/gtNTEfNAxBCVqFyZVwb9Gl8gy1METRZBdmpWaVA0lqbUPNe1YLCBleIM4fVf9edyezv3FyEe5j93kCd4bExJd1Ba2CTHo6GjOIkac0dwmkW024OnRpuzp7LJMVB095sReXi7XO5vyZJ+ya2OZCK9Y2T1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkrfFyQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkrfFyQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CF2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761322193;
	bh=RRijAeRDCY7nK/vjnJ2600UC0VUZTvNUYbw5GgtxRK0=;
	h=To:Subject:From:Date:From;
	b=BkrfFyQKNsrKRTZ4B/xmK7ve5CD40DhgZlvyUpSIrznyF/IrU7xteT31zIvT6/oU6
	 9wBVJD84PNt7TSRHshF3blqY4RHzSbB1OuzjxKgZWrjVTEZDlwkeDXHcPAPETD+CN/
	 fvLs4itvZFYw/DpuGPyt2KsuhVZWTgGE0luO+Yp5ZdsdPoS8VZ/ezkR7RhVKdHlO7e
	 /YmIsEZGw8J3p7/zpJKuPhwIgGSPmGFH3LwnknrbvTCTyJjRGF/xR60jum2Jc1RBcy
	 E1/2cl7EdwD58PANv6iMyXPlmJ2eXMLkaZqwr1WoPtleNJriIMGVJE+9oH/Frv0KeP
	 FyZm9txp3c3wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A57CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132219358.20101.1210482212207205888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2fe21fd9ee022c67c01dec50ab7754db618561bb5f0a9611a71b26e76138842
Date: Fri, 24 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761322193
