Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A777E772
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715310143; cv=none; b=EOrGicSInG+f3/Unr2KoToEIyMKf6x1qY37QYrtbIyiwLNA+a5lL3CTt895xdycrgXxvjkvkLpj2eOCp7NtneIJhevenS4nKdZQzNoyUBq8x7gSxFkrGytbBIQo6S7S6U5euYIa0urVdNUB070KOtybgmiVTESxudlEyepko/5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715310143; c=relaxed/simple;
	bh=s/dR5H4+wgbtaPOfb3UHzKWlc0qe02IA1kuX7G4+o0M=;
	h=To:Subject:From:Message-Id:Date; b=FXXDobYdr/vbhpLeB30+rAlUYlDjjI9Iy1gFi/7LKNkreJnC0uwwJXCyx18CfOpHw38e+pQm8P0ZDIyufgeJA033UKcLOpPkhZeKsL2Q1zUnWrWGj1eC9HorMTSgbm56lR7a9/7GgOa3ILnGZC9LV71FxfhVwMGv1dHo95eVBUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tc3R4Rkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tc3R4Rkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79D6C116B1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715310142;
	bh=s/dR5H4+wgbtaPOfb3UHzKWlc0qe02IA1kuX7G4+o0M=;
	h=To:Subject:From:Date:From;
	b=Tc3R4Rkt9lgPR2Tbug6+2Jr+IUu3tQ/O6Lzlc1meCfzBp9aChTHQd3wW5R5oeGCmg
	 CC61FpPhWjjLDB7t/JuzpQr3NZ+msDnOxoq5Do5czjnTdJ3/3c9g37cJtW3NI0VjBB
	 1D7uNQ+n2bWdFe+Vym5ypYnn+jiKLUnXUtieANMCANTwUVFniDwjzg/xUaH8cyH3yf
	 Ysx+3RvYC3PW7pyJj2FV636cJz078OH/t74w5YyU5QU+b87qIw3LK27gacDzIhrTSy
	 9ArOXftvNOeEK1Hhg5RDMlg2qTVE9INi+Vym2uyikqAtSsq+RNVvYpAZbEUdAtlI8N
	 UTv4YeD0Lg4Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25ADC10F1A
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171531014278.25034.7151820994437121405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca4d9c65b870e3dac047371aa2043b973145b08d52320088ede5912b0fce1fa
Date: Fri, 10 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715310142
