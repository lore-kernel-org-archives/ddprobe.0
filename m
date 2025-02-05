Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D757214A7B
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738729554; cv=none; b=kqUsZ5HgKHUrQ6XLWtjOifFEhDpNxXc6iR5pDhUbVYyPmEExECI3cyzq8haiWUlVfmBpuJyibjWn5cRy5h1wcRb1az9VKMO3hOHkksH+kPoC406MReGQtqdNNwlmMiKHxhaWLAzO7YJMA+/5XbsQysAqmqbYG92+kE2xNdS4sPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738729554; c=relaxed/simple;
	bh=O19eGnKEduLQewStSHNgGfBPhDWItakyZ23seySj9M0=;
	h=To:Subject:From:Message-Id:Date; b=mzteKyXH4HdvrQFGcc4DwvA6Wl9iAkw8pIV4NE3ZZ1BNXuT0x3H9PTBCfveu80Hj7wjFX/T8G5CnCqc7Z/0o/fojUTqICzmGGMcW2Prs4oqqP9XOP7uXcdd3zS+67LoqGSze5PNoS+JDERi3x15LnioXN8Nn6cq5dlWCvtZizpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuxMBt6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuxMBt6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6499C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738729553;
	bh=O19eGnKEduLQewStSHNgGfBPhDWItakyZ23seySj9M0=;
	h=To:Subject:From:Date:From;
	b=BuxMBt6XziDWBseoL3Hlz9ARYksMn9oLbnnJj4E1Bf8ZiF+10evH1gByJefU4iadO
	 +dvL4Hj5bDqkbuDhfmkB8PjmiFSSVsTS6Nc5n7LC33TG8F5HC6pGjkQ615hKlO9wKn
	 sngWGkhPVAWeLveFOt7duGuN08GWZdEnkQ0TJ2bx8E7NUKQSFWJB/uxNIISBzhPuhu
	 RQfKwtkV52TVxWJeDPodU5nibs7u789D4qJLeXavX839Fen1/u0c6n43Q0u47mdLj8
	 N5HcdEVYIEUYZQd056g6JuCxjZDkk8TAL0Ve/WVyZ2RaL2rdGwu38SJSDQhyJcHYK9
	 N0Pf20zVmwTww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9400BC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173872955359.8015.16203046336680038621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1792a1371ef2758849f31e7258d2f2c98625ff55c849f037a7c7ff17091c0ee9
Date: Wed, 05 Feb 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738729553
