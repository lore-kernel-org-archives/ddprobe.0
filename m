Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316F419ABD8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742937594; cv=none; b=HjkCOBNsmyZSydybr56lwFtNJ+PNl2ytEAjB3WCfiinQ1+BGRAEwjIPxqGTn3z8Fro+Nm4xzUMPyJj5xrnxkPf/FmBpxVhcffGCGCbYb2SwHaMLuuqQQ+5LTIbyaivDyz66I2nsAUL6ArIi469L51VtI7R9xYBXmKtlm2X1k91E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742937594; c=relaxed/simple;
	bh=qmGIaNTdQWK52BMnEx++v5L8nma0WIFg9MrZ1q4zKyI=;
	h=To:Subject:From:Message-Id:Date; b=Dob0P+VbCgMFyYnodU75DTHFiBO6GG7qN9QrCZ7sYEeLSdujuUwPWQrYswHv+6XN2Ie13m8XkrYkMqlNsVWONQzC8/h7k0uj2kgKdzVdRw6NX5LErifqjdudbdTq50AvHgU6RR4Wk32qZoWazuz6SyirAtoetwgg/Ez+gJ4KtZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjKMx5u8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjKMx5u8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B042EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742937593;
	bh=qmGIaNTdQWK52BMnEx++v5L8nma0WIFg9MrZ1q4zKyI=;
	h=To:Subject:From:Date:From;
	b=hjKMx5u8VqeqQcjSM16u1fuJ6orx++AJfieeMP5nohby+FlxcgyioTJUXuswBr3Gf
	 mvakz9Zgd8Yg7+2FACWRJqoRM2iqCCfBGc4IVKmYyP+YwgSsERm4KZhgL6ght1biwB
	 kMdTBoIL4Z/rlKMLwdGkjzv7ZW1mf+ldOcL676mhbL6sGEhYPr0tF/gMvJ4GYIspLV
	 jbTRxjvRMyexSl36G85vuTZb3rWBZHCwyI0OP4wDY48yoQdUrgNfXmbCSfngYw3Kr6
	 5XlNKunqxEV83pl3t+1EAFD7DZKTO7J95EyJOX4im0FdMU6Pu0qgF1+CrrbGqQKJWB
	 tx8ea8cFEusvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BCAC36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293759362.24520.6133864339583515048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bbae6e1c7f8bc24b75fd099fd8d1bedda36c8b1a065f57b74b6eb9713a6f843
Date: Tue, 25 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742937593
