Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB1529DB99
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771043694; cv=none; b=Deq1uW3cr+b6sMRCkwq6CEVNj8S/adprKomM4mxI0Aoj5ednHmNRyMyydUH2jJhI0wX08K5pFblL4MKm91WqCPxqLl7ERQg4Q3fHArK1Noar7PcI8zLBVIDk11ehbNn7pXUNzJBPFVWU/PQTW/nYGGO5ijLDW4zA2+kLuL/tACI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771043694; c=relaxed/simple;
	bh=xj6h0ucua4YUSa9UdPmjRAKKNrBroh9X/uaHS9u191I=;
	h=To:Subject:From:Message-Id:Date; b=FWidF+EBO8hOoK6/jC8C0hLAfgnkeThd9jWmas74BUdAHbdaqD7//M0MHwExLt6QO0tQCclS90ssqP2VgsbdFXb0tn6AMNT/s5vzc8LRaT83syBr0+S/69g7K4Mqcc0BHP7uoqwDWN4lZMj0yhO4ceiJRxgWtQZWVK70NwtmP6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ai3k5trU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ai3k5trU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2611C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771043693;
	bh=xj6h0ucua4YUSa9UdPmjRAKKNrBroh9X/uaHS9u191I=;
	h=To:Subject:From:Date:From;
	b=Ai3k5trUtiAwc3BvRJf9Rz32j2mcY88b6/C3xYuAhTFUkEvW3J+ROHsJB0iSH4pQf
	 Fix9EgNzaUESUmcUBcs0vj/kvpH7LevJFZgCmxpUhOkIO+cjxibw2rF1x7zPLTuiJn
	 KEHaUZiCS0GapcR3w0Kyu0/UAI1egeC4Y6cEkKgx4UZiWiXDkXW4kQgoD8BU3iyryB
	 pN0a5dXVx80OSc+oKhUAxbzvX+n7UwYJzjIWqwbzdfQHQOf810RdFAkLCPiVNiBNTX
	 iBlhGUO9g8JDsE3pxthNZD9ksK2eyr6zFbD/fulDCs926RgEc6BYjqz27ZM8CbN+IJ
	 69fT3nGnuWeHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE52EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104369359.31706.12215309108587867871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07f12d1e5fb3852e105c7868d9b90e31861086c7d1464d55107064bae0a567e
Date: Sat, 14 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771043693
