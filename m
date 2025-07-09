Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F3778F36
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752044393; cv=none; b=UUaijpT4Aw4rM8EV/SvoUkMqYOX6bkiERuRi/ik9iS1T9DLtGiCSmt03oXeLuyRy+K2sSWO8jE9KDLKVnBVkSPHO4hFWhLy5rgkTJga/Nu+qehCPf30bkWK6C3cdnL9pWLkBrJozIpQUijS1GiMKZV9cI/ZcqOsUn4R0YDmywUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752044393; c=relaxed/simple;
	bh=SUz1kphLimK4Q5zrQ6JuZxe7TBYkT7uxdVbz0NvBn2Y=;
	h=To:Subject:From:Message-Id:Date; b=XotUzIIzaWAOCcv39BD5iFTr212wzg5Uwyyg9teOjzS4PJT1IuxbvEPZH3VqRhMyoy6rm95y0ZrK2kLP/RtbKzmO5NyFg9gk1hfz0n3M0Y/9CzJ6BBooJStsVvu8JAcbeH/3JY1pjqcUanRwTJmX4eH0XkbrBWYlbtJR0t2muJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeJrO+nO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeJrO+nO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0527C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752044393;
	bh=SUz1kphLimK4Q5zrQ6JuZxe7TBYkT7uxdVbz0NvBn2Y=;
	h=To:Subject:From:Date:From;
	b=SeJrO+nO4JtjCsXfBUreE09kWFFBZBmMmMGu7AqrLHdwVdnkSu1B65ye0fuLRkKtK
	 NptriSkbJyPVdC3AxPJSPyA+TXcmC55dWh4kmB/mzQV2Q4XrG42TVTnfKNrEdSeSIo
	 QEuzZOQt6B8FSbo5msp2gPJNqC8bR/2NNLAEAZWFONfffrogzOIhSLKf0Fg+9n3NRE
	 IrNWjixshLiUchapM8oNDjiVHWEoDF56FoZp9evEqT1VsrWTqMVL52OE1yhA5pm326
	 b+5eRAeo5nYeKx1R3q0pBpF+BWt3Lhlubg2Raok1T5YTK3qSYSNFeJY4TrDF8LYwEZ
	 jzTb0/a5vOb3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91790C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204439358.19411.5075877698879224883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1f3df5c5819943cc391bed32ebe4c8dadc41ec116aa535b313c3674ee3156f
Date: Wed, 09 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752044393
