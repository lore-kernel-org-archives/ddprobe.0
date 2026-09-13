Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C92357D0E
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789267234; cv=none; b=bRsBcNpu1x1sPBZKmQaWkWTqzisN+Ct+lISaJRVuoCp6FnomxlqO7vco9txUFed9DuZuvVPT2e9tVFjjhREtpwTjPBdPTofWITx0TcHk9sBDF7CEMxBwzYX7Kj30TXFxgOWQIsly2zPeIIMBNvFvSk2VOOvVglVsbdR2VVSPIFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789267234; c=relaxed/simple;
	bh=2bWoEWa17VoiH3lmNyu1gLG5MP6GP4oxjAsZIAL+Qf4=;
	h=To:Subject:From:Message-Id:Date; b=fYiF8Yq8xV8cWTwmg0AJnyH4AM669M3t7xXele+fOupH6QOS0k3A3WQK9b1J54qwHPFosNrCQChY/S4CIO9eNHEhUp2cztmaY1fICkGWPxejxrHtX1da7JjB5Y+UJSm9+VxIPbei+sohROLTFDKLeYd3PWJ1Zxoy4VZCojcvB58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXlqOSuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXlqOSuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8AEC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789267233;
	bh=2bWoEWa17VoiH3lmNyu1gLG5MP6GP4oxjAsZIAL+Qf4=;
	h=To:Subject:From:Date:From;
	b=WXlqOSujBkg71ylqYzlt4iBTJ36HcbFZeT+Pt6yD/JJn8HOYi8uj1s5ObdeG+d5pL
	 iuF9Ll/hstBHjobzEirPs4xqG1uKWVHXo7q4ojPr51DLseeQPbfU+aig9exH1HN0FG
	 xZ+X1/QC641aJKZbNEeujW4x1ysO6jGU+Gt8NRClyOCg5MxFNEEcPaZP4ljd9kpYE/
	 cmy2412wPssVRM2tWHgYRxdbk/aKaGgd28oLeiIK9sjxaiV7lzQIP3uZkb1xfPXSMQ
	 Pex4LEBKclv/8fqXdPNEDouXHe+iHVirVzucIQrx25Pz0C2O3+QLS6lK/jJAsNMu0c
	 pnuMG7UMh3sAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B570BC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926723373.25372.3667468729622753164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ef7ceac3165e157e91d7e57796388184d4a2e4ad08f819a795051ea480149b
Date: Sun, 13 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789267233
