Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DDA19DFAB
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767921234; cv=none; b=q0GR1fhR//SGAliy9TWAlnkiMrUICLVpMnXNGNZoDLa3xa+PDwL7uMRAtgtNS0Mspm2p1vSvQHoxd9ekN6DCYRqbccvsMORepdp5k6zMGKS7pv/JAPRKRqBEGJV3hprGde4QSMSerfUU4O/7Tv6vaZjkCsB8CdVSzZ75yZQRuTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767921234; c=relaxed/simple;
	bh=PaYz35tV5CWxmNG6bsjiPRM0KrtNKNnhppounCf/W28=;
	h=To:Subject:From:Message-Id:Date; b=TbK8ItB2zLJKQzRjOPTlskIMxJx0hXaE9oXASQsOAE8B7xhXUZKmeBz3N4i37w/4dQ4bQ+bNvbJG+xY1uIPCMfBVs1MKcSFUrdjLkTzlUamXfOaIwJghJ9zRHvE6oVu8/SaMOA+WaaYzjdR0pB7fr5ZGC02Z1Q8psvIj44tIwo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2+Cxn4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2+Cxn4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E24C116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767921233;
	bh=PaYz35tV5CWxmNG6bsjiPRM0KrtNKNnhppounCf/W28=;
	h=To:Subject:From:Date:From;
	b=t2+Cxn4lGIu/5zGP473O4KMyuCLFbUmY4NfbN0ooV6kQnbVoRstFbw7/jF844Mo0S
	 wHtSYmzAqnWPT+7SxhqEWvxLqT3iHLPVnJAZLUUW7oiljt+I7atW7+NASktZHdJeTH
	 h3Q0UZ7xz3NrczbFSTRmfo1r4BYxfPbaz2vbB15zbUyBjHD0gO7yhiOdDagk7U6qkH
	 +PcSfU9tzG4WmfN6IIGtVuubDpiivUgyP36bCW5Kkk9aEb71373QMvrj2uI34DvmxW
	 EKmmxmio0hwQv78C9gIlEkjAq4ynHOMaeR40CMBzu4ZZdoSvseCXqqtWyc0LmBowVc
	 2UrUPmFtVafdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91889D232C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792123357.20546.14618819981414769845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ad9a750a22f9eab00fa4c76fdc6c334cad525acba1ab83f9259cbc020beff3
Date: Fri, 09 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767921233
