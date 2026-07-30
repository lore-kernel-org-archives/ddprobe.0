Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52766469830
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785428434; cv=none; b=MyRT5gmS2UZq3y672B0441hgtR8xXqxVhojeJFqsGciKSisYmHepRahbATpWXhKhXQpUyeTwz9hpsAN/OYyShZF1SFFpXxJAsLbHgSseLbyFiGIeCOjhVpI8ANqODGJXJykOg6vj3GNb7bNxv3puHid+elcB8vWCI3q2ST0Prig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785428434; c=relaxed/simple;
	bh=/QmyHs5mQK0a5XwVP/aVEBJS0KovKGPdaI5xkYz/99E=;
	h=To:Subject:From:Message-Id:Date; b=XFY9PH1XrmMLxR2zQQoFpvaIKoimn/HHqzT+eSDpXdsdrQQuZSBCfQCSMhDNkj1cqea9suYSw7PSPxLbv83DjJEAc+Psm101IeTQy32fu39nM5DcS+p67ri7AH3F1//tYoc7NhL7Arqzgx4U0b0Vu6EPcGpd6xvbIhZtvs9N9XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gn6piRt0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gn6piRt0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70FEC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785428433;
	bh=/QmyHs5mQK0a5XwVP/aVEBJS0KovKGPdaI5xkYz/99E=;
	h=To:Subject:From:Date:From;
	b=Gn6piRt0kicW7lTYNambXxs4jvoOOu9SwlHY/N4zngjGugTqSUgLWovYe8tyQH1zR
	 w3d16O5ZoIhLjnA+R6+FDReTH8ly5IR1/VfcJ+rr8jDVp68ZrVbu6XHPJdMbegQftN
	 ZhmK/BisgV9vFEFzk4m2UQ7/bFqYFR8jSSpe0sPUp6gy6/B+xJFP/SaY/Ovj0hl7ks
	 9aDdslnjC1zL6vgCWOkoupVZCb9WsxvjWLfW8D2TbQEz9NHgmdt9nqkHAEur3A4yPE
	 BIyoI3UYdNfdD17yigE4Bwe4GMsyuV2LqG0GVL+V6YkDaR1o/WJQw6a3T4CXjUV4kq
	 FEANozgSarUZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A4BC55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542843372.28989.4884919942374493944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7798e9cd2bee08f716eb5130779e87230136f3261d55d8cf9c7f0d437a3ca4ee
Date: Thu, 30 Jul 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785428433
