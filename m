Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239343FE7
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752301794; cv=none; b=NPa9XnxM5rW1+usU/kSOcCjJjRjl+3ZXqJbuZHFmV8722xCXygl98+HDVLUGVIxNGviLhC1OcFw4W45E5BlHLN+BCSPcm46r1EYgYThvP82zFnIgXHjabu0YYJg6hWkPymPrPXBuei/GKFK8FHQN0Y94M6ZSMWy16+aAbGy+36w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752301794; c=relaxed/simple;
	bh=dxjhG2BzH+jjWm5q9tvps3BYUpWuXzDdLPcHNUg5Na4=;
	h=To:Subject:From:Message-Id:Date; b=Ikn5kYhzJAdtow3opb6i1cyxe5ZwVz9nQp0Vb3GA/utm5RiUyBoOxLAIFGTSPfsgzaO2jNt2Fkb5KCNw6kEV7tlyDCUYnMB+O08yNSBwY0BRlUQtISl/5bpG65kVXYRmSDoqEXvzn5WClsr00uYFqZqgctHZVbPwLkhLq6nPEEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TM1kzG64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TM1kzG64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26FEC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752301793;
	bh=dxjhG2BzH+jjWm5q9tvps3BYUpWuXzDdLPcHNUg5Na4=;
	h=To:Subject:From:Date:From;
	b=TM1kzG64fJ0zhqDEYTO17xY3SiUKPJNigCkeSlauKJL8bPjwk0k4oakkfgfoc0AOv
	 zlayNj4rlgNlb/lKELQfNpbS6o/frctybnt0wROEnOR8ffj9akGUfWu/B3bSqqlva1
	 pMyfyVa8P5tmQc/Jfxo5w0yVhQy5r0O8vQiAXivOquos0SaiqZmamAoKHWiS8joan5
	 FFrKZIDthmRYwliQU+ZW0lPYug7lFw44xP+tu7ITDMswyxFcRitN+nnIuI+b9KRXWh
	 JFe5s0sqp+aaSErTeNA1AaOG9Zqo41rngoIcF2nVxZYroJ0/uBnsOE/FyfT+/+Vy9F
	 z0GucveCwABjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BFC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230179358.26236.3944647468283400859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57706b00cc1a6d1e32600b36d0d50ae1a62bfdd0fd99dd514e54c353adea7f11
Date: Sat, 12 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752301793
