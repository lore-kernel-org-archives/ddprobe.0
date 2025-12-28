Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B898DDAB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766886834; cv=none; b=ZGbts59HGVVNbvbKp1fr540lHvFaMUkicG53KOR9CinT0QQv+bQ/SEwQ/yB5AJ0aIRiqUZeAST2OJFFnezCqdtAY+/fug/MrD6H4CYg0D2cW9iv5TzioYMP1zrsfgpduucBDjr5/Ue/0xIza73WHojP3ckvexLJgfmzA2LYHa4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766886834; c=relaxed/simple;
	bh=z5qizRB1NYsTA0DH2utQM+dXZ5g7Fwi8moSJgjt7w/k=;
	h=To:Subject:From:Message-Id:Date; b=DIOT9kNYiKYegOzBukQ32qUa+aFsWRZTCe5jFyl1swamktXd95q7M9/845mHwA16zSypbX7H/3EJ5yid6B5toBLFM/4Oe3tswf+3cf0Y/8pLWuDcge3WrXoahll8sM0KkLxSr1PXqVFOi3KML6ONzTYGtA9opZXT/WDzzSsq0s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugTHRLDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugTHRLDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BEDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766886833;
	bh=z5qizRB1NYsTA0DH2utQM+dXZ5g7Fwi8moSJgjt7w/k=;
	h=To:Subject:From:Date:From;
	b=ugTHRLDa21B1KamZHgPTP6ixcsBTjvYkTIyGDZBL1wCfVbcIGMzgK/qjbHqQCJ1Uz
	 +lZLBkjP/pJSrr+khyIDONiE3LLJHp17gbDFQv4fFFB+JcVKTlfEpQ3fcGMmCLXjGm
	 BPwRxJHtIS3YiEiGFmRaifX7omm+yTVtw0YHM17Q3QKG7D6ClW6CTRB5Pn0kbWKbsO
	 R7wPhmazEcj3ucm8KCRiPTAsMFtqWPAuMAc3ZQMHj8oVRu4XfewhSKmzIDgeuAc70x
	 rJ0F4PwYzv5DJR0UxXaQSGJ+Ha0UvGU2N64+TdSAPqyCliKbIY9gQdT8jsLNKOMyLS
	 kZMK/Jput6YQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94396E92722
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688683359.25665.13827331547203968706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860383903d8be676abd86f1b4fd92eebd9cdbced4d164d50d717beba7cbce49e
Date: Sun, 28 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766886833
