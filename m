Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFA4B661
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738157154; cv=none; b=jA3tPI7KqDClCT4n5g7OIFOw89OocFbD3WY/vBEwHHitkXTlesvXEi5q2T0wwX5rVsBsYqUEGqkkV5bskUUOWedoxRKb69iB7Tn+MfP68XngW9SQ6j4nvidUEuG8BSq+41CvI928jMgY5gdeUOyKAquuH7JbOR1bGn+hlw6McgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738157154; c=relaxed/simple;
	bh=zufjcKF3YK4jaWTvjTOcT/KR2C9QobOucZYFXXx2CWA=;
	h=To:Subject:From:Message-Id:Date; b=eJbBwP+1qjufVAzqrkIzM03X1ZDCBicoX+m9ry5mf1gKA90kX0dBnaheU//PwMemUANOXqpz2d4qGyU8PfFEPXVdp2NvAUspAtNSzsI/yBhr2V7FFMa9O+zId9jVijsYOJIah9DGffTlKv9m36p3WXO434Mid5inOVxuDvuyO/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2/ChHJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2/ChHJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF415C4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738157153;
	bh=zufjcKF3YK4jaWTvjTOcT/KR2C9QobOucZYFXXx2CWA=;
	h=To:Subject:From:Date:From;
	b=U2/ChHJW9hFOs3sSA1N+wWui6f7niph4nu3os7w3h0iJw39/yeaPExboIuM3xuSn2
	 NZG25eLJAKeCv2H0e5UckjCSC/7v94SZS9eQlG1FJkIqSRiddxPk8iJEtfGYbwnZr8
	 hm/L7BzOfa1rQgZzTO/rG3aqUmYhJLyOTbkVQR8JNOywejywkgd2IFi85ZFIJ1l9Db
	 gsnJjZ/yjyJEokLHb0FCE4lF4RrhTJZv+UXK7KouDT1JciZD2beSv1BCyooOSbbgr9
	 G5yLZ4IWOcPMtya6uvIf3vMlCZ5jzwKQHnhZ+9ZcG7vuWS9lRzrweSJGPY9aRYR606
	 pJT6l5IFiMcvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9948EC0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173815715361.20370.10841117506211157935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ded3dc394a236d2ad812fa390a77edec78f8f098a3b43065018b57af27b0ea3
Date: Wed, 29 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738157153
