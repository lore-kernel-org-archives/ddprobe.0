Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33CD4BD375
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790113834; cv=none; b=C1Y7HB27Jp5QL0dYME+V8nMZWB2M5kRZGD9pnavFUA1ibragJkBB2ZFNnUC8DybAJE5CYeMMgZQbFMtXZswspHkdXhRKXbKiNsVA67MxC9K9OkTCw7M2F5MWVZXpeQSO+N5T+fRCIhVhKCxook44clUlSjs8V4Bn6p+E3soo1xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790113834; c=relaxed/simple;
	bh=+d+InN4B4oHpTPB1RPhVMhFycyb6N+cljIKYvvXiU7Q=;
	h=To:Subject:From:Message-Id:Date; b=oteajBE+zzTCjduziC6G+O3NnN1GsSIL3z/9LSL+I/1vhWsAq+0NzFoMhHjyhXdRjWzwY6mYFa/eSICnMCYPOmzWywo4/mB9rWFRtoIeVwjCp+B/cuG5i3qrfSI+k5vpHALBKt6EsnBASxOSiTPOPgpP0DpDLR6PZHp9cUfFTV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUSitTwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUSitTwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C81C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790113833;
	bh=+d+InN4B4oHpTPB1RPhVMhFycyb6N+cljIKYvvXiU7Q=;
	h=To:Subject:From:Date:From;
	b=cUSitTwYF5zN/oT21Nzp8JhwggMAhgSMvEWwN5+Q6lPp+maOPZ56We0/K4tyA4WQP
	 zn4wK4E2p+Pfk+58LpvqXDNxywHXWukyWLSw2YOOja0FqV3M9i9n7Jkauecxo4EGaw
	 5mK8L8pHMrfkkyE1WhkalGpc9+V9RTcIkA1rwAwDMf67RUK1nAdv4CCoKtiNruN6Lm
	 QVobaHhRaNFwDE954ZZ/C7wIBlHGnbV+havu/byWw4xx2cTuOOzym18Ul16SW7zzTF
	 hYt+GohblMNRJR1+t4766pyK0ntnUs2GHHNKSat42nFHpDg1sjTN3CMA9hpre2Tr+c
	 o4WOvBMdgUFbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC257C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011383375.20346.2282500582521973415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c473b159ab12c67ba1ad94c39db9c521589e65d67d590e8db713b232981b6d3
Date: Tue, 22 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790113833
