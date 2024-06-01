Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8108914F11E
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717242263; cv=none; b=aKXaxaASPNgg4w8q6JNOPyPVPuuHYc3uGpbU8qS2bAHGQ5lFXCdagD5jspTb4wSmmFJN7kANIAjpHDGC2WYzNy7AEdKkMURFmQXxpvdRrV7dYC0ne0ptfFYAlxsesd50cAwJgubHdX9Fk/zh1xu0uJvfYQvgj9tGYOeBNRTnrbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717242263; c=relaxed/simple;
	bh=IViD96miyfs6WwhIGuXokzbSJPHD5uN2vq/eFjlKURI=;
	h=To:Subject:From:Message-Id:Date; b=sw+CJUwgvpS4pz7RCckpRkzxpFpPDM+aumJay/jK3BOH9P2DqsZIw4+xf8DLuEtODeIoYjiAtyyejbk6MnJWzZJ0JNShFF0hxWMEd6ugAiDCX3l01IgsCZwJmJyNCLrRwDMUHUFZZIDyvbeakhznWMmLg7XNJ/9VMer2jQXQ4ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERW2J1Zo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERW2J1Zo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDF9FC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717242263;
	bh=IViD96miyfs6WwhIGuXokzbSJPHD5uN2vq/eFjlKURI=;
	h=To:Subject:From:Date:From;
	b=ERW2J1Zo9gOhiJJ/cbiW392irCr/g39yk0ekuquw/S2ltNFZxUiqw0ysUtEgdEyKf
	 HKZlr7Q9wkO9pZvsztnPKopLWbbDvR0mUxekooNVjsms3KNQ38Tb12lMlQbPon+QJ7
	 d9nLU1enLfSpsu7gD9/LA9cpOeqBL8wntd8TIM/tR6AV+rx9jBdNEZlkHEsHX7rzg5
	 tT3JhRLeX9HZZbpmL3Z9dc3G/ngtcAdhYpTbtSSFG2DhT5Su/DGLZA8hPIt/mSG7LF
	 B/gFuyMjU7lJUS171VXtCoYz4eFWDoPvwKk1qP+fKUFaXq8jG11Z545RBEy6XKbpjR
	 qYm0+7tHbiJ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9C4BC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724226285.14222.3568153984220613040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bfe9085f3804e141b533551129bbfa01cdf64b215cd6d0af1ceae6fe33a36fa
Date: Sat, 01 Jun 2024 11:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717242262
