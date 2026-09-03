Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBD843F0A7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788435635; cv=none; b=f2atTsjxlasxB9+HdL/BrZEesl5kpuD8jFR0Hq6edhvBj6CnlgkXoA20A/M77NWAJlNeQ8A9XCZnieDFryiHna1R5nadpnfd8RQIuzGiImsDd+LtvAjP81SB12mPGIhlOJSQzA94q3A2YavbO/zM6WxNn1WaQxpIgvOuah7sqRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788435635; c=relaxed/simple;
	bh=pczv2qZqCkNoVnC/fK7Of2uNJ/ogs4TPG18eKPu9wAk=;
	h=To:Subject:From:Message-Id:Date; b=XLY/Glan7GmHplQmTb7fRiZ2LdXFSyHB8UKUmm0PT+5YAbreCv4RFHKwm6ermhty0MIGkaBOmquPCc77RVZgqBS/QpXiPByLJaxJhR0Mep6nHLJ3RT6EBf0n7IJrALkwgnye2LuXAUEMyGSZOBUG1q846spFZBhxpJ3Rszf6ZAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bv1Ftqq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bv1Ftqq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9D9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788435633;
	bh=pczv2qZqCkNoVnC/fK7Of2uNJ/ogs4TPG18eKPu9wAk=;
	h=To:Subject:From:Date:From;
	b=Bv1Ftqq/OFgLH4xPEhRC/WfK1F2d92AOO9iqzjiswqW+ecdaEeqYsTWGTjgfZUjtm
	 OxwekqxT74aAzAixuoNpPrqjtYXGtVlA1gNlXRjEimmlemTToU7I3QRtgtsWa5tgKY
	 1+x173mPzp3282rGDdPy50e542leo1ZdKykfCpA1Afbjl+wef3J2X9gNCChWWAFudr
	 LB4PHd1Nd5O0icoocjEQg/2mqaiQbftmF5B7lpMCF+inPC4dBvjjRd1JKbpvm0hzjU
	 qmL4AyoCwnB6YtVbS7OwxOhIuimmPTAvLeZ7+Mf0g84d5RKXucQvr6ZIZe+OhZzJrK
	 Nrh61b1Ty6+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB53EC624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843563368.19457.4363610901156237509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c683872ee36a6675e8ebbd3ad246882a8ebe632b4f0ef50d4aee05ab72bfafaf
Date: Thu, 03 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788435633
