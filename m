Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D43B335081
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772360094; cv=none; b=QE7e0tKwsjRu8q1LxXnTexm8ghnFNReJMiiFqcPw0P+qFtk7TnsGsT2HpgKx4f10SYJOuBgZsK4WXtDlfIGDd6YIVStz8GujBaiRzoWfako730T+HwIps1ruxA5UFBNRvnETVQtvY3qx68LntquD8i7OktD40LYKSaecL6pA+T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772360094; c=relaxed/simple;
	bh=1hzdyeM1uRcM95pevtrgDPtTUvi6PfBG9TMNnleHOSk=;
	h=To:Subject:From:Message-Id:Date; b=oNqhZGtcS+RwUokhrokyQTJnq4Tq44dy8Ie3+43K8f2Y40F5aA6tkn0g9PnEYOLb7yM+dsndqbaTq+/hWwrsv+0w87HsRvvyAaASO3PBxNS02in75CwDxcXN3lrDzcVGmU67kzPxfxy8TUGuKwnTTMlG5Qqyc7Bx5vyeJPo/Y1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkA6RNms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkA6RNms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C7AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772360093;
	bh=1hzdyeM1uRcM95pevtrgDPtTUvi6PfBG9TMNnleHOSk=;
	h=To:Subject:From:Date:From;
	b=dkA6RNmsoAvZbJuWD5192Nh3Z4XfPMcvCspY6O2MKlB7AMtWdRuiHwzmZLpgF+UuW
	 scKWgdiJ6HHk/wNyUOTIh0c0qEFLc+JvAg4YVoAbxTk16iTAkzAsls5hjzy7//XOyE
	 eLxwMGNymCVliicZ5HVYEGab8Ni9UJBq4x0ux3UIU99oZgJd5QouSQsI+ov8+31Pm3
	 hc7nHVuK6SwwA3Nk2ezXr05wrknLc6FwtK6WoNobcKRQRx2lmoBMZSIanViP1xAYGB
	 bKrzFbnEt80qhAtrhbJtr2/g+E/kbO5jQxCy8D5Sl8Tz0eBTYVG/NgnR2tWBWQxAHD
	 UtISymenD3PpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98856FD005A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236009361.25038.3887199765980845849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a82d4331fb1c7696f4169076c0554866a35703798298e33ca752cb6e20c85b
Date: Sun, 01 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772360093
