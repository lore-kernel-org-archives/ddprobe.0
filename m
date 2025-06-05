Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D7B226541
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749128394; cv=none; b=PKHPhU1D/0d1dfYcPf3Y+8ojfDNtHV7WDvvJAJXWtTc21Dpmh3quj8ZrODilv504usZW2E3q34uN/zN2m2ivcTi7GkGuJJKIRCo0GONtqAfuz7drxAPFV5BqmBuQ//AdMqNWP4T2PKXTJ5s3pGuQnuoFUAQuxinlgI+zSpOPD/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749128394; c=relaxed/simple;
	bh=Vw7+f+S88s0R8eAtlEvRFJ/h2SgRa0Qer0P6tIqs/hA=;
	h=To:Subject:From:Message-Id:Date; b=CY5rG8BaWFzb70H10++TWWSCsAexu9+3O58cnQNVtjeU+XuXWb6j0n/EToCSVJIdKhUylWKyFMemknnRTXlCWp8znrmkvLijMV4+ftuQRaPU0H1j44T17VZoQlaGoxN9arOioGHK+QrQ9YoKVyfWjyNTAsdQjk8OrMSGbequWY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3KXbQ64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3KXbQ64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A477AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749128393;
	bh=Vw7+f+S88s0R8eAtlEvRFJ/h2SgRa0Qer0P6tIqs/hA=;
	h=To:Subject:From:Date:From;
	b=Z3KXbQ643sy/c+8Pd4+ldpOpELpQhbA//E36+0detiEbyQQ6ABjRCQy7rntzlycwg
	 u5gIPdIWrvL1glYzOdJeMQVst9TmbaYUWT9M9N+8uc8f2MDT74aMG6b0HOwUQIjZBW
	 9Wtgrj2a0Q+GgFAlUXHko/VhduHZYZOkBH0MpDPmtuzo7uvASQUsnqnYjjxJSEa0mP
	 sfFgeSfMa5bG4L/8G2miwWowdt4ljHR8s+Gnc7tf4os25J4rXXV67QFockif+HP/R/
	 zhFnanzs0p44XEpMPGiItZPwD3innVIcVhSFRnpW/Njtfj8JfRI7GWAzljx8cw7R43
	 Gf0wd8snubQIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC36C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912839357.15334.4662886165657270188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8abd79934d7f0c1affd4a53f1756f703ad72f258e419efe8bd3bcdeb72041983
Date: Thu, 05 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749128393
