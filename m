Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E8326AA88
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762959594; cv=none; b=VpNWCiCfYQ8Z3UtNHjpCdrf7KXdbb7fqe9lHNnO9a/6Rn3l/cgEAZQk15rnVSRm8BkNoLYdFrTIQKF+J5dlGpOvaMsurOvd1kmE/K4CSwKMWsFaM2Vb3WyjAV6Yk4cOud9BaYE7mbn+1nLIMxTBADpk9AcmHjAlYqIsFofKXkc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762959594; c=relaxed/simple;
	bh=xEbH1GhZsazKNzYnE9nIzM/u6J3QMye7mL0BHztUPrg=;
	h=To:Subject:From:Message-Id:Date; b=Gt9F4PgJM73SRkYfSft7WLifZ/Wpp3LcuwB76DF5uq//LvLWRIFjGFWo+7ZTU5aNaemI15GtURgCMhk8sHvLFqJHDGQDJh6UQ+V1FLYCS6OQmITEUdHNiTL1HxlGuqaOupKNe0HhPfQSyQ2lImHSIMwl8wFBD0UZa4u+0TXie/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1sWH/uT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1sWH/uT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D186C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762959593;
	bh=xEbH1GhZsazKNzYnE9nIzM/u6J3QMye7mL0BHztUPrg=;
	h=To:Subject:From:Date:From;
	b=H1sWH/uTOYzVabAbZ9wh9x2/yjvnRCX/LRZH2ga/va7oaH9IZ2jAwZJmJCBRkPNp1
	 g+megtbPzDlxycpuz03s6IxvYiA1/VXc4o3FtQMDPNiXcozkBi4ZN2xdIY7OvCYE0u
	 a7tFUCD6t96woAhZzcmOYWv2CnA2No1B8dA0lrpeyE4dkWvN2cMKgyA41vWu4P+xEV
	 4FfSzlecKwQ9s4o6uyAeAKjOkIbbbCLeNdTFeMnpWpvnoGx+bAYzQvd+GeNiO+F2mJ
	 Y3ndlBZeVYg8ghbQjhrB9iKq4w2Y7u2xjmaU+VQ72jeeclYP9L7yV4QGfPM+3G0zYI
	 zGlsy//7DdfJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFACCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295959358.6077.414030170114609788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600456aa472427474f28ebe92d6ff7afd6c29477219c012db9675ed94202ae21
Date: Wed, 12 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762959593
