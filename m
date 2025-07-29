Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2072C186295
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753805394; cv=none; b=NwLj3OrwYO0Q4eRfSSLqtqiec9IsVZPxFG38naXTLgi4IpXB9JddbD/WVBwn8FfPwMQnn0+rfFGZyObE/JWyKdGSOgdL3SXLRa1y2U0XM9ZMZM7MqbSmphp/HmS64OWQvaVrUC6uCejjVQtiamk3w4Be0jUtl2QDEBmj7wsGQbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753805394; c=relaxed/simple;
	bh=cATqI5SdqmrWjxwDtY7GYRPSTRoXKOgcNYBEDseyLpY=;
	h=To:Subject:From:Message-Id:Date; b=eu0UTBCIQItE7YXGNLsTK7SkWHvRZu0zIm4jnpfESzY9TP3cpsf0zFqKoDVw/DLiQBrnqcNa8VltDDDDKqgSmjqMU1Ad4QiIY7q45RnxaDc1qwYrT44awZcx188rwp8+4NyQ0yiV6gEBnKgvYgG+ODmkQohIClZuUEtGC/42B4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtTfWTw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtTfWTw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8738C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753805393;
	bh=cATqI5SdqmrWjxwDtY7GYRPSTRoXKOgcNYBEDseyLpY=;
	h=To:Subject:From:Date:From;
	b=FtTfWTw125QVgwRe3+njLk0WgO/4mjU9HfzNlgkhqt1b/c4ys4ESOz6GEIOaMyogj
	 GOMHakGTVoKrAeo4Xo0J1EnWAjFM3QEy9FhoBxHzcy57GC7kzH2q1K5vdts26p+SRM
	 sdx9tF8l1PX0IRHWfsxRwQQjFHJNWtXAoKMPQK01rMBCnOX++PqJBWxFSz9yEmA7dB
	 tKjnXA/i5z1gxTzz3y8maHS1AoX4yxrrq4ZrJfugOClY+YlXgGWMpaNmz7xsdAoXeX
	 OHYHmSNSPZhqqTdr/Vp5G0suzoClrNnRl78kqvMIaJANaVAPisevFGzeehwdCgzvF/
	 72gzdoTKcn9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F896C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380539357.5311.16300534198255350158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa5a2d8ea811740a539ca6d14bb4c8d27f7c3fa58f2066ef360e20ff32c4d77
Date: Tue, 29 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753805393
