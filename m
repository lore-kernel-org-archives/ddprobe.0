Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1214B23D7C7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769585034; cv=none; b=OH+JsTMfhyYDYKLcBdpm5ySxuIhY0hnTaZHDC/bSyO9PTtKYEhTYgJghB7AYlElCNzN3k38/dMxkYMpWsUqsYyf9zLhRB0fGgg8LAxoyKebaOq7WeeICllGkuokByldJJixapcNHEPUwxvgBXoPwf9auiMMDsB7FS/7KZRbmGeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769585034; c=relaxed/simple;
	bh=lDOSUMpRWr1N8qizbMK6u1R6QLJYQR/uWBUMd0ywtVs=;
	h=To:Subject:From:Message-Id:Date; b=KZEY1MrskwFLvmik+iGf7Jg8SWoJkJn+aqLMqx4Dl0OcAaLP+rU7SgxONswbsG+Q1M1MplmGrHzr5OTCI0fLanU3w1LlyVmWqZ7FcLIdAKAQk+20K/hwbdVA+IZOS8ASqZdx7/JjWnLGDn5BVmI48lLt8AJhkSITFq2NdTCETrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cP+TnabF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cP+TnabF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3195C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769585033;
	bh=lDOSUMpRWr1N8qizbMK6u1R6QLJYQR/uWBUMd0ywtVs=;
	h=To:Subject:From:Date:From;
	b=cP+TnabFUzkp72yr06JusFGH0LpoGrvpT8hDARr/BdOU1ArCuzBZJW41oNeE6U4Jn
	 0SIsAtGXw2zbyLXXRsUOsFxDBrua4KOpfUjhpnxRD2xDvZ0D2prOI/H4ynTCxYXza9
	 B8/Pdkquo47c2r2Qh6H2h1d5vzAO9wA5scOrIuDLfaR1y5NF24IpOL29naAo+Ic3YO
	 fBxns90XhLd6qdvruS8EO1DPvkuRSoI5CVlcc8mBWcGfJ4+8BR4K6IgcucLJdGXWMq
	 xYcCS3O2mjzPsufHNO7EqkF9DNe/d75xJPaukRU2hY2tKL6jvZVnIdo5NaV+1LZG8z
	 jjOz/m1+Nnw9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC53D35662
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958503361.3394.3320608893667131063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4288b405bc3e604e8b08a185ad5bd144f9e5261cb07c266c9ce9a57ae9c34b87
Date: Wed, 28 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769585033
