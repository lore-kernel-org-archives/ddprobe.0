Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DCE195
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748651394; cv=none; b=P9icJLJqKTII5TlB1MAXSSftFaG+/Le1akLvZPc6olraTBBovUOyXf/WAQ3cAejksstRarC4kKzZrV2utSf3+iKu+l0dDLff7akD2GYpC5F0+xJWBQGSF3GZp+CXROg5c9TX7dFB5hTg0kRsTadcjD9sNyHWvwEcjFR7fv1ZWmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748651394; c=relaxed/simple;
	bh=A+NIINno+abnRKCTUz1ds0WAlsJlLY50cd/Qt3cKVDM=;
	h=To:Subject:From:Message-Id:Date; b=j8mEzX1oTU04jboLhhn4tUpANl7AGXRhrpijr2dgZfuuwKKvrW15UaTHuQX7su7QQhMUDAktPDqDXvNaS51raVGd+mNNpqxyffZbRa0RCTlNFN0EVKf4sApkBFVin4fM7IMGBt4TnQCyTa9RjZMqg5ChrijF7nTuJyDlIdoGAko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQ9LnMp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQ9LnMp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EBAC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748651393;
	bh=A+NIINno+abnRKCTUz1ds0WAlsJlLY50cd/Qt3cKVDM=;
	h=To:Subject:From:Date:From;
	b=jQ9LnMp/eHPV7EW0Xy4CD2Rb/8UBEYUaPol6wDVKzhid/cLcI1cPnWv4TQSMRqTUd
	 URMndofDl+1cOEe0LQj9QfzjlL+Z6n/CWPFnUM2y/rlPxXJEw5UEvPC5w/0F8L+YB2
	 BQYI+YmoFoNpQDXIoB1ZS9SVvCcV3bxPwMPNe9QSgsz2lq8YmzAEmWmCZetjW0N+l1
	 AF9kdRW/jY4oMlOW1VX7i1ePFk7HeX0mO8uUczEng0R+7u85v0U59+j7dgEPlaC9wC
	 Z5VzVY6FV8DCH1PXJUn9lLH1P9L219TeJKoUSqeyjS8YW58AuMXhagrhcRBkCGFhQP
	 umHmno1VYh8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93951C5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865139358.21914.197030605416069525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628e93a49583bd20f9e6704754009cb23f304533bbb54f07ccb110cbd464b9d4
Date: Sat, 31 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748651393
