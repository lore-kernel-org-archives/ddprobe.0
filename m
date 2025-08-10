Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285742F5E
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754791194; cv=none; b=uPsa2SgcI5GdcDOW0LNBRa++EN25pvHnDNfv8MoBfE4e3XxHmDAxHHxoYbjO4I7oixmXzSczxcMfnNClsyZgCx6w9/qkEgOtr8g11aZ1z5S91Nw00QmxVVYCCPRkUY7dvd4yFkKCicOoQBLdcJ2T/faFTEcdS0F0+K31km9ED7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754791194; c=relaxed/simple;
	bh=UT4boeQMzN4EGXD7ZgSc+A8ULlVxQg6X9FWczka3yFw=;
	h=To:Subject:From:Message-Id:Date; b=ASTSfeq8cR3wO9zsiO06ZgSI3DOwQjDtaS2FjmOosCB4juVopNXGLHlCzY1ON6gCP+ri7MLJvtpnE0OlUAfc58cubHZXrRe3dWg/ztIW1SPo0WQvDmsPlg2R4wjosubKH/SP6dQVwHOAdeSSDMOFICa7GuZXNzP78j7jpm9uYN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nD1OgJvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nD1OgJvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1530C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754791193;
	bh=UT4boeQMzN4EGXD7ZgSc+A8ULlVxQg6X9FWczka3yFw=;
	h=To:Subject:From:Date:From;
	b=nD1OgJvFd9TkcZ10zJ7z6REfFaRCr2OHISz/Lsi6JXEsGQmos10KcrTeuVGTWjUSh
	 zfjyN8PRBVR2M6Alokm9cCaGbyiWotlqQMseF8vtfz7ybdoRPyY2D7HkYhWs/KosUo
	 y3VfnjA8SX1e/ZYOPEzxUcFCfB+tC/alHgMAFg3YGUiBNxM9XXxucbzi+s/a4kV9Ch
	 y7pN4rWG1qCnItf8nI0ZUmk8JEn/hBb/y45mryPRWMN1GTHvCPHdK76P6vCkR0EJfF
	 XpigIvZckAUMvTN2+RtBQn6OaUCiKcISONOulNbPb9b3VBiXC/6hrSZkOoLJ7tkx2j
	 3dW8BgpFsg+4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EAFC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479119357.31556.6758075802638955991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d517f4ba52de75029fae2ecaf29eb8676dd9fcc410bd81c426f1b38b1c75d08
Date: Sun, 10 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754791193
