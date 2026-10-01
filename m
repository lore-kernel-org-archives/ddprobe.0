Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E70923BD1D
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790812834; cv=none; b=O2/RnR2eHyIVd54VaSG0sEdt0eQmsxKImbDCWGcXmqvkt594gF8QPupQc1hN62emSGYQ1HyO+HutVT4cjJ0/fPZCeEGmAl/EMXuvsk+aXIojvjz/b1un3G95m6ozl5gt2QjNZQ1aMgBxtt4XLTVyKgcSfllQC9bBXzzu3GWugKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790812834; c=relaxed/simple;
	bh=AyXGKoWgvlaNMOT9vmOynDdPcLrn7JE/eED8AhtQ+dA=;
	h=To:Subject:From:Message-Id:Date; b=D6T8I5JdNL852K1xO5iNpgfn2HHHQuFqrt2SVP31gxk+yi7vqV+K3SvLm7WyBwkDGuVzwnl3YTfSa/dkEvLSaeJmDPICGfcPtDeKtno7i0C9RI1SpJqBobfXHMqhVDyyT2GjhWpD8pLKsh+jC1gdepRIDeqZyM7r+xp0JOLesCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6TLO6BM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6TLO6BM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37F1C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790812833;
	bh=AyXGKoWgvlaNMOT9vmOynDdPcLrn7JE/eED8AhtQ+dA=;
	h=To:Subject:From:Date:From;
	b=V6TLO6BMBfoQpYdgm3LmNn7+6TO+rQBwDhlhcrI+DQ1h/heFNwT3iuGIHnIEIlG66
	 1QM1S6enXu++2pOR1G0jHns1MHJaOoPda1OQl5Rs0zW+DIeZl6yQBUVymq4TcGQA/R
	 7SlxiVFtyYQ3omZneoeUBm5eh/Z+IrgIrHaQXWm+uOSvwGnO0bWg+ziOLC2FKFMaAe
	 Z9HdtiN60sHtnAoilx6ek5oojzFJ6Dg0vUjqFMF8Wj4p2zlDmYYwM10N7ynLcRFRoM
	 Q1KUk19AT5Bws1UhANn4wogeOvnm8fxGgCu7/NxihOf39rg3+wzlbWn3A1dXACKK0j
	 YDnxXYtDaGlmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF088CA5FC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081283370.29044.10824736639627015368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71005b482ab418037c1caaa3e0a57821438a7689d6e5d2e6f7fcd39577772ed4
Date: Thu, 01 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790812833
