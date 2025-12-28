Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D82C189B84
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766941434; cv=none; b=MW4fPZohwhnkRkNISKEWLFSJYZXKlo+6xHpS5xzoyHr2qy1xGKswhYmVmv2hRsmmwNL2gVSbopdah+PqX7Vb6KDJbtTxUyF90XjF4L50xo/QyMVSaoCkTKBp/MNnczye1lfJK4D9jDEkCYRXH3XRmzwqgR0h6V9aXgVYP9IlExk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766941434; c=relaxed/simple;
	bh=8cg2JL8+T8k3mY16GYLKD7s0Zt/zYcmJPd8OjOgfwto=;
	h=To:Subject:From:Message-Id:Date; b=GVUuo6RKLo5KcL43nzGBTb0sDItvKN1l28Ir5r4z/zC7ofHQr1AqfIsPY0VGbC4AjhmX39nReNTwTU1l786Hj4QrPpQZaxM+3VdsmhU4wpjJn4qUHyAWHiXduGbreU2XJRJxpqk1CmnlcLDBN/KVXid6boNEMpN2c6LqOOgvBvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FU94bHFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FU94bHFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2669C113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766941433;
	bh=8cg2JL8+T8k3mY16GYLKD7s0Zt/zYcmJPd8OjOgfwto=;
	h=To:Subject:From:Date:From;
	b=FU94bHFjptpoEoU29h49HwYJ5Jm2XWtz2KawWwit/Ku9I5DEejDuxX2beR1eMALkV
	 XIiqdO4CMobyW7rEoyqCZZA8cWn08ncl5LqPG+2hjnOINXcVyb0xJykuQDSpQ0OCN/
	 PRN94Het0XOUbGUuFhXzbiG9zwvgtU1C8NKRTJqajV2JkLKOL+ELtQDnnjlwFJ/JRx
	 6BzsoASfp8OnM9KVypRRne5jxJzsXZdIRai0AyrwTZT9WamLZt3Cnoi5hDpuFWmZIo
	 aPbY3KX/4TmjvIuWLD6JxB8jmcS7V8ypp7LgIJ8dI25HEM/VSXxBDSyNIbh7c5mzH5
	 MTetURUokhb3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE97E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694143360.24158.14872336780140619565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c8af0cbdc4a0bfae2511eb6fcadabad5bddccc91db8f442e89d06febfa4909
Date: Sun, 28 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766941433
