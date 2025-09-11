Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5001F63CD
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757557194; cv=none; b=H1TY7ypdpXolVNNy03QEHafj/33siQzH6h0jcE/e8kZpSHH6KNmhNF6HNJ4wSnrFb7O7JR2FrbUg8CUa+s92GDvjn82riuTOUWQRlYSaOP1693pt5x3vPjmW5NfzPBJ/kyY1OpbLe1uMFTgLn/yC8TxMgeIykbvj3jfNoWmaISk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757557194; c=relaxed/simple;
	bh=EJHWjoXbze6skW/RUzRulGFPkx9kp8g4kgTCwONxSmE=;
	h=To:Subject:From:Message-Id:Date; b=kJQDbJwMePsULP1jKx89eUvHVtGK6WgiJJ/oMlc5TugCGZONpRnJPkmoqTRKEyk3MfL2AVQCINpFZFkNC5TvO8hC2tiLlMmIbBA6SJ/w/P3NPar3BDoksMyepWIk/RGks1/0BNWegf09JyERhCqBndOmVTgnHVml/Oc+gvBaPCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAF2x2wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAF2x2wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2B8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757557193;
	bh=EJHWjoXbze6skW/RUzRulGFPkx9kp8g4kgTCwONxSmE=;
	h=To:Subject:From:Date:From;
	b=MAF2x2wrs812CWagMPk4hYsuV4Yzb5H8aAs29GBLS+W7OvopoBxHliibfm0+9cidt
	 ET7zy1C2k05YbvBTKvCYqltyc8Ppjst62CN4FEk7JnKkcbOwoqstZ0wk1+XVxmt0CQ
	 6cBVX1Jvd88jNGBumnUSMBL+/naSfOHlJl/Vj0ywG8fp9FK8TAk02oLt2uVUBS3dEV
	 3Xp8fEznBeMkZXaOLoPOmVv6hwn8nELULFClMNXenz5ZTttVnqVSB6czpm8Br73+Db
	 Fdn0hkxs6mqm+HbxRz5k6usI0kE7M9WrB7rnLhLhO4DhnAvzQFZmRoosg82vso3MBB
	 EDHQm7nxj0GFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D2CA101F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755719357.10361.7573649673953364763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74837bf1834a7e043a32794e503c2ad116dac1697949c92677940071c29a715c
Date: Thu, 11 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757557193
