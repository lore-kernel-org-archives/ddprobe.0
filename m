Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6EB1F462F
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746739794; cv=none; b=sE8w6/LIF/2dFHMyQGX7bWNHG5Uy8DPI9gvNmsU72KL5wWscq5NytZkvahCZOUhRl9y+BTzCDOkLhoqlO3oC7MJZGxK9WP5YufRnG3RFCQiKFpdyORNAy68yno9sYQZK214KnKrwqsiDZ4KwWUA74VaKqZ8t7uokuC0NqAQi7Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746739794; c=relaxed/simple;
	bh=H99ecmxcH2eO1d1MEEex7MFwCpMNoEl5vthSLI6K4/4=;
	h=To:Subject:From:Message-Id:Date; b=AiCmgSVgVN3g4jmHnsehtlqKLbjRk0mdD4SQiMp2N1f5s4a/W8MxqbT7OxCESJZDkzSQRb7ft32WwR6zIKUaQH/M7yahqBEtrnz++I6p53ryPjV/HIWntaqsRfayIXBxWh2Cfa9IcL0+LMeZQk810VOmhT94QsMopsUgMqzWNhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHlrpmy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHlrpmy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F74AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746739793;
	bh=H99ecmxcH2eO1d1MEEex7MFwCpMNoEl5vthSLI6K4/4=;
	h=To:Subject:From:Date:From;
	b=DHlrpmy4az8ULzqgp/E88desCL73Wo0NeoanxrPfdyncQ+StwpdqhWbxVdoc21Eqh
	 /FqSAnUiRQpUUOQwnxuWFX05CEn7piALggZgdosSZ0ULxYs7sEBqaVzACYFe2Kszr1
	 sUySlyxFIwvRzRk1F3HPz+171h8okBrYI5iz5/oDAcVbRBbhjH6OuDzzSfZk+wsN/h
	 qpTFwoOv6vROCgMsexeFkOw7cjKZWWTgQuTTkDKI7eybacA7Lmws+FgqiSpY4bd7qL
	 R2Gtrw4UqGdCu3qT0bGP/m0SbKwLGft9Hn3qXe891YTLnVE3awFq4+/7hEyt/eYacF
	 kpuVt6wwlhKvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FAC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673979357.28436.17035287970126909817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bb4c1eb4bd707fdbabac11641ea8800672e42e476dfb2da2affa27ac8161dd
Date: Thu, 08 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746739793
