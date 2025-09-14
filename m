Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B27972612
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757830194; cv=none; b=VaJ38PwGTh5j5A4StP05sKWL/saqlhO+nJZ98dADoqIM7U9G+OsgxwvETmE+opvO5HYetx5vPEM8m4YF0qVEwNR0joLhGQdXQJf3SHCa6dnKYzB1CTfW9WmGNH0AcrYehAEU963kLdeqnRgTUnavOTN9xzNrr0YeKh12y3+Hy+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757830194; c=relaxed/simple;
	bh=FRglpe9Lg3YChosJT1tF+TQfFSfmLm2XPf2pGcmdqgE=;
	h=To:Subject:From:Message-Id:Date; b=gx3pdHwwV5726opVEuTSS7vV1k/RcESnKIjcdHxcko7DPOwSf0yUkj5s2aWUM3EDBq/aTngl1PVc3Pn4yZ/AfKaP9fjPW39Qv362EmqG4guUCul9lLYa0AQ2ALJFhXOoWqUNup94Lb+jGPDiWpeHdpPyFHRLwhiOjbKw0ohqVAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYdkniM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYdkniM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB3FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757830193;
	bh=FRglpe9Lg3YChosJT1tF+TQfFSfmLm2XPf2pGcmdqgE=;
	h=To:Subject:From:Date:From;
	b=pYdkniM6WXb1PCtxs0fITwPOSiqHs64vOruWYntAI1lsEN/PJZjUd+0HjZE10yxHn
	 NVSy6zoa6+Wn1LY1n+c1Dy63XSugmiS2yRQ3Xk4i/l9ch9kJKbr8SFLp5nuiXact34
	 mhxnAHpIaWEv0zEvYdO1wfHKC6A6Qah/Ry4PNibmiZcud0As+pwre2SJxuk4WTzpeG
	 +/snaKGNSyCYCE7oevUHkA69SjX1HXEwDr6LhV8WQ51GP3Py88azP1squbj4Q4mRo2
	 Hjcigk/jBxgrIjv0MjONpCevc2hM/jQ4HBEQ4BDjY6X9eDzNE/BS9V5TTkh5yMXrOT
	 uNSwv+gNeDYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E106CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783019357.20567.16678658093009327509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8940c3e474cc5e379a11bab0a6537d0327404ff4868d5c3329ba1fa887c042
Date: Sun, 14 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757830193
