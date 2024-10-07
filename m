Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECBC1D27A5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728308154; cv=none; b=rxS+UZvHxPaFqpg378E6P58/YpTIzAXz0scGOW2NvNOUZ7yYt7n9vRMuX1ELkDfItmzPSfqH79XuOjL6vGFW1qACjmr99YJxgeLQJTwHLwboWOvPUtszob2Uzl+ZMmF8uekxmtsT+ZG2ASiOjBlA8s1HOoc7O43M0HJ/ZbHgD9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728308154; c=relaxed/simple;
	bh=3SynO/vcQ/3su5JUPJ/o/mqxGUCczDEr22JvrbFNJvE=;
	h=To:Subject:From:Message-Id:Date; b=qtS0l6d2Z8svSqZwWLU7LuhgQb5rtwI5RgdopKuZncFwS9opOyLBGptYNgBWC2sHcDjAfhWmdARQXDZqEBP0YsIDdLakWNRAS4rkSCg0G5sUi/WdbKF5OQM/8U/0hLZGbNliOb8+c24BE4Al8dwp6dOoNUTjae1B/D6ydVPN3NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTW9raFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTW9raFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05CBC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728308153;
	bh=3SynO/vcQ/3su5JUPJ/o/mqxGUCczDEr22JvrbFNJvE=;
	h=To:Subject:From:Date:From;
	b=qTW9raFwktZluLSPK4CwzDYt2iUugASmKfCUbG1220rDZYs7OO70cOUbvMJRMgRr0
	 7jYaWZJWahj75V0eSN352G86DTYE4OYNyOTPi8odX/VenKpj6ChlPNh/HouLMxeTwx
	 D+0r3EgQIz8lGyhk98b3VRE83a91rxDC+Fj9kmmy28RANepLR20kPKDSiNkKGKKCDa
	 5DFjOzl4zk09OR/DmabavjTF7W8Lo3Rpfv9cJMP9d+wpH/zTaaSsUFI+AWAZXlCBZt
	 dWdgsMexpG3pI59/waHPOqty8ZMaSuxD4L0VaMcR4yU/AoQxruLiLeAOx90O7gLyTl
	 b2QaLT8/bx6bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD8FCFB441
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172830815366.6556.2522672838682281955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca417dc74ed109bf2d843282a0ab168792bc4197b46712fe9b97f6bb29ac0b06
Date: Mon, 07 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728308153
