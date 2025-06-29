Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE441F92A
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751167194; cv=none; b=TfuacbwFkE+iR1PSxgYiX1G1D9G6aneI/vObFEeHVbtkZl7/VRZ2VSs7kR+1dhHO49xbkSBzIkMdQvRIW7cj33s+yOkISaSoG+njN4JDWuWq5Cglc/yZhTm3aOT0+C/fg91Y7AN/PbOPe/HViK2hefmHXxJjZcN8J+uyAoW6lGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751167194; c=relaxed/simple;
	bh=TO2QIiZUt8QN3S28bBayuj5IEBW/gUwD7SJGMEte7xA=;
	h=To:Subject:From:Message-Id:Date; b=OrcdZ5RcxNiP06/0fzEPMD95dqLKHHZjewj2ZwM5NT6ZSpk8O4Fy/dt+CaXv3ekCfsaW8YId26FDwqsicqt7eSUF2AuwXqQabmENmO1TAfG3DxsN75kYENz5hy++FSkreGy9DHHRpTYWFCr1ELCRSyKPyuoOjoE1OJfejp9HFA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYSGy+5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYSGy+5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A005DC4CEF2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751167193;
	bh=TO2QIiZUt8QN3S28bBayuj5IEBW/gUwD7SJGMEte7xA=;
	h=To:Subject:From:Date:From;
	b=PYSGy+5CjZERtMoaLRfz8eLVb1VlFFJQmcZ0Oi9Vk/hMcVrLHDNB6nd8oN0SMdaED
	 aml238FBPZZPW54w+RyXrboBuM4xALFOqzAquVPkKqlbgaHH4yYK6bwnCGzgWJsly5
	 ohXgj2livqHwtbofes3qd1HCrOCaDrSK62zQRX6DGKN5eLItjplMCV/g7t7Cac3lCc
	 Cv0TtXTdeAXpxZjE90ssH8lzrVWm/vxGk1mwUmKUYN6OwGf3DkL6iwVIZnJpS7/OAl
	 8UQ4ucKPymIjRTZTGERs6KU+2lyrM1M3DiBHUItkQDQA0dMK9q1ArmDzjBj0OfeckS
	 z1H/EK2QbUhtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC4C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116719357.17562.4302704101319969108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b4e37dca43483ba083a28823340b59ada5b6fa0cc499beaf90aa278d3b520c
Date: Sun, 29 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751167193
