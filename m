Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB2931A045
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780154614; cv=none; b=QwTUpwtb+54aF2wDlXFF8nTAXIGNrnA6pZjhN7sO5YM/bli4zCdpgRmNtXO0xmWCZzJwr4H3XBbtwoq6DbvhzZv5O9eBrT+j9zsnB4Vlf2g3/94aPM/W1xkUmB4Oc0+hmV/Yrxb9IoJRuzfM/LEathIa5WOEMplPSDPx9TTrzlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780154614; c=relaxed/simple;
	bh=10/u7VC0ElCjAL2j6X6ZLPXHF/3HbLCFsOAS9xE40lk=;
	h=To:Subject:From:Message-Id:Date; b=FjWJVSCa95zlGSpC3eMtHyfQHtaa6I0buaPYV+H4QFhWZ0NzKRZSe9wg0fjE3IhmniZywsKpZi8MdgyCKe6dp/7SdH1hsVQsRnZCa27SQjPMDbfPGJSiNdZYJgpL9Xw76oGfk7JomJkpuxlVuqhm7PKe725PwlwEv3pu3E8OHzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCFOXkPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCFOXkPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBF1C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780154613;
	bh=10/u7VC0ElCjAL2j6X6ZLPXHF/3HbLCFsOAS9xE40lk=;
	h=To:Subject:From:Date:From;
	b=HCFOXkPv4A2GOOMdOAIiBQSPlb0FH/1nP2B36+jgXvbnyksp/PBEEFzCzHT9laPkr
	 x/Az4riO4jc1EqBd6WNpBkyEZiflAmbxPYQYt5Fs8hBm8K21QFJM1+m4AvzSTqrBKM
	 ZHw7TJiKOCVklIG7BJpBGMRi7FA64Q4ipZlDq4sL1htojDYXvaEmTT/TC7WN0mkLoQ
	 6D3OS7itzyZpYuLLpMm1jyKUyNuJdhF8d0i1ZB2tgpQhJHGJdp6QHx/emARwdF5v3P
	 tjrjEAyAXq4O0xBiEDru8Gv/y3A1wUeAvL3XHq1YIQwMfaYkEJMn4RWmZUR9aL0ufe
	 /VE7PrcXVkAnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D24CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015461370.5295.6451601523036758978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47622fb81e6a48f57d42bd513b6e413b0d701c3cdd296a3247c73085c2c37d56
Date: Sat, 30 May 2026 15:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780154613
