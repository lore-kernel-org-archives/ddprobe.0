Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260C733E367
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788100834; cv=none; b=t8pNy821+HpgNDlxFY8hk3uTKDLSOR6dK/XNQ4kfRMZFjZJIDHQm+ZFoWRLMClqJz3M4okX11bCjIIUXzUcdrTDl+IZo150c0K2a2wPVAt6xw3j4JsmFLGj7IoPob35PCpgQaH1YnDZg2tLCP8/Hm+mO5tng7zVzXCIhUpok6g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788100834; c=relaxed/simple;
	bh=WxMa5ZaUCiZsNPTA48985aH6joSs1uQ2xP1WQF5vHsw=;
	h=To:Subject:From:Message-Id:Date; b=oKZaBX3EH17lWC/J9bD5wJL5Ivq9NqIYk1mXrXACQV5531bYC3dZ8mvn+7TWBigRM3+sklxbZavPwMoyPb80KdnKJyIIpxDnDY2usAWBa2SwEWBakQgzJ2dVCOZI85k7nt4fO6ayhvpcU9blPfWMs5Jh6ote4ny9MlBQavBJaAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGua9OkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGua9OkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAD7C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788100833;
	bh=WxMa5ZaUCiZsNPTA48985aH6joSs1uQ2xP1WQF5vHsw=;
	h=To:Subject:From:Date:From;
	b=CGua9OkRkMsfJgiMBWYPuCpKw048iSVycd5sWe5TjlAEW19LpK8GngBXNJhnrAOQj
	 UhnwiYt4ug1xDm/C11cBYF8WSxK8TtaLtlzctmOsQ01yKebzAkEL+YICC5UiKHSEle
	 BTELN9+k/lf/kHC8LfZHMDmjxN03J1kHGBBahQsCYM3vFvQemWg8cmu/BCgjg1nU9F
	 B5P3qmMj0sMptFaeJbWPMIF8DyHC8z1NfHuBE7CY0nBs7GulZW0ZBTaJgAvDnvyg8f
	 /w8vvNU2Yh8/GMrNbEk6myj5VE06Qk/ieTom8VhGk4lzUOOiFbSQNk7DUf/4nagKCW
	 Ccmsj8tDPR0sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9C8C61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810083368.22849.5567225070758959797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8285c38b6b2fcc8c07b0e26decf38a92d32b9919dcca16df222ead413251500
Date: Sun, 30 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788100833
