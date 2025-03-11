Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EF3233D89
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741737536; cv=none; b=FJw0ol0lmxG9mSlaIltLR5oqgBS+TX6GJFrIOtRdPl8+KKzE/FISMHZ2hTMPjKolTQwUOdVOe2T8vnjpd89E0WalxoCXHS1v6/dFzkCHDEsOy24p/1vmlWkqY9mzX98agBKckzCcTqeyWJ0OVU31Z+4+QMvbkOFuACiJ5wpWYuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741737536; c=relaxed/simple;
	bh=4hR+BNMF6zNVie4Hd/S46ND8sjzrYni+k21EouSOVs8=;
	h=To:Subject:From:Message-Id:Date; b=scOAB93H8feURpYps9EITtZYLcXhcBcXQsvsMfv4aSpQ+xVB2dTdsDPN6NNDwLJOK9b7VPZ6dO2hk9fJOCzOerR6QAi+R4RMc53hyNow9xLpauOHlhdEHTbcELKP31DvI1hG03x0PvcmpX8f9UdjFZFPqwCg2vuRedFgDAv2C5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRNVkElX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRNVkElX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89B6C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741737533;
	bh=4hR+BNMF6zNVie4Hd/S46ND8sjzrYni+k21EouSOVs8=;
	h=To:Subject:From:Date:From;
	b=KRNVkElX2rhEOc4EaKl4EaJW3pDxgH52ah9Jpm98dhYxsu9h9snFzEjs1f1CPJ1HM
	 d0Ag++ZiLSQdLq4lBcF4MtRuqGZfXIgadPRG1tnBteD8WS8Wni1AqpftQoTwaMz7DL
	 ViBHJ2oO6oEywwivqviV+PulxD4D3cBYk5he99SjGNu2U22U9rS4D7v++jQXb+n2Ho
	 j/enX84lk9n7zjk/3mn8KSnGbWecuPGrDsSDDgJZJdEuH9ZwdlHOCXnjdRaDv8p0D1
	 jPB5FPleA1u1Da6N0MiCPD7A35gFDkAiqV98IueTdhQFgBtkSOHIF8qJz5bftljNVj
	 QRWkuoaa3NXeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948E8C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174173753358.31075.6479868633631274506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fa495e5cefcdb9a0954b282f62893828216f480ea06ff18c07198e21baf7ad
Date: Tue, 11 Mar 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741737533
