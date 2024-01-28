Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4941373
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706406497; cv=none; b=H26TCGm+iQkHuaA0xr0we2g9iqK2xh0p5SbpOtICKswjnXuxtf0+skN+k7O6e1XjqbtXKXGOXeCWVCSGlg3GfSjlbkc1+NXTqMfqX51xKzJEV9rWoA04ogq8a70ZbSgYSUdkDKRYLu739Y7xOSHZ7pIvOrXM494eDUOZrpCjLn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706406497; c=relaxed/simple;
	bh=bqlifMpLRN4HDMycOr5YwUXWqgFXKXdi7L2D5HB6xJg=;
	h=To:Subject:From:Message-Id:Date; b=ghajmkIIbBrUfX+0v4UbLPERz5vGCVt7+62ah0FOEH/hZ2TiHdgHOWX/QOEmvYqcWgG0t9LHc/m2F3b18voFiJuxz3YHrRQT0hoL10f2jG2EEi54XA6YEiFSUGAIMdfVeBiYERGam2877O4NZeuLzouNx0tELk4Jg2zQVVHKP9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcDjt9GJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcDjt9GJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82AF8C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706406496;
	bh=bqlifMpLRN4HDMycOr5YwUXWqgFXKXdi7L2D5HB6xJg=;
	h=To:Subject:From:Date:From;
	b=FcDjt9GJOnIz8BPaYskSoyly2xODqt8xa9OO9lR6V0EbRSkCcb5K09+TZCFdHY4Ns
	 1S6B/kXB52xcoH4Yr09TKshVh0UDNHc5j1fBIlmXDu/bsuUXjZessuwaQP3EVhIp4I
	 +5oLaK8fdeTXtH6iDQZFtjDieG5Eg6SyOfJjOiNwzpWtnHPy7EtbI87Gow/Fl6VxBP
	 mqFZ+4egsb9jucJdhq4uMLWo3rGLr5SxXonuDefpn4+s2GsVnug2IljuDXv3kN6jDr
	 c6WOfnCmEtHcH5O7ccnb8uHwfGqvlSVi8n3rtSgLU/rkPkX9Nb0XXjdXQpHR7bc2pK
	 uDq7vVlXpI0QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670FEC46CD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170640649640.22288.9384402387932991415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed3c25a8923b6c64403b6b5282b683fa8a57a0c73cf08af022071dfdbd1b447
Date: Sun, 28 Jan 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706406496
