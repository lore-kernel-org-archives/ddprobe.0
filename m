Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A008201261
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752223194; cv=none; b=k31XR0q0xz7wDpnpG3+cpFwWNVZBA/TQtHqQKP6G1nhq2TmTa2P+9jR+BzKtEIeJEjdv6qd0FRp3kKCM5gn2ZitFlrWKEEY7M+8qFjjkSvmFvj7tYDOJ36+yiLLfq8IoU/cuumDUit8d925yfS5lNukf05S3Iutnvv35GZWGCCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752223194; c=relaxed/simple;
	bh=zZNXz2bemM2wCMEOwqkGFAbvvDJSpVNcJDz3kvsAVAY=;
	h=To:Subject:From:Message-Id:Date; b=O721vL/NwFvfZmzf+mZaAJMrwcnkKNPTa6JaoGHeSen7KrzayW7j6g2NJXqcXWdaVAudaU5vZriw8Cus1XbSD4OCBe/hLQIHUauvFy8jOHAo/aZfy5YizVa3RZJfE0Ot2vwi0LoLJL9FX8C/nJ8M+ufyHDCVcv4kXsbs8eGLDy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIPL2LWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIPL2LWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF59C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752223193;
	bh=zZNXz2bemM2wCMEOwqkGFAbvvDJSpVNcJDz3kvsAVAY=;
	h=To:Subject:From:Date:From;
	b=DIPL2LWmHyudaffXcqVG4NO9KQjTwD0dVrR7VJ9eqp+2rTr7S6LkCAOSjrBSsxnWl
	 8w3u4jJAQTJEFw3mWsmWUYg3PQLwpHpQDNWwsC5NVrvC48xbLHyMxfHOx1jvFXnwRq
	 CeJ59zX0UQ1eiiDcwAdhVBxlq45xBXzdyyYalwSt7JRiaffvM2vxKACYjfoFlWPxzG
	 wKxY+tuBq9NycqF7O8oLAuPtu3/fH3uP2bg2719mxo8dF3mb/cecidvRhFlsmSa90p
	 U2JuyInhprFYOiWA3UkBfcj/wXWA1bUgO0wgOMACKWf0CFdntMrcdFea+ZAzNnMUq3
	 6ZOJz9ws6FG7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA8EC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222319357.21607.13611060713658831458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf6220c4c932334d6d86617baa1274d4d517c97d6b35e8cda54d954c22d1ade
Date: Fri, 11 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752223193
