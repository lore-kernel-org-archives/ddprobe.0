Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5985A48F82C
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788352834; cv=none; b=HCypDS38BHShJViJm1l/1jE0lGhaZkPOs4z3dl5rfTiV4tKrhj2ZcJHx6bm2aLModYgURzxvQ0nBYHLp9fMm/kNCdxPtIJGgn1RA7ZJ1S71R+0L/5pTzRTuCIZLYkIranxnqbErF0I7Gjoafx70IQcgfVjM51+vrBctVLwsQ8K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788352834; c=relaxed/simple;
	bh=67xRtFKOWoZkDAQxlETBfvDi+2Wl5QaJ6nOaduvz91E=;
	h=To:Subject:From:Message-Id:Date; b=sEsf8mUsf7WcPPYhz/gP1C/AKgdTaGPnDgWYqeOBFYMyVqRmdu1Dbi5lgrCFSMKypO9r2x6dMyOGxlrJLgQvdIEc6tqhozfmcCFekutdDctiTvrEGZQR1jHzZ9nABnDs2UXgHSjsxVVu/9eh+omgCqPA9KKPDNTbCFnr83GYCag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/FuB8J8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/FuB8J8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52ECC2BCFC
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788352833;
	bh=67xRtFKOWoZkDAQxlETBfvDi+2Wl5QaJ6nOaduvz91E=;
	h=To:Subject:From:Date:From;
	b=J/FuB8J8GwiQajUjd6aeHMkLu4RCDc8irX1SVCRboxsfJ9pc8YKXsEyN5K5j5ij5F
	 FIJJJXMAs7TpgfD+3769RSZve5fERoP4TLwBQJ2dirMdz5Wk3z/rpTyphXkdIArKuf
	 AOAVWYEYHHEXgy72u90F8nkh3y3SIKs7jQk4PpZve6NQbqzLfkqQfvW774KhvvZsc2
	 Bpy47pkfZznS6JseBEomuwLDWA73NSm+nK+E5k7H6ku0I2m6TNwob/aMTwuiSUKS3c
	 9p2SgPUVd/MEt6FWxkNL66bnVGN5PsHj15eRNbT6f5axjbJmK7VXxfFb833Kr74KMN
	 OR642vhojZUAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC61FC61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835283369.23598.17963964618759476287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3879a8253c2c6b4d1af5e49b5ec0dc6ef67be5f680623173badb6530ec35a809
Date: Wed, 02 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788352833
