Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E24750A73
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 22:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714258343; cv=none; b=LYFYBogTgHnmtDqvp3uJoR4brL3uY9C7+u6lNxnAKcytVPZjEfkTf81GliaBO4txn5DglMgazCSWPamOT5mhau9RizvNzHKPrX2ZrBlNoeijqAQtBEVGfU/CVTlqKZIb4wIgUmSD69qWKTuy7Rrk+U8MH/TRRXJwsF+KeoAjbyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714258343; c=relaxed/simple;
	bh=xwKJKRoJy91aHQnh/XrQ2gvsrtCxB0MqKFH1TcDKW9A=;
	h=To:Subject:From:Message-Id:Date; b=tnF4opU5bCs4ePQpc2AqUaUrIMvzy+mhwCbO6rb+cK5Uq1KWJf9fDfXythWBWr5YY7rbz4wulR00WbmjWMxVbVKCFTyrZRt9GkZMbAG3bVWj4yJoUIgUYBDHGZ+buvuHwj7VX7+6jmIpSrrvrnXHQ2QV/L+fLP9nZZIn0jaZrt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1ctAvxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1ctAvxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D06C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714258342;
	bh=xwKJKRoJy91aHQnh/XrQ2gvsrtCxB0MqKFH1TcDKW9A=;
	h=To:Subject:From:Date:From;
	b=J1ctAvxPRnsUdk40Aun7T/MnbLpCH07/LlGq8C4oJLxUpisgSX6nNJhQ7tkY7+V+l
	 /DZn9j4Qm9/ZfocWxQmlamzkRWmgKhc7gh6XYW82f4GTGirTD2FXnCAa4nrnr6t9vP
	 ywCHMZMF7yZFGx/L6Kje3rrlnwfDVRtwHOfLlzoli2ghacxt81RmQeBAUrickCOPq6
	 zndXaoVzCLG4U6aYu27UpNmChXk/B+u9NwP/6I9psqd2qHVfcVCX56T73pIQ0GqP1E
	 cqNy/rSNOdtq+UUdChj0sLzguvBw3Ql+nTH0h682t6WUz70raX8Yw7YFkStvqqhllP
	 rAbSIa33p5mCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21BCC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171425834276.28076.6661345085263036167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75905acae8c991b9469b4d6f1998e86fd5fe33a7e9406d2670f8c6c0c80d831b
Date: Sat, 27 Apr 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714258342
