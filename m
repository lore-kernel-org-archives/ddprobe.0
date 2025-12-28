Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FEE32C8B
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766927634; cv=none; b=Ju8+tpoq/0cnW/j9hSSOnu58q0DuAjuWcbf8ttWa/L7m3MMNrWZBRcz//UoxOtZ5wgTaARu4yBzoWBVTQQGdreiWq3xqsV1GDAkSigCzn+KsHRgfABy71BG44e0GIxruLhsVglyEH7rOsA1NSo9PDck3Z1LYW+Gmj88if8m+HQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766927634; c=relaxed/simple;
	bh=M9vEa1NBTfzRCSKqttI6zpfQF+v4CcO3uUaZiGgztc8=;
	h=To:Subject:From:Message-Id:Date; b=avQqC1Hi25mmjhplCJzfbPr5BNXoaqma00erZ9UBNhbuVTstNdEFGzANw46H7Nq5Js9ROuupYfKaCxNoOeROaQaYhaqVZRJEDwo/mXggM+3DFM15EwLcOw8fr3S2miQyP//+g8r6m7YgLQqmlFLtK6VSPibFevgVCOJBxw1QVN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7zvDTGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7zvDTGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11FBC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766927633;
	bh=M9vEa1NBTfzRCSKqttI6zpfQF+v4CcO3uUaZiGgztc8=;
	h=To:Subject:From:Date:From;
	b=F7zvDTGI/SM/yAjJlhCdjc6AgyE0kb5t5Rlx4cGMn3MOZ9ahAPstMx33JFYjMs2/m
	 UOMCucOsQ6V24xxZGH2Z+o4i/bbBDVn94bpaWnD811iqHzlgsgeqcVGoKn9/lTw/L3
	 P6XSfo7RU7O9f6HGLGblH/96AkRAjisYapPSW+ZOGhqqvcQbJIcj0FoW5mxny3Yp5M
	 SNM+3BDUt0u84OuUtCmj43RfoF5nBOJOrpfG/ATTqi/yASmJ4uCYvmpke0JqtGQf+x
	 AWzz8xOt0YrFgmEnZ5IFhqr2TXpqVXO8FkG0LmvSXsNWI+ZKXHp+BZPc+kNjgVh3bJ
	 JenQBwokltbWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D64BE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692763359.32111.17356087529242612875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5266855834959506fa81adfb41f61bbbc2b407652a5153d5bbe900688aed1f
Date: Sun, 28 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766927633
