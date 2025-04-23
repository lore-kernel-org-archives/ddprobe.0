Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BDF1F4CAB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745389194; cv=none; b=ftqRUbWCm8JQy9Z1HFhD/+vKsS/Vem25NdF3vABV5l18/9wV/zNhzMdwViqMLiW2azxLzTKUUZ+uzpkMNTm/gy6F4LX+y8oZZFkyJTIfkmvDuJ17K9avyR4pS3wZ4VbTkcRq+Gacd1nJ+8HWr9DVrwRurwNUCpNdlD35mgoh3n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745389194; c=relaxed/simple;
	bh=zexx/FAiFfy17jzKB6tTOtyCmN25L5Qdi+stzUT88dA=;
	h=To:Subject:From:Message-Id:Date; b=TCmlGyGQn6yp43386HPVSx+P0k9u7r2pghcIK4PPxj727Ug2N3DNYC0SGpXHitt0HQ79zD+tMTAMIOQxHDGjKHlNrtt1AC9C4cZuoFhTwaiqzo9NhMo/yzs7OuuxZTv6p5C3I2JjwXsEum+hFPObllDpKaxBrgIQUHNI8ayFQvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgZ2UH16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgZ2UH16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6D7C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745389193;
	bh=zexx/FAiFfy17jzKB6tTOtyCmN25L5Qdi+stzUT88dA=;
	h=To:Subject:From:Date:From;
	b=PgZ2UH16aTdqGt83zYKqHxbo7XnKxWoYRCM9oe45+1rCc/JiZ4LD8R858u3OHOFM+
	 /OxoIoXlOVXpbYEhmMtwCBcYO1iNHGH2ybXH29ksTAdZ1JmHIAa1NlPQ49PVVMlPQz
	 jJ2rJdLFtrIIopfzoH7mw1IccOaqd9kgQmfhoTjazj44vL99aoiyKHp0Rz5o057iTs
	 ZyonoZV2UZdGAdAO5vLqy2586uAe1/PsaR8CEsIivJsVqwVUASVTox7M/QAn8i3bD5
	 3fYHd6Cgr6rPHgsBx62Z9LjQK++bHd/8IFOuk+ORSGQ/FIph0ohvKSFbrY9XOw4w8N
	 I6LqazZZTQSqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD0EC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538919362.24698.2178050271512941716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7c3b3168ae7c2ba70bcd28f40af8fa46a943532c9bbaeb82a1eaf8d3f96b81
Date: Wed, 23 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745389193
