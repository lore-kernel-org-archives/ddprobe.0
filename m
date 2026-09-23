Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B88046AA97
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790151034; cv=none; b=UW4TkH4Qq1Ofo4qEYiR0KZXOFS/Cecw2edxz9evHQXqvMPDPZaVyCaU1gCLkksWYW6kICjI0Ln9XcsJY+ktW8gPsPC2VG3nSyN/rhUF8OxLEb+rv3xC+jbzfv88uV/sUNEnHPInB3lFl67FEX+5cSTMYeu6YgPdJoUSZNpTr9HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790151034; c=relaxed/simple;
	bh=7DTzp0FyhUo7EoniUgcNUQi0eg8qRNdTXp//4K0FZ64=;
	h=To:Subject:From:Message-Id:Date; b=q6wASyvhfvyLWPO9IzQHF+hM9ze80AudOGtnhUB/xa9reTvtwHJamiM468drE711Aqjjm4MZD9Cr0pB9n3aaFFcS9IpLRQT/DrKpgmAU2sYvQFuNkuX1f//8JABz99oxrhRq2RfVri8w+xQx4QvVbi2nvJrX0524ELgcbyGxn1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/fl5H1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/fl5H1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61ADC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790151033;
	bh=7DTzp0FyhUo7EoniUgcNUQi0eg8qRNdTXp//4K0FZ64=;
	h=To:Subject:From:Date:From;
	b=i/fl5H1RBYdR36GA3aR2Yo3cokDVAqS53xDd+ghPKLG3wTj8btWd7HDwn3HlM/7mL
	 OqebjbKUe0MsurqGuok0gkxTHpVoaQkyBkJb8135po/hgPNC7B2PnTgsPzlli0OHWn
	 GDlYwpsVQEUxUt1OcvBLFQ7vPvISKQI1lQSwzFFRAO/j14aL97u+bN8XEUwXgkfWa6
	 ia+hS8iNpFHthx3CQOYAZtHU1QyXRe7AaACyVZQt6tIHrD4G/0PrhuiSBaiIkLXtAw
	 n5HGbEz69LW9+ZpdSHvSwA5naWzXA6xDzhYwxIkfi63ij0zjDbsyefXE4qI3K+EypJ
	 yVrI5Z2JfTOUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17BCC982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015103371.5074.13543781181804103926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb820d72b2e24609e468db5e13acf70a58225221cf0144c3176092f76a7a1292
Date: Wed, 23 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790151033
