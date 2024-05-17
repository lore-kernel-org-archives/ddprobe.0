Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4813A1B6
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 22:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715986343; cv=none; b=U+/KDjIk1wPZIRh4faHD4XcnZgjM66stExWa6qFb21/4eB+wTrm8048rwsolc4IjHX/YQNpf/hrAOZnSUYBlGnzWcN1zZd0teW2jil4aS0pSsqRFtj1X8UfX8WWLjUkCgDTKRUYduGIxzHJTq0QGl/Iu7fZY0SDNIAmonpkPklw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715986343; c=relaxed/simple;
	bh=JuSEVYpMVjnwQYSstxjNf1JO8TS7tTymKOvp0ELY2Mc=;
	h=To:Subject:From:Message-Id:Date; b=by5yJ80PRf+gq2KHjsEh3l/C8oAGo22AZNgGktsxn3Q7OcK/kZAK9CVjPNlMiq/gj2cA1Qd2kfflwlsPfJ0c6DQsMTPtm0oZE6uFG+f3hdCtVR7uPxttr1mzOsDSHdyPFY+dyH+irjtAraV50CbRgdeRMCR8ZVUnbv3AVoMYjcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cn7v+zoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn7v+zoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE877C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715986342;
	bh=JuSEVYpMVjnwQYSstxjNf1JO8TS7tTymKOvp0ELY2Mc=;
	h=To:Subject:From:Date:From;
	b=Cn7v+zoc7M1NH830ZZHA7nXZSMc2P4kCAaZdH7DNWXtc2Ui7mR+/fOtfh7woluvxw
	 JyI5lvArj/9Z+1ZfJay23R4Z9ptTUy/BSzBE5ld9SKMlw0mtG9Vm1q7BSAXaaredp2
	 Blp7QF6ZbrhUwJCK7ZQqwr0P31swW2eGXe2hMUDbFtYSyXI86QQ8TomBGW6h3Cue2/
	 g9sQJMNJrzlEq3orZqbOfimnz5kmleRiwRduof81kyKoB8coT71VD1vHdqRYijc8A8
	 +N2JFdcbMefiSMzOASNNFwzopK5mbA7RB6g80l7FyuH4nxkcq99u6mmT9AIzxWjqtN
	 v0+0blNePbWOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93E1C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171598634278.13883.356667015118087088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4c1c3c0cabacc8a296df0691f57bb8cbb10921f5747d7ec759ee7af7eeab01
Date: Fri, 17 May 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715986342
