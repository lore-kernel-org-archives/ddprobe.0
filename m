Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D798BE6C
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735367754; cv=none; b=M5vQggmE9fivfFmxEQe1A/Hw9IOAweFKTAyILWQTQzwticdHTjEIzv1GfSA1EEaD4ywklYRhBy4fW93RAUyXIUs7huOBW9h/H8y9O/MccnzJ1Ijh1ff1wEixS272DA3FzFqCYlDE6kAdfVMP/8NJcKL8c72VeWVlh9PmgFyBcbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735367754; c=relaxed/simple;
	bh=EPJ0Ts88zN4sm71/O3P6eEXzGuUOA9JgRDX4Rxnd2go=;
	h=To:Subject:From:Message-Id:Date; b=QI0HSI5zUdNXtnzJg0rai3X7Rne3ov7pLtft5rXcj+3z9sYI3iyg5UfFh0dAvZjig1qrU5B3wlgIhpAitT9J9wE2m4pI3loDqp4sM1Z7NpGdW86pss/8CXFxLoBq5SuoGOp3PxkZNzupYC/F9Krpb+j5tAErre3Wn62COshmbUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e04lE6nt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e04lE6nt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A66C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735367753;
	bh=EPJ0Ts88zN4sm71/O3P6eEXzGuUOA9JgRDX4Rxnd2go=;
	h=To:Subject:From:Date:From;
	b=e04lE6ntUeLbI31B6xzPgZEov8x4L29EpbHIRCR6udW7fiPqNFukur1sz63juniv1
	 EdAWY20N7s3eBLFF7dG5nB1YZr9e/DxxMkW2hOPEJcjeMVZ7JFCU03jfO3iiN8Jyhm
	 Jk2dLovSZopCtNu9TlFFHkfkQCOelisqCkQn0RQIDVlYdeHPTs3A3xwQJGEpHyMu/1
	 0U8cANsOBhK992fZbd//y/xhgc1JV1AB+aJ7iTnLr57opYOybvj5xXIFZvQGUl/33S
	 zm3Dihw7SGB9fAouii2z8LxuYd+foBfCEAWD3/NhHRYUgf/8QxyyCONtACWAe693kR
	 I8X+YEApNb6Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7E1E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173536775360.9531.15441529953306307585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a5917ef5252c3c683f2c675036223ee4d7b9be13bb6ecb2705f9584ed5e59a
Date: Sat, 28 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735367753
