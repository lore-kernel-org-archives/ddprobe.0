Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABF84A35
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758674994; cv=none; b=ajzP9x6L3eXA5WsJr+f6lor6v76QtpzWn0Pk6cF+V9QoHEKw1mtQ0zPKbBHxPe/jklbrk+MkfIzkUh815AG8WnufZ+Fl0BP/pOMP7bRHzr4icRETUa3z3CB4bxZ9t8OwRYCH0iYiqAkhXYp7t6P1x90V282s3LOZt+QRsS5bEyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758674994; c=relaxed/simple;
	bh=10pm/bifMMOET8nXW40pG8XIfUPyuujmtdmaNf8RNy8=;
	h=To:Subject:From:Message-Id:Date; b=j8bbREKbohwn7JfCZU06P4BGAczgO2WVEM24dIG4duwhc9VzoNolvoNZwHav2vC4ulpJLEArfgY5biQJ8wksE1GJQPsj1I/ySfsQ3MyePLQXwJ/6gc/mTVflm7F1nOs7Z5z/BYH7jRgYp1MqbMFK3t5mmRBay6p5pDQKaG0hftw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsfnKtCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsfnKtCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B2C113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758674993;
	bh=10pm/bifMMOET8nXW40pG8XIfUPyuujmtdmaNf8RNy8=;
	h=To:Subject:From:Date:From;
	b=RsfnKtCvLI0x5ye23VA1PRCeZMsSeGMKkk1GIeDHiceNZzVgFDFpr/d0R/GMj1dbY
	 bN/uBkEP8YAFbS8pWu6TrAUj0LVczqXJ2w2VrFokRIrUqOdKqXxBez3lT7rs+j0Poa
	 +d6ZCPXQ7/TE5XI+gyxF14q9P/ttIv4PIJBTfRgT+dbuA5qI0y5C83oRSZX48gaNDH
	 cSTUxXLexoxojbBBoNjTEmSVeRWonlIyv5En5w82GVKRKXbI5TRXDp2n0hrtfwbBFv
	 Rjnkgq5BLv/nATo95gYAgegv1Uwc6anzEqSEA+Fsr4RQHWoTfeOJUkdpw85s5avukW
	 HY7V04CmGHyCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9D7CAC5AC
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867499358.23116.697689186992616689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e1adfb09cdc0823dd0c88220aaf872111f1df979a8cd12d90e957030a532cd
Date: Wed, 24 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758674993
