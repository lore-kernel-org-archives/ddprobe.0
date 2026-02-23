Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19092191F91
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771837494; cv=none; b=AQoLPVfV0mRmhWY7McRKMP65cW+WoaK8Yae+a6tNJm+kZi/UxLkP5vnJ11gaqcDG369a0n0ghuvCFWnV7tzKaqiMEr0s+BU8pBrSsfSw0RFGLyNxz1xaP/YriXG4mO9p4oQR2f87DSkyWa/VXbdxSv69Y3dw/wd1TlbRMnehuXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771837494; c=relaxed/simple;
	bh=94Ls6wfPxwBB77zLLsbD6fFazYtgvZolsqG9dov0GLY=;
	h=To:Subject:From:Message-Id:Date; b=IrK79H2YKHQ7X2/RjeW1Q6+drP1+vuCmMvhuSZkwsJlo3etBMKYq8h3r0cS/QrBfYyCz3exWLAA0zRKjznKyRuJ7m+sLZf9YNRGskHfuDyJUcQQCPt6Uoazt7XFiHxL0uTLE+o7j9JB4qQzvAremesgaXi/6su9sQRRGFzMwzgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MToifdLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MToifdLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A957BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771837493;
	bh=94Ls6wfPxwBB77zLLsbD6fFazYtgvZolsqG9dov0GLY=;
	h=To:Subject:From:Date:From;
	b=MToifdLO0/Uzzh9TU9VBwGteVHYrs/MvfVUgZ8yRPajUIhGUUMeoimY2XjUPh0LK4
	 DHoEi8WalOw8lFY45yNpoEnuDruXJMUi/byaUVelJYgrjKbYfPqrjGJpdp7zZ7a88D
	 bCmSlvMQo0AavRggn49UP2wxQL6Jwg3PEeSaeVhJ1spbibM7z2afSs+9Zx70fPIf0e
	 HRJaCL5jJYLCJI5/2mJnv+OVRNu/b2MdICq/ZCUoRn6VsF+m6QcVmiKPWpgi/LTKmI
	 hHpJFnUr64Wk+jgoP3Ts9PA5l6THy903TfvXx1TVRBrbs62Rba3X3QM4RYnorsMzoh
	 7h5WsYTc/gQyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95328E98E08
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183749360.4022.14222897512024797194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89af5644ae33b95e9b1e58c52e7950e3fbb06eadda1ad37707d55ada278b9c79
Date: Mon, 23 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771837493
