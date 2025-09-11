Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2103B2C2343
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757623194; cv=none; b=dCNAmOiodWjYt2sbcBHU5hPqLmWxA7nDw+u9kRfYP12W5LqJknFYkLHIzyUoOpofqX32pVyFRxeTBc+J6qzuhSVcEl3Ljh66AVGU5owhjTlxQVLRKyjgIqNXzhrhZyf7EREkG2x+y96OhyURxvm2sF9m/bCyWeUwBbBw2G1BqEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757623194; c=relaxed/simple;
	bh=ezmSm7ID5AVZgZyws6Jl5JApxcxQUJTQdwoa+UFuW24=;
	h=To:Subject:From:Message-Id:Date; b=Bzb22vypXhDbO66OpVrzA/oiitmPRScPE94MkAewpF/t0DOoH7ejb3lzRsfJjQKKwRakw8HUtiFrTG+ZEbPVHImwHzo0+k33znT+T17BicgRsnEGaGNrNLDNdpwdJ0RwxKVYkCFzq8WYKtoPj3kkf7pvnc8bRGrJ1qeY14SGVb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0DdRWYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0DdRWYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F94C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757623193;
	bh=ezmSm7ID5AVZgZyws6Jl5JApxcxQUJTQdwoa+UFuW24=;
	h=To:Subject:From:Date:From;
	b=M0DdRWYL3hoOxfUkhiK9tK18nrY471Tuso5pW6p/50qD8YE/4Hsbf+pDosS0PutHD
	 yJEEmHHZfPxO7DFV4hV2I4JBy2y3zIUfCWaKzYdIvFCUJSTNGliQz8qtr6QdGtbbbY
	 v6oz0YdqNOOI7OWt94rTzV9BNaU8xhquvHqLQQcl0jvs5mm4d6Its2m2U840Tf0HAe
	 QwidN9rB28fXtocPeDUbgZaXSVFzXFcHkUHquo5+L6R6Yz/ZieCPiYq5Dr/ffNGPIy
	 stIrWKLfOYckmZhWAlFAV+p6Th9QsVhZlfofrseBtvHoNdRUAG5GChW8wbJZz2L4NP
	 rRyx4VwVbi0UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90899CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762319358.12640.2401215290379772988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b5de637fa5677be0a772527df20e5c0c30e0c6f232757ba0d179a034d0133e
Date: Thu, 11 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757623193
