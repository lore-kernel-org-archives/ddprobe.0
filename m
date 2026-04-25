Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8F23822BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777155454; cv=none; b=eeaueQabqybFSpFwHxXyxJrTCQRvtkMzc40VLlh1pBPhJbLrn1SzzxOCzOSDo1kJMAP4v5vNIP2gSMcvp20mo3WD4KC+/f4dkhJsShMQkzW64mr3zvLfxKSPb0n1cCxejE1s+f0E/0p88/bmvIiRgmHBdC94Epjlz0BGjybCclA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777155454; c=relaxed/simple;
	bh=hQRI1oGLnFgpbfaorA6ZKWoyXveeK7OEzEkxEK31KBw=;
	h=To:Subject:From:Message-Id:Date; b=MsJSX1dd47RcObXtmQm93rDGGblO0FNT9stRV1B4pC6gYOJgHN6WF8fF1RuVuX7HXq01Br45VPSc/cjWhrW7A1V9dy1/IywdR0z6udgEM4Nlx+Kkul6ccKYx1lukHjScLgYKY/ulzVBxkYExfE2FjvTIbN1NR/9Gd4DroCFTG24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Up1fu04x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Up1fu04x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB21C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777155453;
	bh=hQRI1oGLnFgpbfaorA6ZKWoyXveeK7OEzEkxEK31KBw=;
	h=To:Subject:From:Date:From;
	b=Up1fu04x0FHZR8597sAieFOWx620t3fGw+LAF7O0L6kt27DObVc0Z4Gs817ubNxDA
	 tgvg2spvuoJiwxk67LBkkO9d+F2D2J1rWGZgJP+Bbr5XBO+he2K9BKqpHV9tu7Lz3D
	 iAx1CMk/WjggxTHohX+mdiXCfL31aBgQd++VJqgWbyTLZZU0K7zyp00aXgrPLqGLh8
	 dc1+epC8PqRH8b/t702RSzzYAuRED/PUuvOySusg2V6giQEdXnum3+PiF37navx1PN
	 tCU9luX4sGVVeOxpuTe2aO06pjvi3XUUpYS1YSB4LoONrYGD5A9tli4Epf1K5CTIza
	 tV2VyHloM0QVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF889FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715545368.30422.5516423030225522336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e5f80309ba02b9c1f8f667033046ec50b92416d87a30019c6387e820aa313f
Date: Sat, 25 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777155453
