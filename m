Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0372AF09
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715536343; cv=none; b=PYcstTHi4TFghdgla4tjsjDPmPT6mFgJ1GnlIkLwiKdv9ONB6Z2u9uau7IS5PozKXUA1BV9oIz3HjvPdGrrBFcrxf1atPXgYEh62JhDKgpDGAkOoBvC7/D2laT8c5SC4O59tPzUDkt+WIMd6l2xaGYIAqZz2i7nfvZArfrl2gaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715536343; c=relaxed/simple;
	bh=CDz0vUtsjQQRhRZ6Q5j419Fvyu+9WkEeoZ9P4du4Qko=;
	h=To:Subject:From:Message-Id:Date; b=JzNjHDFHqVqfKxZDRO/HkYKk2E+8VnQuMkdTAl2ifobp8KoqGSX0DXnZB7Lgv04/o8HgFZ4YSQtBvjcvysnkxDiBDliLcsgjLzPALVzoGGjeXJAiXc1UxMLi3VbtjaAhWwHNGxltNatbGMldu3xofe0EhHDwunGzXO/yaCoweDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZx5rgPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZx5rgPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6812C32783
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715536342;
	bh=CDz0vUtsjQQRhRZ6Q5j419Fvyu+9WkEeoZ9P4du4Qko=;
	h=To:Subject:From:Date:From;
	b=LZx5rgPHTQCBdRx/jLjRMSFa5FrCD83f1nKdTHQMSUQ3Asw+dfTpG0MmGPsEIrWip
	 JNy3el9V6ob8zhCGEvVfCdyiU7To/xOa+fgVwnxrSbw4A1zT/7QdlKBOfuvWb5pNkF
	 kUsGs8mMZT9wtbAse6tej5+HiwKKqxqsxCqflvTTzZh1tFHbTewUGdcpy6iQM6BqEb
	 3YZQMn2Szv6uOleRjFeRVdnNWqER9ipqv48/v1iUKUVbWmA5nMU1jrcaQvR8QOuXMP
	 qnorVRDTl4J/SAsa/VjSJ3ksK9iSdF5jd7j7sMi+2YtsXGRLtMuUYRI3WSuYGhUP8+
	 byFY8dmMqnydA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21D6C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171553634276.23526.17980612633996939311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b7594a608f01772b68fee64b18a23a602bcab0484845d799402c68d0180e75
Date: Sun, 12 May 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715536342
