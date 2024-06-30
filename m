Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6D913D24D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719763463; cv=none; b=V+K9Au1uuJqCfGp7eKG5wKv8qJa6T2rgvQNJQ/3h1AaH7adKHVsi8wr6bEobrd3uX/3ObvO5LrlPIVWN8gMx0FF43AeqQPbdorXxfWXvKVTpkJVucTYbH2aaVAp+JNdtPOwE4b1hla2IKRl5bT/hIN0YzzivOrDwSdTY/GyXhT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719763463; c=relaxed/simple;
	bh=y/v/EGHL+3KxJFdA4vBHpyimC8MpI5tnS15i+cMi7OU=;
	h=To:Subject:From:Message-Id:Date; b=Q0puFJUBzf4vOVWdZHHcu9qcMzTAkbJQ9+tjQfSAxoQKEkxGa4BrEcUBdBRlKLLO9Hnu+KmeeBNFQP0jrjWNAwhRcEyDgvTHDcIT3cCWXgpWy0VORKVCWIVjKCzkgE9aDPleLQMDZjZRmFZgjnvjnXPT+Kyr9A3kfxukclEoA6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F841y146; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F841y146"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD913C32786
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719763462;
	bh=y/v/EGHL+3KxJFdA4vBHpyimC8MpI5tnS15i+cMi7OU=;
	h=To:Subject:From:Date:From;
	b=F841y146+giF0MvceiKp41tweGVpVJxtlDj6jqR5F3pYBGEXzc8pC77n2kK/Q8Zwd
	 Hl64xix+tp7MztvgsDEt8IYse4YwxLfJla0Ymq3a2o5/3O0POgTF9K4fcEpuVCeKDI
	 vHfMJJwKaed69t3i7muYRbrbCOVsCTORA4SUkrnxOYSVHODxHK1l1SSd8m6QVbKX5V
	 uWYklfvctMmq4iN2jcOqM2KVASUFOHg/UfsjLK84OUh8Q510/mi2yUDmh9LLWEWEH7
	 erkbUEVPJRDnK1zUmkACuwGfWu8A/UlPj9CvS3Upc60qzpPruJpA+Fk48Oq3F97kmq
	 /omN1hNlgszAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA755C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976346279.9155.8223101452001166195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77f965de00ec080dfd288bb24ea7ebca8f02e4f07d7fdfde7fcf47c3eaefe51
Date: Sun, 30 Jun 2024 16:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719763462
