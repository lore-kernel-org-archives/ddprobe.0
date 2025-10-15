Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1779629BDAD
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760554194; cv=none; b=B+j6ltaxFLcWqR2P6d1ubbhSM403WSGOzZxWe6kW1Mc1dmwboEQL98hJsJi1KYOY8tv4f4xA6oZjkM/mKTVROitBnauYLcmSHAOYge9ElxzNRwFivIuNsXzogxAdDNGvq8XCfXk/MFUtm3i+kKI7ptOhzvhFonA1Ccj+FBOwFR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760554194; c=relaxed/simple;
	bh=rp8Dw0ePzLkb20Sq6JnXyesk3tx+wszRTWzU9WUF/jg=;
	h=To:Subject:From:Message-Id:Date; b=narguuzdvobXVlQrnFRAYwkJNPNiuTAgC1XghsAsEnTfgpqpglMSFtZLDAhptA8OXTtowDYs7mPRCJM2kfJx6tz6hBKVl/uKdRjNj8jjdqFmmISbz8cR5deWURZiAwUetEbeVTgVnCK2uxhafY6E0rPEc/Y3y1eaaDHt3Gl/xG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTDmmQQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTDmmQQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2890C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760554193;
	bh=rp8Dw0ePzLkb20Sq6JnXyesk3tx+wszRTWzU9WUF/jg=;
	h=To:Subject:From:Date:From;
	b=jTDmmQQNqjXFeevS15yUmReiNRSuVXGzcHht/JWbpfOaokgOveuW58s59Qfb9n5Nn
	 0/oocw3whQ2jqYE3swRlSAtLjGAEoFvWum8aBl/+1lRCZf4RUbMs3SPRAaR21jy6/0
	 qUU707aMRlTl/+oITfbW0CjrtTZkIGavCqyl+n68+cLqV90ntcDNv5Mth2HqvZeqxk
	 ga97REgftNBJGliDyk5itS/T87j85yu3v7w2dqyOL1ndCxauY1zgu/980RlW5aJJd/
	 9BaBUAaQNyWu5gYb/ZHOAAYyrIzVKW/umFbNS2ulLScZ6m5V97gq4xEK+SJfr5Wo2z
	 H0iS3StUR7YSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B5CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055419358.27928.14531536910750213773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8bf19797ba8a0e4f5526ab90754a22f18ead8f7b43001eb3655614ab1235c5
Date: Wed, 15 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760554193
