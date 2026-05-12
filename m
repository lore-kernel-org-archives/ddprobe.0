Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B3C357D1A
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778615433; cv=none; b=ld/bM7yleyYEf6jSOr823OWdPCpGGZpqfIQZIwRS6AF3SQ8F6f8t/45Sg3s3KVLUmqJooJNKXlVRw0BJP/fjk3/9y6+dLe5yxaLDzyrZsMmiNqK/pEapjh2+iJKEPoMyUl9pAZDSIyyrTdeZZ2oQb7uqq1+3b7DVt7oKKGHG/YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778615433; c=relaxed/simple;
	bh=TKhYbuf6o5LBuEN2gjMco7WiebARQjJcOxlXjwUt7rM=;
	h=To:Subject:From:Message-Id:Date; b=U/p+cLgWG27O9dUesgnKr5QovyKa9xLuijs7O0U78PrzSwmd+Eif1apa4BB2ABNz/EzlsXa7n612Edlp/P2iTfw0mBo2l9E+Pi9fC1H6aOrxt1D8PHEDumvBwAXahAPmc6ldxaahiPfhY8NYB0fnIK3u9FdlA9f6STevodhxb4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j88Ga3Kq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j88Ga3Kq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F9CC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778615433;
	bh=TKhYbuf6o5LBuEN2gjMco7WiebARQjJcOxlXjwUt7rM=;
	h=To:Subject:From:Date:From;
	b=j88Ga3KqzZMe0BnsY4KsJhNrY4JnzBTAbfqTK2hSZCG/sps6TQ2w/9muCFFNaZ8nq
	 SeMA68X5T5u9HeNuFMSGnux/Arb3eM8TpT9IEntSCDrvVIE/lacXp2E4Tm2qiE3Al7
	 +NmgJxv9cGWwC0NyK/iORFPPKE/bn9S0pZnW0oYMP//KA0HhEyxcb2G+xv5vqxjIhZ
	 CvdgpSLaEsgTwpFsnR+qDfHdWPcBdypE2PTyjn0cCYye9MU+tv5s7pI7jp6HcK77H3
	 SJbqC0qBe3IBPN0r0uK3NFNaXlFyLZEDVcc132x2jdXtYaaPWbPT3hBHSW98+cDtWe
	 ACYjF6g+QDldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA45ACD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861543368.8287.13516085696330438865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef0e6b20745a792fcff853be9b70f6daf8d4f0c05466d11b05b131d94775d29
Date: Tue, 12 May 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778615433
