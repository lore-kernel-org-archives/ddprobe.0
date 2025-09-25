Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B348182B4
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782994; cv=none; b=b9+EtRNvzuhGopDDfRl/z+F4NkoxKcCCeZDL90CXNH+LLQoZlJfTB4/VIRqKZfBhsJ/BlCV6Zgu1xlIl9NjAd9vQuPQ8WSgBEIJp8Lvn3/rGBTJ3hbdKgy66MlBPTtHH6RDZapqxIaeWZUV972CpdIKRot/2fo93AnZSxyHpL64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782994; c=relaxed/simple;
	bh=ftApiTeFCbZMHlF1m92l5sHCrvaIsrn182FBPZLKI3k=;
	h=To:Subject:From:Message-Id:Date; b=e10JlLNlf+1aHG0HLYbo6CzbUbLmB7sIKPoCPJmltgIn+a5RL0qfZB/qTyBjohvEDNraraFB0wuHguD5mYTsYG4C3DF/Ug+Gs6uz9xAWtZ+ljaFjDiKM3AnEm8oe0grWIEvK1rKcFS5urEJq4cPxbu+cTtNXaE768TsrvfO/eFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAoCrm6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAoCrm6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27ECC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758782993;
	bh=ftApiTeFCbZMHlF1m92l5sHCrvaIsrn182FBPZLKI3k=;
	h=To:Subject:From:Date:From;
	b=TAoCrm6KBKcnDs04Bsud+xN1d0g+85MvQeyqOTNO5/e8wAaoMjKCMFiXRim2uXPte
	 MBjfhAI17WkGv7ZYIGSySN+Cf98vIxxxJhC2xhNun4IjeR/VrpQrofrye10u0cILvc
	 /lEAt+yJmOsQmOPQEeFSjGnvUk7iCjwUMvse9S4iJ37ChT/ay4whbaqgLVm2AmLn45
	 SafMKlPD2rjvFgbmqkvozmZUwJh6LEFtWH9fKhUyhSk9RMHzMAazR0HljeZNjzSZns
	 xw7o/tB7barvAKKdxikPTDbYCButFmqax49D+yF1IMgnyj+qhbuV+SCU6h39tvLZA3
	 Q5dS1YuRbgUfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90447CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878299358.6313.10676724059702076351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 587b8be99563a3e9778fb684a5cd2ee01bcabe1e2010730a5781cbb1f64f557a
Date: Thu, 25 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758782993
