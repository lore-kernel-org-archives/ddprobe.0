Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0172176FB6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728971753; cv=none; b=KTRV44ACkLT7/UTz3PQ3gAf+dYsYLFvT1P8VaplrQFVafYUTIsvBpH+eM4i+DDXYumazNGzdrPuOOzHkeR0e/D18J6vu81zpwrqRbdoLMZquFqFG456veN73FA3ZUuXfSLilr6VHru8cESN+L2MXcapxdFNRQvjApb6UafphojA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728971753; c=relaxed/simple;
	bh=wJTCZp95nsYYxZxQqXhHXSOGVSY/dnqzzyup/ANDAFA=;
	h=To:Subject:From:Message-Id:Date; b=MmA9nNTiBEMta76NJQTdmIFI61PZIqoYyRki60S2UJrgAgsV8+u6u90mK3YG1NJD3E22az/Q9lOM3od+RYblE5vyKLlA+dNGKpZnTc6YiGUbanCCcf3lX4rgfW+BjXa8xE5ybfmsnKbI5FiXzRwLwT/MncJ2yGKusc6T1lLby6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVQ18pEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVQ18pEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42B2C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728971753;
	bh=wJTCZp95nsYYxZxQqXhHXSOGVSY/dnqzzyup/ANDAFA=;
	h=To:Subject:From:Date:From;
	b=LVQ18pEs+HPFrhTFmpzcPkjz1BI34B3u4Uo+ohTqitl+GAk1OOHKQl4g3BzUWLKbG
	 SOGHT9yBB0pQJJ6u42IJTMuwCR/jpF5eJmcI3bAIV6tk0j0S6ZZSKiEvYSRzSi/gsj
	 A7Ex/o6KZWxNyyhGZlodC/zdp29iWLYsMzE2MDJRKPOZTjyNoG4LBE558Bwi0J1gZi
	 jybCvmIT7F3RYGtJ/R2LQvhYDOAYDboFBqLKc/dN3fqYVnZ8sUAAiJnnbXaKhgWwQ6
	 nQ/mF83TuTI51X7lrC+yBFvJxzF60mhWQGJnoFj5hSBhTysKI32En4TB6nGPb0X8il
	 HRm50pWO3HQQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94357CFC267
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172897175359.12261.5277055952116637540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c02f86ec428fd20b251441d44dce1153eb35de3759abb25a7933b68b8166f55
Date: Tue, 15 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728971753
