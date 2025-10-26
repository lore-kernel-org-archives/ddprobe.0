Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF512BE7A1
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761510594; cv=none; b=Je/U98EZXWT/Xr4YPUF1PoUkt6YGyfWYHNxvSHlIF36D964+Fg4x8/VTJ7WWyk8ldpQdJNxLE9baO2K8QOyNSuBH8SAUDuGvmWjeAuMqpSlTZnfzFz8a7hcWP3ikC+kaeBYpGAnCk+MYiDSd8Qi2XQ1kRMlWay/tpTbhjJjCjGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761510594; c=relaxed/simple;
	bh=dhjaIfFY55CbRvc0wKP2zmrTrdCcSCGGdHKfyNc2E6c=;
	h=To:Subject:From:Message-Id:Date; b=ILE1cfH+pxGTFarx+Jg1Nil5BupVy/Mj0xTuy50jb+qYfsEQ5/HkPXE6AhM6d+SqD1lmDxQTsMh+uVyoTCkY5baHubSYa9WwOO09bbiv5Wc2HFEF1P//5QM5sqZKvmwIhATjczjHgLGZQEGYL29roxfE1CKPda9nn16APpzb5Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aR1EjA31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aR1EjA31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A967EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761510593;
	bh=dhjaIfFY55CbRvc0wKP2zmrTrdCcSCGGdHKfyNc2E6c=;
	h=To:Subject:From:Date:From;
	b=aR1EjA31dkIQY8/tJcsdeqOXJnPZq6EyoXNDxOGoL0d9WN/YGJYUreGxCbIc8epkw
	 n8Hg9KvUXKRZBCsfbYkNdRlRmdjODPzNHRqxDeDCVeldcI0RiLktyQDFWXAgnRT9Lv
	 VPzvyp5zpRTJmo/cp2iv2hhQ93bQqWA8Ofm1Zhg2/eCFchmZQhPBLctGAjWgminGK3
	 dJtXhUCq4mT0UxetH/lJDkWO0NriLnrYGb9AR7Vb4UIgIOrFMZcoEUN5LbgnNO2rgo
	 IaBE6HmjIJWW6CI0a1CiceJcZcyzS8ts9xlZhQUv6qQErpxyScsEBG0yvJNSJfoJz0
	 0ha42lL/scd7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95272CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151059357.16132.17933991500831346012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447506afc831da9b7cbd870713a881d237a44fa523cc1295c51ed3367e0847c2
Date: Sun, 26 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761510593
