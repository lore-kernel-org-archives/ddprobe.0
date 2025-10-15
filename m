Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4A2192B7D
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760487594; cv=none; b=CCyJzvaR1scWLQaySNR+M4hFuC9Sd4KjyISaTIFe4XKYWE28PMzc6DW/DFYry2J5nG0WSY+pE8XoxITlrlYQzexf53vbWx1ATbidmUMLTyNLnlgdKLnovSlvgoSAWADgiFSTq3sp3P/j9rQoeo9njfYpuAXe0vBxCjGYnEhNUKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760487594; c=relaxed/simple;
	bh=XqzOwyUNsC73y36hrjA8J4Xi4KgH7YSMmzAJY5ZiRdc=;
	h=To:Subject:From:Message-Id:Date; b=pKHLoft2LNTU2uUv/FIPsmVYE2ZKE3ZSGBEaXPXvllaC6zCUykhFoDhUvscBNJrvjeAQSpeIVWqaCFH+dnGDRDaq5NeAzKRcbPz4uYsQvUCeuja+8DUi6jyysu0a+RgZ7A7VGJpYbNoaeW1dcxtYxzp7E6Ffz6LxkU8x0ufR5uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyeXa6VO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyeXa6VO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7746C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760487593;
	bh=XqzOwyUNsC73y36hrjA8J4Xi4KgH7YSMmzAJY5ZiRdc=;
	h=To:Subject:From:Date:From;
	b=PyeXa6VOIB+TNGtznsD/1sPiZhCPoRwW98bXXLmLrWcMQbAhWLtj2O2QNPgpHeNeW
	 dS88suRA5rT8LioJbEqoFFKeg/c3KkGTI9SdVH1opHQND49uB01G4fUOVu6l1VT9pl
	 BN3XH9zZTEk9MjIp6C/7Hdca0vfsT3zDdH7sy65LZTEVEwy0LuijCCXhDe1pACYE8L
	 oBth9GIccJtMsKB4vxnkuTTwkmemfesH350UxSSsDgPvL+clbwyYcV2ZtWSEbrScSc
	 5okgCZJxUGf+BRuh+JVj30wz16z+r4Llg2e1SWpgJuW04bFwDATKmj0lU1qJ9cbPeH
	 bJiLaNbkMQpGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986C2CCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048759359.7812.1132257959782057319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294c5427d4c813d8421f310924e4c9b9c4bff237bf9893f2a657ff2b78c3dca6
Date: Wed, 15 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760487593
