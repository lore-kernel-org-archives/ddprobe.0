Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEDB143888
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737271554; cv=none; b=JaT0QUIe9nF+6dpV14Qxd0DH/y+WCnsfSaBek9cMdZgQJ/cTkCo2pG7D/O911Ff5qna0A3D2n4On7fmlq6Y+7fP2HpPpwmeSeR/sEEORBW3hd+Z4Vv/pLmhYx0TodzJRmuLGQ2fOz6L/eOcqkWidz8328tC0mCRylE/Mp4yhoSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737271554; c=relaxed/simple;
	bh=F94uN/0QA4DmJs1eInTMVx9CArPoFU41ncVSTCPiIMs=;
	h=To:Subject:From:Message-Id:Date; b=uIL8K6gG6vvIsmImbVzyA8bCIeeov0o449MYWq28tBViEM9DL2PZzsCSRq3UnVL6LnRdu502qHzv3UsJFvexnch9awnNDZxmREj2IjCvCfPBr1/7jYBuplRl1rA4l58sYmPFfCdeu2l42ZL27xFLJcS6ueFbrIH+eaA2wwIEr9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtOnw7Oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtOnw7Oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE1FC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737271553;
	bh=F94uN/0QA4DmJs1eInTMVx9CArPoFU41ncVSTCPiIMs=;
	h=To:Subject:From:Date:From;
	b=KtOnw7OhsypXm83Rh/i7CWvmSjc3Qd+s+3+h93HSGUJ+VddxM2xygYvptYy8Kc1TQ
	 0VNpXCx1Jyx0TJwZOduI93KbRRei0EQAgU2qw75kmrig8ecOS+aE2sWyUXFXnwoppQ
	 uW37IcEt/9XSHEJF/7pJbT9Y21LEFEYvUY8dgxur8bXLG/YQnG6gOfNp2KXr4PQ01O
	 W2a38Pn6XUu8NtokD1OD2SmUdsf90KnCuSmJsY12Gz8GbJCuuy55hilFbrFMyikxw6
	 SynXCqNYffWRagWlIObDmE0v1GztWvXFqu74IdWwVtXCWo2j1HmUyQVr451xusbcgh
	 3WiyRZ91Rh44Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9906AC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173727155359.27733.17952541386056137719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abaa78bd582c426601a7e1939b7019028152f7f9b45538b43fb8aa2074e250dd
Date: Sun, 19 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737271553
