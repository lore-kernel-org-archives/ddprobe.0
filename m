Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55ADF364E87
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775851654; cv=none; b=LgEAbgaBPSQfFc831UWVWIy35GdinnUk14+oun2KTirrzCVPhrHCpo2jt5NZIFsEPPcRBdwYsLmhWYeSi4wTRC6zJl3QnW7R1A9rG1skbuSpWloxinSIfwTJ4+UQr2fo3FJE9cPApb2ZE+KWwq7O5RxDBPQJfIPzKCLk4Q2NEvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775851654; c=relaxed/simple;
	bh=/2VQdSdYdfJ1N3ywM7/9N648m7+Rql/6kQw4RKwIX5k=;
	h=To:Subject:From:Message-Id:Date; b=bFuzIPwQT8sk5o9a96iahhLYVcpkqQAkYQTov8AIRrmmUPjNjc8zm1iX5iw1VCJVt/fd7XNUm5mjiW+LPQfClCO8K+K5E76bi1EmQG6SVQeMdkuR6utWBAMGH7IWkgX8urG9KtoYn84Lt3vrkHQyCwKmJsUri47+Th5/gfcBjbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWWE6th7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWWE6th7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7542C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775851653;
	bh=/2VQdSdYdfJ1N3ywM7/9N648m7+Rql/6kQw4RKwIX5k=;
	h=To:Subject:From:Date:From;
	b=CWWE6th7+dWAM3Q8QRkwnf1ACyEOuZulVnMFhG/1cq9+Npr71dcjqyBw0WXatV80m
	 SI7DcI64LHxbU0xc9T1uNIe3ja0+nGSsNSqIYzQQOZwH0BqZ+agwQ3hOHhDIcpQrg7
	 /VII29Pzal0LHRkA8wKVthY3H/pl0kRqv9gaGP0M1jlcVL6hKfONXlPFvyLKBLAVtP
	 KuIH3+J2D60fDox/+PCteVSeot2N8OE1EunR/fpfjn5BzhegamoSsbHmvsKA7LmoOn
	 kgU/Rk3c212gu5Pbo19GxDSKyvz/hCkic2ZhstAZmJm8ldsOh09I60hjmVNGc4tNCl
	 Y2nCx4Hbg65HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF50F45A0D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585165374.9746.6482726679043371137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83e20cad154d9968c020bcd63f10f9fa51432f923bb13597fdfc23c62bc118e
Date: Fri, 10 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775851653
