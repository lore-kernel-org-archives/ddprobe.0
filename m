Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3090926F2B8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766059434; cv=none; b=AenArnk8AE1zuK7Mp8pMgaKoRX9GypXgB34wHhgKGIytyhRCuQiJzbzbA8sZuIbcifWwmKTKhxTj6zlwqubk/MKZDP6oNU6NFRi09Ip07P+BJozfYLMxXvZmEWnnluVsLOQi0PSL/kKUhZCBxl034coJfPx8ivTJMldBSU0adxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766059434; c=relaxed/simple;
	bh=mSHvGfrZNTTrjYb3Uu45WTmgAuS/2OQgFL6OKVBzDWA=;
	h=To:Subject:From:Message-Id:Date; b=IG4MU0GJ6d0Yb3A7WR0P/lYOoYra5qbYdTAX9tJ759DuHf1JS4JSaB79wqzNKeF1J0Clf2M4YFamo1KIykGIl8bDGK+jXW+81G6/i3jwd+QRJWtH6GHYHmDIff9j9cWrEWzHaU/q+OalDDuryhiUf2p1nBHhXJwW+zHsXxXS8PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAjfgSSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAjfgSSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF58BC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766059433;
	bh=mSHvGfrZNTTrjYb3Uu45WTmgAuS/2OQgFL6OKVBzDWA=;
	h=To:Subject:From:Date:From;
	b=sAjfgSSN0vpCe0A3NkUY9ixORaN7568jVe+zgSub96GXMPsZ5r9HeLExoSIBQDqmM
	 FkrfUCxrMjmOFC/rcWirmikT6sDLBxLhaRE6M4pBtt8e90tt4C3CGeu8HgQSaFTUj+
	 s4q0FGnILmAmSorRoUELhCwE5KdelNQRlzz2KawFHd2I0SezRghFLiA3IQ+rAh1bGm
	 UJ08GoZd3IpK7P8TW0FN/Uwd1XaQwGAv925RssdZiSLucuCAcck5sie6f67MPCa2UO
	 yZvqjt5OJdT0hEV7BMEbjnLJyWQTbfdP/XPMErV+7q4r3Y0neb6BG0e2EiGpveOfwU
	 CiQfI4h31qCkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC16D6ACEE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605943363.31375.16177399741156433347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236bbce6c53f6adba45e3d2875b7cc818c8cd42d8b890ce7ecbfaec239ad57f8
Date: Thu, 18 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766059433
