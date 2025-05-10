Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627662CCC5
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746839394; cv=none; b=XThbCyXj+gKCDhKbRsR9nBqhybxQKVfhu7xdPjD+3YcgUnnJMRE6j30PBP4AtIahpqMGD23/PQlgZealKi7GVHy5Dghx6CP48H/IyAdPw/wAP3cwXsFzYjmI7g9GqX6VTwxj0Yg4FQ4AD5x6PZ7KklIhUwTElFsAJ81BdDKYDkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746839394; c=relaxed/simple;
	bh=4JLQR2LhJ5fuSODnug9G26qWJ6QGsZY8fLF5OPkydqI=;
	h=To:Subject:From:Message-Id:Date; b=lmzAeWTWjn2v6zqL0NYZAltT7j2W+4pCwsVRtA54hMHjtRKeeEH4RNHoiSlc0T2AqKXBeEry+NOwYgBF+LxQm3uRNEUxAnuDtNFJmDcJ5P1FMAZ5ck6XNB4NhEE8jqrKfa+wFQHzhiTN5mMASeo4Mi8gok33VAEt48q51tax7K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iY6wtgwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iY6wtgwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86CBC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746839393;
	bh=4JLQR2LhJ5fuSODnug9G26qWJ6QGsZY8fLF5OPkydqI=;
	h=To:Subject:From:Date:From;
	b=iY6wtgwpwpKHw8w6e4i802qKWJufIu9qdAtsPVRJ5zzz/LVCzqRAIXee/7soMWpCq
	 YNLzQlZt/lj15UibBtLoWk/z15wg9jCwv/zN0Ke5wzbJ0ocpdIBlydaIU85xbOuQQx
	 SByJiuutgfbgKA1PrMuMjd3qSc3SkKNY2xMhIXOSA7luWNP3XOOBAPdadLNF+qXW+8
	 H6JGLrqiQaTDdIhcO0tq/2WPrE4wgPoV7M15izpXE8Jmf+x81CBAc3oTj+M69p0fps
	 ljjJDhCWCaIjZjk0oEaXuYth28i2czbMXIwkDk6lRk3DVCaLLAIYu9F+G1eQYFgVzq
	 kzMrNtQustIeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A2BC3ABBC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683939358.30413.14751574077144111263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b861aeb8b0bc2ce5e7d82078d4de7265f423e7db5d6d2042a9fd455d0ad766
Date: Sat, 10 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746839393
