Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7B522611
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 02:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740968334; cv=none; b=jLbDJdAp6UnQXpOP/sAw2H9DCHgnjoEUG3LrYUvF3dqFdiPdOiAEDo6eyBmg91IRPaQR/03KGUg7pffo1uK/H3JCKrnDcHowXhATBt2bgeHeKWsR0KEALUtpJ289y4SF5Y+setduZrYwLxkStqQeU3KpuMG3wLkBz4frEK5JoXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740968334; c=relaxed/simple;
	bh=apIFkUFNunTY5ZuSm3AG0ytOgmoiSCGTq4jn+P7KBJ4=;
	h=To:Subject:From:Message-Id:Date; b=afcnOJKlofU/etiRJxbpkqi0Y//VSRo0xCABSsPyrEtU7GZzWnH6tZtbOuNirdVSN6m4OEhURxYwODCkMVhQy5ieY4ucVtuFqFhwlnbHsfFWufXDCIeaRFGYzC0+zKAy6NhmDH6wdQ1VJeusiyPtaW2F1Jtahnes3FyRI0x08e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVYXU2BC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVYXU2BC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA1BC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 02:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740968333;
	bh=apIFkUFNunTY5ZuSm3AG0ytOgmoiSCGTq4jn+P7KBJ4=;
	h=To:Subject:From:Date:From;
	b=OVYXU2BCzVPrPnLVhs5aNrmwP9Fsczg2SKXw7/W3MwrmqBy+zJgUOvSn1MblARgCk
	 +YCh99/Mqj62eJQiEW0ZbYSFObJMR3aeBBcZy5T2Jx0cMM+x7GvWigej2VS/EOGwuw
	 uXVi2zZJpdBds6dXRBXhbKhqBSRIUxVLYQghWFv92e/yHM8zaKeMrSuYNwcF/Be+uk
	 BHPxgAQpKSGfpfYTAQbE3VEP1dn3elt8xQvrertH5Rx+6NAfvntfW8MAHlsu4zrWuq
	 6cSji0x9lc0GtExAn6EnE5JiPZUJXZOTysC9HVwAJ6u36A4jfqY8MPvgMcW7pBjwrE
	 DzTiArsO8IEYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A668C19F32
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 02:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174096833358.7036.7491733308772095531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56d8057313f59bdac2d4e6a58fa6b34a97cd7f378708ea44b7061eb3f557c35
Date: Mon, 03 Mar 2025 02:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740968333
