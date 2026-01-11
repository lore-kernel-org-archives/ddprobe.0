Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBD522301
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768095834; cv=none; b=UiUIe+TjPPp/5dgjEwNtfI/SEjiH2pCnZKfmupUVCRKY9+d0MiFidkDI1nEWqwhLfv0j0MDtHJGpMVzWdGSNI3M/XaHAnk0I142Wxg7micYBDI+2oHnwWCIdPTWH5X1zxWsi6Zyvg6LIGQFsx+D024aZnrHqKIVDnTjqij4wzPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768095834; c=relaxed/simple;
	bh=lPuVuiAGR0eZg1yOVVD8JLsoG4tcd49HUOHJvH0HyjQ=;
	h=To:Subject:From:Message-Id:Date; b=QQDHBzV39a4v1gfKABnLH5XQ6DM4ajh9eVE+pUs1xyMI5m73F/LBpV0sWaNoL9A0G5W8v8rO8l5SPj8hisNn/ivY3Gt6GvqjYMxx7V7+WXnseuKPSaT/7yCkXRJgV2ssqp6px1+9zIc332KKa16tssc1qsYYC9+nSTrF4CV0gZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abnJsBFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abnJsBFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FCCC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768095833;
	bh=lPuVuiAGR0eZg1yOVVD8JLsoG4tcd49HUOHJvH0HyjQ=;
	h=To:Subject:From:Date:From;
	b=abnJsBFnrsy2h+3Qqzg0j/Dza2Rhl65TlwDvS/9nqwfkADLczPc5L4vkb6JyebYFO
	 s7ifI1MiwryC+FQuEk0LpXEh5MpSPPPT2XjD3981cskR9mZx4kAzv8YBUV5ILXohY+
	 pTV4jJfHwyvnW9FlJ+YYJvklaMq7xAzb3YbIt4IJeYN39+8MKS5DhZCVylc3pvu9XJ
	 wriFl/UFItfX58maEb1+RvZP2ilyBYSWeWQ3HiXyOKyFyqW3Jkog2mZj6FyvTj7JXp
	 yQ+n2vvXC99Jnc2zvvn6R2OFp3tXuX1SpSh+Hs3pEnOGqFksmG5RBQ5hmkwVKcxzpF
	 Iq5QtQGB77YPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D5D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809583357.26799.3499077801852664532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b273ab18700065ecf52421dcdcbc595af17252cb568543389977b4590fbbe4
Date: Sun, 11 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768095833
