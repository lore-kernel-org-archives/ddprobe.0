Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B246A2B2DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 09:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739180755; cv=none; b=INWo/kD6gKEaANGdW+nHE6rfYlD6mX36FHv1OS2R2t4aXf0pbq6kI7TFotFpLNTPNZGzh2HEzUOsGtmQdyGj0JuZ/m1ECXg1HggyuRoCVj9PusVYmat2heTlwJuyJkpju8qhJDszSfkd21fqN8Nyt+bdP+4hqZxhygdGz+z+kr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739180755; c=relaxed/simple;
	bh=uDokcizzmdjGQ+8hxMJZm6eCBPFLtZa5N3BvWxVLN/c=;
	h=To:Subject:From:Message-Id:Date; b=ZG3ILAwWrSOTXqX+RQ1lLpFdWDQqtJbRfrBGRwMPtCSEbEGUEfhNA/O6XMNArAxcVABBxjz4OXwgYrxniIplaSChJGz/7oyxGPn0v9nyXHMg79Ocvm2LuK7iOT3O9SFJ0IldtvOWUwkA0bsB02B9xiPdJUQIxPVG0lrhkeyxUcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlaPAp+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlaPAp+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D883C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 09:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739180754;
	bh=uDokcizzmdjGQ+8hxMJZm6eCBPFLtZa5N3BvWxVLN/c=;
	h=To:Subject:From:Date:From;
	b=DlaPAp+354lL7nRAZS1zJKQTSxx5vTHd6+9VG9+fvinBAGA9kYI77HwyEQ75nFbiu
	 NQXVwtEqBwmQFta/17k3UZbkOaQH40hnouSJpnyjs5JpawOaSUSmgq6H/+Jf93DXhD
	 3wc2dd4RtAX9y5i/DEZD5PjLRlH0jbhd5pLFALYpp/O0soHTkU1rqDC8zBiySInu4V
	 ogzQG7ufxmy6cLf+mRfh9YncPVbJfozjrMcp+8xz/NytwjmgKB4AG6E3X9x5/7CVCL
	 5a0L+vlq4+SVFsbMVPrmkkW5KDZUrpvBbt4KMRUvU5c8gn5CPSwRRy9Pp5tfMMtu/o
	 oV7Tp1p2pOglQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA606C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173918075385.20996.5451688386212564684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690a57fd4d218af5965223f66494fcbc0e6b61b48f9bf2aeffcb766f66bb7ee2
Date: Mon, 10 Feb 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739180753
