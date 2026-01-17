Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB7B2D1F64
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768649034; cv=none; b=W64WxisjCxghHpLiG29Yc7hsHmG7UjaROBJjXt5I/EYXQdVGl6fH+eagB6Ze3efjWy7xQhvOOx2tOOqRffe1DUJi1/z8Nf+5fknaiB5qFRQKEwlfk3Gjj5YOvmRk/lR1oaX+7mgYmD7wKe+wYJJVMjY41g/aOc0yorGpYZmODi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768649034; c=relaxed/simple;
	bh=K1TVnzF9Yrdk0Z8xpNAY1ezCQt2/LIU3DsAn2Nq0Spg=;
	h=To:Subject:From:Message-Id:Date; b=rB5bXnW0fms6HZRegNkzuq0uA0tc6axEkawk1Igh3r7VMsoiZPFZ7EY3AE/76bN8OEUZr8QH/AO0yIUBsbH2V/87o4EqkGnk7PYgmdJXhpGBdykFdi2KpLFzJn5Tl4HYElixmY7XxaiqFpW5G94ugdi22UbuBM1NIiS+1Rp1YNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrYcZ2Cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrYcZ2Cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F664C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768649033;
	bh=K1TVnzF9Yrdk0Z8xpNAY1ezCQt2/LIU3DsAn2Nq0Spg=;
	h=To:Subject:From:Date:From;
	b=BrYcZ2Cw4DpKsYproStxaXvH3kfU9bZWe47kPGSV/0VlQijTfUpMhNZFJd/5uByKa
	 movPtfATREmwqGmZP97OP+mcUTZFT8qVOW7ilUuF/vLbPGivLgfEsGI6bE5Kvegxjl
	 WA2H4Vn2l9VJE41Lfod/EARSizFRxMpIHmJbir5xit4+X7T7UgX7c6xUTWFnFzmqXj
	 VlfK+yIx2VFLKvYrw+F23FTEaTnop5ZLCc2r55H+4ydTX/s2lyVNJZ7WKf/2PB90qK
	 odrITGmgo9zLi6TCITmyoDgn9ALdz4jcn94C4qQltYc2NY62MnoQZpMJ78OJINcJq0
	 LpatfhNfsCJ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A8C98322
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864903358.4582.17466425765373516794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6a64bec56cbd1a033388ed919d71d5518e36b0392ce1fc92308eb95a11ac29
Date: Sat, 17 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768649033
