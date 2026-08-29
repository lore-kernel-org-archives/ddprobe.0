Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E36E3A783D
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788027034; cv=none; b=oAIsBKebjGy9YKm+EpB28SL9kB2zD6ub0xo7ISv0CpYten8murkpp42Kl5UaVAUiUlic67RHE7S5YazXE44BsjYcq+TwTMa9tyyPaZ4Rkas+VVb77qaI/hjrOeQvxn3T+UKeniftCc/Ia2ZZjVhwDHD1mztfR1kpm4v5iCFJRkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788027034; c=relaxed/simple;
	bh=hLB7OqedVeDHiFfM3sESBGaM7r+1mGyZEjNYqBmTMVA=;
	h=To:Subject:From:Message-Id:Date; b=PkOkz0x6qbunTPXx2h/tlgsfGY/WXuy5dBVLvhs0NzqKChA5UyltCXxFNJ9+anfogz6riUNOumpvuPHBv51XCGk0kq9Ny1X0T3IxpVGVr4pRB3t1lAO9THNX4nm3S7b02oF93s4U8VUkbR5Wq8qNed6CLH5lg70sDsUkY2HSW2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpm2wH8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpm2wH8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1491C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788027033;
	bh=hLB7OqedVeDHiFfM3sESBGaM7r+1mGyZEjNYqBmTMVA=;
	h=To:Subject:From:Date:From;
	b=fpm2wH8OXlnpWCKSqoZZlrcw4EVJMaRAKJQUcBVoOBXqp5xP5muIB0KXbiUBrxNA5
	 ucvbSfe/O+K5tCxegMP6xB1Xz47iDkdAjWP9UCfo41RFcDsJNPiCt/sVmJoDf7ONZV
	 l4BoWv5amucI7r9wGvSNvm0TmwKRh3y1AVNbMgqXUEqf53gbUDcsCTuO3xG6rHWY8w
	 fivBNjy7NXIiv2Nf6c/Bk5qMmpRiqwbV3ef/++6dXnVQv5Cd8gFuOeyTaW/mKiCvEn
	 c6qgonrpln9fFxCcXYldbFQ2SxEPLlLsDb8veS25bFs9lALwv+GRVFzAx462gVsNUL
	 CKE404kQ/Ud4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA648C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802703368.2565.13568561055458582516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0791f59abcc9823fd1e25a23a3bce825541ca7b296f06263ea28b02034414132
Date: Sat, 29 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788027033
