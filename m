Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D6037F8DE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774151094; cv=none; b=nmroESuU/B+zPnD6/pAdCaHYNt4Hx9i4Es7s9WZHzCgQZJ6STnRwrmCIRRKRQdTPI9Rq4U3SD9hE6U5kTQFqd+ndZsxcon/Yi6Z1b2L9cNgqJ/vZa3DlWYz/WGglubyiR0Kg41uhDjFZutDghqhnvHR4UmDZXm9EOc8obkb2Oeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774151094; c=relaxed/simple;
	bh=W0lTSfV1hGdxYJaoYwpUytSqXHi6t1bMRiZ73iGQEOI=;
	h=To:Subject:From:Message-Id:Date; b=f7GzoJLpetBJN6vPjQLopvRCi15c39vXEGC8Gy/4xGvbpVU2hlbxmUkL5jxT36uUWU4Sw5TFmGTkVzl66HQv4rhftm1TIYRUB8snjHMErKC0SBba0rZx171nCxTXotJhfl6c+c09g0FupQy+5CS1Y6g4b+Xde/hNketHuza1MC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKt72wNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKt72wNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ADBC2BC87
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774151093;
	bh=W0lTSfV1hGdxYJaoYwpUytSqXHi6t1bMRiZ73iGQEOI=;
	h=To:Subject:From:Date:From;
	b=WKt72wNlCen1f+b04axofGmV1a6enhkqWPaxUQI3LnFy7ErA16X0bxl6MjEQKxxBX
	 gBgRGs5U6t4+6TI5pQS9Hs58CQ/duTpVewNjaKSNh47V78wq9euZndu2snYAij9X2U
	 GkJLxiQ1JN4kBRIONr3GuEJDagPHB80X8xGi2mW1kBdix0Iu0K7naT7GvYK8+7zDJN
	 A1Z3SGAeSUjOA5H9EY2e/ADYnBfP6YgbWltcYKAehibzh4IqELGrpW6mQeNhXw9bbx
	 vrodf3qUZEiCwkUOljMNADuz3TO/gD6xadkYX6Ohjfa4Hv++0rQV9BtP85svPP90jr
	 +efxzRz3KyUdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233BFC72AA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415109359.29765.11946847553654182774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4bb3ff73caf4e7e6fc3998347b3d5652542083f38b040447a76bd1ade44485
Date: Sun, 22 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774151093
