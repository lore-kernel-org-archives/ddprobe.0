Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446872581
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 22:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712875163; cv=none; b=tykLY5kOcb7SH+MvlAaU5rocGXH4UnXqYbHR/rS4NdHcuogphh4sW6WzZKpwpt9Gz91PMz/XKZ8OWa5xrsbzd6l6K45C7GaN/T10MwrZtRPKYvE5cEdVpr9vEG0kSYEER0kgnSswzzgnHYqjJ/GusOlJl4G1vKyDJ6t6k421Q1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712875163; c=relaxed/simple;
	bh=IwVlvxkZAhIsZSCLTKJGFR0GqDTqFBE3QrsIjgA55Ns=;
	h=To:Subject:From:Message-Id:Date; b=hOi47+y6j+536CYwInP3vdLdUlCNG1U0UuuQsfnTLr4DIVTxxo/X48TJZAVMrPvjbDZyVe4wVrztdffqYwB3q5Wtff338rND8x6TmGp8aXbBCOusnC1/huz7BwOReBWiyj8949bH4TnuXxGgyEnj/j/Vm3W7P6j47dy6afX8dFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2zJ7UyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2zJ7UyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6113C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 22:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712875162;
	bh=IwVlvxkZAhIsZSCLTKJGFR0GqDTqFBE3QrsIjgA55Ns=;
	h=To:Subject:From:Date:From;
	b=C2zJ7UyPV7l3oGC+CqIAA8Yr5ChVkKOv26u5a0bQamcSCz+f0RFRGPlZrgLsZpOoc
	 ywio6h1UzV8uYIfgkuxj+Q/3NYZqrfLahs1xaceDgF5Xb1qYSqg8gKZ2CQIaZdl6eO
	 KL78GwPCi9/Rdht/szSOLsBMgC52ljlbyIzKO3NwLkihz+1QcP0NLPpe4B2dMzPbr8
	 DuflXsIe8OjfIs1AfiLZgkh7AeTyOcBG+E52ljCZf9RlI/kSS/xestoHolQRGYiNgq
	 Ou3wQ3pWOWwCDiUcjj8x9MhG5fiqTtyrKUJindB4bGkt+kJ/n+I8TJegIyA6BJOqqu
	 qTCfYz/8U6Crw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12A5C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 22:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171287516278.25669.11431157782919428137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c04d176903953a7eadf88679997192a5bef5e7343c874016089f22d7707305c
Date: Thu, 11 Apr 2024 22:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712875162
