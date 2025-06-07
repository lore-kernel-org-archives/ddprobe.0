Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C93FC08
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749322794; cv=none; b=asWkKYXleiFpdEX3ReehoGap8pS6RMgH6veq0Sh/zL3BoZGh6EP10GVR8qTdBQB7kkE8nvHVobc34+naI23NQSqj4yBUtDKyw5glLbDWe++BJS3iCE1pLl5Wr+I2BG9F5UzDgXTsIPEkK9hes6C+O93Wszfzx3z0H+m27JOzerE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749322794; c=relaxed/simple;
	bh=die/A+O7mPtTM3mITsXwgtQY3PlQC5N1vfiPe0cSMec=;
	h=To:Subject:From:Message-Id:Date; b=QvCPIJ1tDE2V3eNB6fklQ25xrXvnwaZVwv+vJVhh3M7KwHyP/opx+k6SI5tJmr00592WeWEgArlwzI9EoQNbmjM94lUUZU1UFZm2SnDCj9HpoFBf2WjwZ/cRPe4gUAJQ6YhojGIUlHENrra96KGgiqMGCSLt4kYcW2Z1SkNM6a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bb463veN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bb463veN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5DEC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749322793;
	bh=die/A+O7mPtTM3mITsXwgtQY3PlQC5N1vfiPe0cSMec=;
	h=To:Subject:From:Date:From;
	b=bb463veNak4Tu9D2fjeHfyJiiIl3KUE6XJ4QvOmmOYyiARSik5mR0VW2WoBKD7UY+
	 92FkxvMZS7+qQ4PkDbzi2nWYKW4VMck193ggvZ5eik6qApFcHGhvEuvWj1abS5nG82
	 eFp+dohS/+afwB/lbcmtCAcpMLYyOwOQA4c3/A+P9ptJv+UFDz/SEthT5NE5dMrTBu
	 9iqVH2rLuhq9yGLC4dJDWgSya7y9TOhepcBc8YwEYafDRflI/JOl0pA6W2FRUl2/Og
	 ItsoCO6TmAcPdA2EIylU7TfxbEh7PzszgXudgMPfbfX7FERkK26eGnSwedVAPlqC2D
	 InZt/rm103Ckw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927B2C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932279357.24064.3988105763838237997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0c78f502c1abbcfc6e691fb76ff58c3b152281db41cdaf19ca8f0b27d58aa2
Date: Sat, 07 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749322793
