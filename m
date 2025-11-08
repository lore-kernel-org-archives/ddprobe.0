Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AE622D9E9
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762603794; cv=none; b=oOk1E/OM72ctEGUPU5qfABq0EGxxW4KXQfPoPoJIAfPCGGa10eWtcwdKbXRIUZRpJ4UPoN1PrKrF5ZhU6T7DWuH5CzIvAruQpjWsw2TQUyBcfSL99Jwa2ynRG48OTnb8pT/mino05YGNMXQkDfaPxoNroeqSHEqqZw71/lTMOGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762603794; c=relaxed/simple;
	bh=AbHjtG+CMWcmbRkrTfXXsZ/33EO6h09GneYx/DX13I0=;
	h=To:Subject:From:Message-Id:Date; b=dWmyemZ16m28MSgtjV4T34pqyA57Mf7c8H8NUGAnLYHkOJ2wDaoIsmBJIradphH1ZA05XLXKT0dEQtogKEop9bOBXdpLjcQDHMCk45C9o13KYl40x288hhkzsoQhWSu8YBv5kaS30Fqsp0RJy7O7LcM/u2VM8jOLNlUiQCeCj9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiVLlOme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiVLlOme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D32C116C6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762603793;
	bh=AbHjtG+CMWcmbRkrTfXXsZ/33EO6h09GneYx/DX13I0=;
	h=To:Subject:From:Date:From;
	b=ZiVLlOmeC2xEkAkdYy/8/UXbd3Gd+zNGrmlEpcKOSMlhmi6XD+BUYYEuBlNgsJHjv
	 +Q+7t85LXCgAYjMGUlHSQGkFu7/gnkqJqN9TmvKMDuqHR/NdjE4wOxxOQp5OOCX1fs
	 jQry4pRBz+4cdp2csQTBzBvhD4IuHwMWmdekjMJp2RnpbMnhFOHnOAxyqzuk3QvPhd
	 mQ7R2Osl4d3vKkGs6P0lRrTFL6eQ5XwSUOnsCJ7oy1RiguXVdxfZZ5XPruLtRHCWxS
	 z985eFVmz37tkT8TdsyTqXfl+wBAOxjw7O/nY5tJLeyeYnn5Qx0l7b2a9uaZUqKXLJ
	 xW/+2xMqUSKHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C03CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260379358.9755.15905357960251910675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c5a1bad5f86dec4416a5732b305565e4727dab503115f2f8ad0ac5fca2ee5d
Date: Sat, 08 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762603793
