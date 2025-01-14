Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA671ADC60
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736850354; cv=none; b=upsm5YYpFVAuosbaNEhYOoTZQqOXHpEMszH4gYdZxgFyEw4PftqOJ033v5iKQtk93Q2+CoFr/own4WnCWhTseHPc4bykSJsmGnehQ2Ij/1JFhm13QISPQImiW28AnHpJuorEHqMkiXURTENXKbEfGDxofJ5sNwwIePeqFp73uig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736850354; c=relaxed/simple;
	bh=NgUjoNqj/Tl7BzrgVG3eC3xALhLqoSF1IvzgPUvScN8=;
	h=To:Subject:From:Message-Id:Date; b=LCowgG+rUdV/Nf7dIX8l6+6GqzJGJudo4ILGvpobjlcKjX6rblONC7vFu/45xVh39uX1vjoSmKhJbczEmwqhNrur6HwWA5+N4IPa0cJMTY0kwk3HTDUfykLC14MAeFfKjVDIg40Np5fetyVILBIH6GGVwxOsy8UwV+BwX2JyHEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+8P/NEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+8P/NEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9845C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736850353;
	bh=NgUjoNqj/Tl7BzrgVG3eC3xALhLqoSF1IvzgPUvScN8=;
	h=To:Subject:From:Date:From;
	b=H+8P/NEGO1uqT3GbP+31FCbUzLJPGPjMUw/oXRJcv5/stAf7Jrx7xUFZeUMYXBPLA
	 ZQmETwW1r6nVf1Tp/9znJ2ZnpptpvMq+oAIVmLQpqoaBKp8ehFBPDnTST1nUP9VGpb
	 KvQS7aNwd0/sa6NI2h11vatYv5IVpac7EV3dy/LrqzkcrKLCIb5ooDc1dMMkVIe0px
	 7y3pHUS/DWbzOVmzwKrPY2RghqQEohlK43mkc2zCMGmwXwLq0Qe9HgWTH/BwHqgumZ
	 XCF1ShygIpSSPUnfOY7geT5FlONzPLg2vhpvjufKan+Ad6vO91zzUHDXnEFtd47rHs
	 5bpxkPdJ4gh/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9476BE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685035359.3447.2329062503850247196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b7aa2ca39957d00d57f28176bf12a7f7f1f56ccdeace859c234083e6e6d457
Date: Tue, 14 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736850353
