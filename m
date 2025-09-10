Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044AE30F809
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757492994; cv=none; b=Jg9hqltHCjLczsIdYlm7m9yC8w+1OxEPrRMCewl02WpRPO9FOiZMOlU1ZQl7WeUhlrYnacQ/p4R2FI4yiBQEKt8yG99gB3NQeEPJhrdLHUcL+mTDmgv1s17FJ5d4v7Y4nAy+BTYWkzeEdbHp3otbljs4CZpm5Hs5YRxe11b1p6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757492994; c=relaxed/simple;
	bh=2p5HMIKGXsuO4o8TuFaNdwIWNKbcfIlD68dsFiCrUjc=;
	h=To:Subject:From:Message-Id:Date; b=AbVjoVP374UarXl3znQF/SXQUuPHcArmw3YdE8im/nQeXRWZqUleR62bYVSfsiGSUBpg5cOOfol/Fvn3RhH3WLtSKZrHVQRp88k1Voq5wFXl/yFY40XyA5xmhGC4L16naLCKJnUYWVFshAFIhwszUNmhZelwnOZmjQRO1kt/R2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zp1ZFcQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zp1ZFcQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E292C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757492993;
	bh=2p5HMIKGXsuO4o8TuFaNdwIWNKbcfIlD68dsFiCrUjc=;
	h=To:Subject:From:Date:From;
	b=Zp1ZFcQpI58R95DJ9DrHAdVHwT8GkeYujbQczSHeL9ALV55eqwC7joTIkpEO+NjAW
	 ZwU6CgY0/shJ19hs+l4z1OrtPc+O7h7MT5brhkVnhN42FXhBW8ET3+ld0tr9l3ep3i
	 ahJfZ6vKGMSULb7ycSVUwI/YKHcNmZgn4ejO3E4z/D+A4MCw7YxfTXf9AFiMFGuPr/
	 cGKJxYtDZfxl0TQnYAUiqqbMPNhQMKUpv4To6o/PpAweVJ4/jKbE97kd4QJEc1qDV0
	 LSctwQOuDE9qLarJLo8+Yzy0As1GU+RxmxV1P2kYkUDWQ6mMCI7J/8UtwgsPAKFuvx
	 38+6ByIyqxW2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE9ACA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749299357.16430.1119214542347731405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998229b9622bb0e81928e0f7fe80ce2eace7ce62c9818b9cf441319381bc04a6
Date: Wed, 10 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757492993
