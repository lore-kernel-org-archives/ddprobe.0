Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35803367F23
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786115434; cv=none; b=ImL8WyoiuVuksnUiU21D9zEkUFTYkmanaJb9KhXL+8MY60+4nNWyOa1dMad+tjDKXgQsbQ1Vng8KM3xDPMBALMWpZMxuYU0/tM/kKJ8hXhgDqKVtlEyHcuVvrgDIQvhxuCNsYnPl8EnvTlMV5r/29fAraGhHsT9KzP6XK0GrzHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786115434; c=relaxed/simple;
	bh=u33ALvWZ5Vp2ajoqGC/bhpjZMP5mQSROmNbWCl56cbA=;
	h=To:Subject:From:Message-Id:Date; b=DRuSQti/5PW5Sp+RUUzPwbWRmgYiorbqz1LjHkKJ7hei19miNFWu/Ruxjh8rKH0P2SQo2pUES0zJW71uaCoEIfjXR3HZL5vaUli++vGbbONWsANVid1i5oiIGSxGP58gqYu5eKq18ORFOpjcLyeEd1VZMyh+049BFhgOOmJqX/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siHcG0+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siHcG0+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39D7C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786115433;
	bh=u33ALvWZ5Vp2ajoqGC/bhpjZMP5mQSROmNbWCl56cbA=;
	h=To:Subject:From:Date:From;
	b=siHcG0+/ItsQEj2uAhZBsG5W/1SsnUw6vcAHwIzVoHvWHra1k0FgTAYHLaCkFJGQA
	 PUo4C38F3ST10Jj+gwZg8LbYGd5xeQUQRO3r4dgGYvwkv0kMPaNm3y6Mn91sZ07AR2
	 V/uuMCHFFo97TUj+FYGYRIa+kIXZuM1Hd9DcCZ2PSoax2sFgypdkv9G8U1gdAkJqCZ
	 U6JgU5rIEK1TdLyYd1scIMPC3Sxo5qr9IRm9mrUZLlvIkxSkWp6fc9e9LMv+8ez9vy
	 fND6oCqKag+Krdot/6ND0BseVUGFWkGIwa5FtTpMOfY+QTobNdxqvGfydrIW5CZ2zu
	 5vpQ+mXKYUBJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADACC5AC82
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611543368.8877.10578427378781376202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2820e100f7469d4e37a784fb13b22ba4282ae15c82665283cf4577b16b7d19b
Date: Fri, 07 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786115433
