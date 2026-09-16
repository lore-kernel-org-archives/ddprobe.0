Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE6B4D7977
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789574435; cv=none; b=REq8gMhFazx47w4j1BpQf6nzqk5SYmJ5VcfJIksZ3QIx6fzJ81nqoj5s7hAdm/+5LosNW5WoMFddM9Kl0lW7CNTxuxPOxCV0GBxjUQn93KVBcqGrAj11Yf0t6aWVimyhX3FerDQgd7YtN07uCpMDs77w8ThDgUOCzlF2XMnIek4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789574435; c=relaxed/simple;
	bh=xNwWuyu8NBj0Ur/CpnDU7jbw0+8Kvm9ARLWYBlIFki4=;
	h=To:Subject:From:Message-Id:Date; b=JH9uMip50Y7CzLFfksrMJICdRjBHa8RHSEiZsBpEfSVMX1Hz6UKXn+jeT3BIlR3mUAaHkDiRL5z5/vgbMKskJR1zgxHfMg8ltnTcggGJZkVpZbvfdRp5tFWz6yxKObiF97R1xLPaF0o3XxjnxHlqcUNnTj9NFXrv7DT3pkKHbQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOnO7tuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOnO7tuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FB1C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789574433;
	bh=xNwWuyu8NBj0Ur/CpnDU7jbw0+8Kvm9ARLWYBlIFki4=;
	h=To:Subject:From:Date:From;
	b=jOnO7tuogZqSJmTwrdjWezZ4SXT7PyYVZNJLYNgtgnrvXWEWfCqzfWZXnalkZo6Ks
	 jtTmc92btuLtr0Xt33jxhDSlfcC72fJzGksFKreppzLkfugQ1AVGAGpdqP6tnyRJ0Y
	 Sp7/q/ai+QnfsqI8kwo8Qt/Al6BcgVNDx2vonq1AHombK2FliHxoFFsQZyYJvargr7
	 cr3CQVhPWjYLvGeJLjwnrOS5v6Xko4p4JlXflryfmCB945wLCmg3jDhu63ElDx0RKe
	 HJIX8jK6X/fw2VUDZ34CUaZuAYDhxGhbNfymEroeuPl4jfwu75s5h+QSV5GYVU52/q
	 TareNfOB/6sDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0898C982CD
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957443371.14683.18178625032743444900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b574b0d34e92eed176ea3951c851b5af55304c3fb97ac3098f11942fd84fb84
Date: Wed, 16 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789574433
