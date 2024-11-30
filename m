Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465F813C81B
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732952154; cv=none; b=heTHLVKLoUfsR1z7Z8urAuV7zFFQ1vtYGMr7qDn1dRGCfOi4QJLQ7yTVEBCOw7jdG8UctlzwauuYkD3nvs3uRj7E1LhYrmR+S88H+yRaiJv1IA8WtaQ3098kIw/ZOMhIWao2JMc1d5stZ2lGbmqu5iFrKp2dputoG7lbKCGTwEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732952154; c=relaxed/simple;
	bh=0r0n0DpA+Jw4DyOUE3ao0fIfESYZywWUwuokUY9Dj9c=;
	h=To:Subject:From:Message-Id:Date; b=ibjWGhzUcgTDv4k3aHzbR6ZArbj/T28lCgAdSK7j+fSFbLO0qIqBvTm8TITP/yzLSDzUtVc6WyKt8Tf/vPS9g4K4zPGLUkvmqyjx4zpdA9xjJFlUOGvf0mRKEZGlOV237dktZuzKa3WH7UrgfLPJI3/RkCTWYaaX+tBLZBndI3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=De1vO/PU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="De1vO/PU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B770DC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732952153;
	bh=0r0n0DpA+Jw4DyOUE3ao0fIfESYZywWUwuokUY9Dj9c=;
	h=To:Subject:From:Date:From;
	b=De1vO/PUyXcj2y67WjN7133qhtYPmlFr13s+rf6BEjgJGPEPmymRDT76pHs17WbVX
	 3UfjNy5q2PYvEkl68TcJXk9PlCPP2cH0X4cABXXb/XLpPs0Fn1MCKrZaITQV7/mZMB
	 IJ2dAnkuxCMl52ME2jnh+n11cFe9JCGE3Q932ApIYiHbkTQSWiaVRLe6Yknyxj6dkY
	 VPnIoOeXb79Za1QUtVi3NjA7i3TSJJq+L7R5WuT/IUCKtyl0MYnOcBArcEakg0+qun
	 zQXRbMgpS2KwQw/rx13vQLEoZbIByzMZ9k03R+G/WgrUadFvpv91vqUAxhav6Lgkqr
	 08xDqYHjouWPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A469BD735F3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295215362.25740.16276364576332693692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cbabaa6e6d0d8688d91b5ecab5966b72aa6fa09aa78f9d99777d7e1e4f3794f
Date: Sat, 30 Nov 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732952153
