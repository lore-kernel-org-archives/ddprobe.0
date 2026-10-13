Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E26F3AC0DD
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791921634; cv=none; b=dUJJ0OjKYQatXAPQKSKYBGimmxTkOxWnfb57qkIQ0rdxsYymPXyAUN/QWOf9zIuQUMVej4TB78VOCZUfe6ssb9jYJvxImc2HQeI/12oaU2fEsVJ5VblveiJ5V3X4PzCjw1pYvPHKkXtBibc+V2IBBEsoyAyIMjUUDxsN/3kj7YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791921634; c=relaxed/simple;
	bh=R+tQaldjAKsrrZDh+1xYPvDo7taCyREsjlDDcDvvnsU=;
	h=To:Subject:From:Message-Id:Date; b=kyip0M2Rbq/Uih4jyoy7Z2sSKJx/GoJ9N6XIm4yKZrsA37SfwmfrXGhSjCEjAxwVm2y780A630U5nUXVpJDBeXh2nP2w8yZIpY9pqIIkV2axXyNyJV9zgl9ukUAjVlQKKw5fx6giY4pKTRs072gyhdRThZC+871HAic0C/eo/Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLnxOESG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLnxOESG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F88C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791921633;
	bh=R+tQaldjAKsrrZDh+1xYPvDo7taCyREsjlDDcDvvnsU=;
	h=To:Subject:From:Date:From;
	b=cLnxOESGZIhCEfTFR0JeCddOwsR05LEzz5wr7kJk37tHi41VNy0/fuwJOVwvJO0ap
	 u0r0D64VMCMpgTfo89EZx1Y1xB1uu2c2WZmrj9ODb52ICGzBL+t7dM6v4swKYxeZ0X
	 gM+8Yf2cMXa5K7cdPNKuUcIV4KzNheNraeZ57XiJGFdMcdRkVXNcoVUB9afniJZrd6
	 H7TdEmyWwGiUdUYEigI78yP+mxLbG4V/7pvoJx/L5FbWeF03l1oGJ6in8wyerB/wAV
	 ubjIRQEnc2m26s0vj+gTYKz89C/9vU4iasiBvKRwF2bcv44ViVYkQsA1hZt+D8el++
	 cOuD2TkPAXW7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6B0CC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192163370.16246.17269821267580199981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5613e673e2ab3a9bf3c3eccbe484dfc0f3d9213edc57e8912a742d30cd8951
Date: Tue, 13 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791921633
