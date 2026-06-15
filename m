Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C65223D7FF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781493994; cv=none; b=PhZ/pn1zNXaUkC48684Sz4qEDkafTycWzWguBCegdj8QWUY44yTtNCscT9BiBNzFZzBtaOGssDHpwsRPCHneSa/oC91AY8ZlRVJTUCTGf0ZQ6Mio84z82YnpIGHkFyk1VqkYpAaPPbz7+wJ6I+9jGqSsrbexRTugEF5pECDqBCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781493994; c=relaxed/simple;
	bh=hfYMRroBvhkPFGpDR+Mdrsi+LZK8xD56mQ2kBJlwPWc=;
	h=To:Subject:From:Message-Id:Date; b=O9njsTqc2ABNv7Cp5niq2R+k+qa0I7I8KlIzPWH3by2VqOC4yqmSqyiiP5GiXxsVXbFwsQ2dgF7W+HeyEzeeOxzJ0Tvh0jR8oJ+MFaIJKSZuLoExQUN8aDbRsmIvrCmI2D37QFJmlbCgOHzqQgi1F3gmqcnlGK3nPM+qLlPKzkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grRKP7ww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grRKP7ww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D7EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781493993;
	bh=hfYMRroBvhkPFGpDR+Mdrsi+LZK8xD56mQ2kBJlwPWc=;
	h=To:Subject:From:Date:From;
	b=grRKP7wwBFgwQQJ1tNSGEWgoC9VG2/3RTMqvYpykNGhA/zDbyNulqErLhWrquWbfO
	 XjUG8PyYEM4C+XoS/iRoYPYAuhzvwdNt3E5zFXT6dGCKNOQIWYnyI8Gh+kcI+axJgR
	 IPj38gQps4db4YgweMHBQJQ24n4wXxj+4awtMZghBn/aUWYk4JSQ0hxCl4Ur0CS2WK
	 9+eOPOLGpZE5Yf/lc4SuH4K7L2zbAuIwzSqUVnvt5TWYazrtRYpaShL46vFcvxiRXB
	 4YEwm/sDGfETirw+qaQWnyNGVBRuN1JPyJtq/V4tWebpsVmQeDHXtMXsJou+CRGEQc
	 Nqgb9Zuo0ZhqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED3CD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149399369.12067.13143908908965976552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9b55fcdfcf5601c4d4f2b5945085edb61c1cbf0b42cc5bd8bfb62d6bf4d79c
Date: Mon, 15 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781493993
