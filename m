Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A6E14A8B
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 19:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714593143; cv=none; b=cz5ifgbws00LS2D2fQLyTKvj3NGHIhvsZmZGVIOLjXxlMLOenW8t7A+b5vMmPXSY0F+QDOOdZ11H7RJ22GkRIRXJvK53Ob006ov04uO1W3mv+cPJpo9jUR9sjZXc19mcXV79+svRXvk9QJsxC8nqFwg9J05o/aRMQYnoaHnQFQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714593143; c=relaxed/simple;
	bh=CQBGqIRxN/aPQMjmApqy9B+eBIPbwrHwGG6dl0MAC4Q=;
	h=To:Subject:From:Message-Id:Date; b=bqTqU7nRF+TU72FQ23JApjnKQWecUo+AOlSR8dUDQB1NzsSd3k2ukroQA2+zQocOSvI0uk4Ov0tvJ6Y/7aXrtYHmMuKyU9adWiWMDeNHOQwi8GE6u/KtzDpjYlnQ3xNc/uoBwIrYzisdZ6y7t1mSg3QYvox0HLU7miP4heN2RMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCl+0ILy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCl+0ILy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8818C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714593142;
	bh=CQBGqIRxN/aPQMjmApqy9B+eBIPbwrHwGG6dl0MAC4Q=;
	h=To:Subject:From:Date:From;
	b=kCl+0ILyE+HocBKz07g50sPHmNpar1GEEqXcl4s78cOFMf2dLt4/jPaT9peuzG8MY
	 4QHhDm+QMneLKA8s2JW1a0NoH7EJt973Q2m+Z5f2z6Q4F+Qf9pk6G1/ZOLbx1lQIxl
	 0MvPupUsvsdeDTKTMZzP3CHGotHmVRYR6cYpyYXsneTfQIHZm67jLuudLPAgE4kWF7
	 BNfNiju1eM8SEVHE1IBCChfD6AH2F8dBIRUbehU2jjyBvmU6LI+rO0V8DjDt/0IlKf
	 GU/pfi4FCjX7AuEXwQX+ewHi58b9Rz4s2WxT0Gn5bvDX5TN2vt8x7evX1aUL4dsVKY
	 03+mulGongkng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE070C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171459314283.27247.11717412363600248513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909e72bf21e5bcda346624f405297499699bdd81ea6654f8c25ad8a93cebdb6e
Date: Wed, 01 May 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714593142
