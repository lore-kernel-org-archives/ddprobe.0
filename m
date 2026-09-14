Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF9621A459
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789351234; cv=none; b=Z2xxt2e+juCuWF80/zr1ibTAbUUfaef/Mcnc9H46FSySPN4Q4vKi8ex7r9te2bAwLFbBfgwpTEJMrleRjbg9WtALQFvH1yi+r6p+PwoVVnGkNU5W6Vq9RpclcGuPzFmEawiWqPAungNz8fCSHyCYvrCSHfyUKcKpbO2WIJE5ZJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789351234; c=relaxed/simple;
	bh=jSpF9Nxm4Gw7Hz1zBkVoAhuDr5dSUtS9XoQJm6s2+pw=;
	h=To:Subject:From:Message-Id:Date; b=ig5RpyG8embsQ2sS6gccW5/zPskQcw4fyTeGd1ZbEqOoiUv4twUNT1g9tc5qp+c5V7/86wl0o6mD6uHE2SqtSDge3wLWTDWRQOQgTUQxmqsselmySpApfp0sfhopsELN5BRwnYFr5rBkDb5OdM4XLFWiIGbFc3YJNLzmc5DMZSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9AzFn1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9AzFn1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2456C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789351233;
	bh=jSpF9Nxm4Gw7Hz1zBkVoAhuDr5dSUtS9XoQJm6s2+pw=;
	h=To:Subject:From:Date:From;
	b=h9AzFn1PhQ9qGrj4epdxFM3GLSxlLYnpEmuM3voC4VUO9P86x0K1r70NOzZvur/1O
	 TFushVYw7GbwfTAbiLGC0wyOM9SDFrXFtawq2HwFWSajGRnz5jVnhhhPXpm1J1gCsi
	 CBsj4s4IFYENZjWoeI0wU+Lxf2SXphnfvqfNWRYDgMcHGn4eP+6xpQmBwIFeA206dL
	 +4fmQpU0Zl1NJ0XjtgWcGA7dBJNC3a4YELvB9blvds3h3tfXE6OKqaFOTokY1dCtN/
	 0bGdcLd0tAEnziFFrvpXJKmGydMOGgvcHWeQKKwog+m2TbxGSkBGShlD0Jog0u4DfD
	 jf8kC/yhhSoag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAE9C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935123368.14515.16885741307940773480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6a7e1cf7e3c2aa56bbccdb758862b7f5f6431b34e0b60628a775d3e19dbaf1
Date: Mon, 14 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789351233
