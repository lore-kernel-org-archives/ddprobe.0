Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA174779A7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780590274; cv=none; b=WQrpy5kj+gpUOyFCNzZMxXbbGycBwIMfGhwJz7G0Tm1wCx4N7sDloBqeQOSMrkgb97Prl2Me1jWQ+44rjBNQ4zAk0+QH9UgPvwLZZ0qC00ku2tPEmh8bOzRmh4b4QB9TDdrUq15WMFKts7S+CY9hBkohlx3mc9xYYXII2eYd2Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780590274; c=relaxed/simple;
	bh=RJWZp9btc4JZV2XWdpRGjA7bKZRYXDv4DiAqyphM/wY=;
	h=To:Subject:From:Message-Id:Date; b=n48/QR4G7QV7nawmjU/BbcMUoAECsN7lOt3Lc97FND8F6Yn6bjBLYCzxoMSm8/b8RO6V4lAU6FZn9j8Udis8PnO4a4pF3PiIoMBFJ25BgKCNpGn9kuowT4ws3/yA3Y7qCky/uLSsMJXuFKTqyJlJvyNtp8B0UkNblr3sELeQ+eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LY7+geOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LY7+geOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6840C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780590273;
	bh=RJWZp9btc4JZV2XWdpRGjA7bKZRYXDv4DiAqyphM/wY=;
	h=To:Subject:From:Date:From;
	b=LY7+geOlpIzEFQGUAbQaK2MDSm1cW73+KYic3lM6FGp35lDzdBrSNw20jPvmeDvVV
	 CQMbwu++ZeopgepI3h7fYNKe1K/GmlqetqgoGcd/drD44XWnWYSKzW4SfRNrFFmptS
	 iEgAVSegqaMVu+SXEgl554gFT1nziRTIPI+m2qDr/qfCRkckP1qL5nUwXIAWbbNOK5
	 FgsH1QTIHpaDJ63kBh/tpCKZj+o0UEN5ERAoVDEHTuu0jNnTN1CndR041jlez7kEzw
	 p4OBimFXqjb2u/LLpBsRYRcRZoh/dVETo71xuhZZ1e4eYwBCcJW8Y+Z8vO/9SL0BUP
	 d/hsN85JLBywQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE99ECD6E6D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059027370.25444.16738357716244681389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f6bacf9fdccbea357770d7abd8d84d301fa0512043b0456035c3dd2e7dfe0d
Date: Thu, 04 Jun 2026 16:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780590273
