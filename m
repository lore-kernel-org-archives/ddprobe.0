Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D69F33985
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759633194; cv=none; b=FxB5XWm7PLaoK9uuer3Rw3njhY45ARv4lo5X3WkG80s1xDAvXQPtsKDzVgFWgNESXARndt4IbEWjauuqig2dO+f9vfq6EcYS1utr7EHq5CU3DsckrnIyv7bjp4jg3IXnw2zDAgoUhAbQDMayLxtIQPAb5E6wXD36HlIYsf6JUN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759633194; c=relaxed/simple;
	bh=gc1er5Am/kYcZ/R9AfQ3BIkaozXPo0bVBVWNYKwADho=;
	h=To:Subject:From:Message-Id:Date; b=X6YJQNRD+jCNizSwNvhTSIkRdShhjcJOiM09LtOOBwwjZrIuTz/nBa9DC1x5cxE5HJiOvmR+PkYdJldqIDOS+HVnPMC7+Vk3Ctzr+34NqcYfeWZcS/tHETGQiXALALne9fny2kQ8RfsJiTA2NNPr7PiHQiLUsVA9R0F2cd9BlJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tK7PNTP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tK7PNTP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82E9C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759633193;
	bh=gc1er5Am/kYcZ/R9AfQ3BIkaozXPo0bVBVWNYKwADho=;
	h=To:Subject:From:Date:From;
	b=tK7PNTP+S9671hwDyobZirjtwqb1dnry197LBy7eLBEzBMQLMoiz1mN1gmoHe6Ics
	 ErisGv1cNshvDmkfBcCG61frEoBtttYcApksC6xxSA1+X6Y5V1tRz9wHloaJMzqzCW
	 xTeSONxqMYTqqo0LBlvfdVHULDmBne4NHxPG66/U/Xn1IW7JJ9oCF7prf44J/h064T
	 a6pEPp43E5IgFKXLGCfak2e7ANKgs7Q1zORXaMYtu9cOlaAxdpH41pdrItgO6lUw+K
	 o/0HH2PTqh0/djOz4jDQ5Mz/W0uarBg46W2npT8Pp0uPdPQk8PSxl9mfTmB3k3IdIe
	 aVfNa7lZAdRfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E01CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963319357.6936.13053045157728175379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c5e916e39f919d0172af7ac91d25b3751f53165bf9bb7be8e68cc3b8148f52
Date: Sun, 05 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759633193
