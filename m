Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142931F16B
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786246834; cv=none; b=WINVUVAk38gzaPRPdOxkmT7NJ19p8wXGByU47zKKRsG1OXsyJUjY1oOnhX8CyXjv/MnjGR6z8j+p24E+kzbelm+tUt+jmHgKATGxum+EkvdrN1Pb7n/s3GVed3OsWscQTjYx9H2rg00oz0vkz7rj+HewxIa7Jz88S1g2eujHk7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786246834; c=relaxed/simple;
	bh=/N5JaIDrE4dL3myEEp5XfXqsJ0Cmp6sfOCSaErVl1X0=;
	h=To:Subject:From:Message-Id:Date; b=Johxx+PyIw++EtyNZtl9xISPT64WdrzrX5bOIbECZQK7H8Z8iKwwXPJmBhMUKV859kKnHHcSuXuB8/bbHAijP7VICkJtglFuET8sYZB3UlO7q7r7hF0/GYwe4KlHTcHsXnMSMrsj6zhTKw6oJhn8VXumNhoqXptAEZaEpq1Chq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sd0nRKpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sd0nRKpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC59C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786246833;
	bh=/N5JaIDrE4dL3myEEp5XfXqsJ0Cmp6sfOCSaErVl1X0=;
	h=To:Subject:From:Date:From;
	b=sd0nRKpWbcpmvX4SW4yyoZH44rwj4hhTOIadxfMzQ2q5dCfo7cEBfWFFBpXP8V1sU
	 vVyt3CS1DQ82zKerQ0v7wzbsvN/YmtFjHJCihpOlakMpgWJ/3vk1VgEkCayypNCjEw
	 Qz5698oyxN4YyxHqoskOP+YKqggSuesRRTGRtV5lI8PgRNAKl+4QbmgSoySFJxZeQJ
	 EoHPBf0pTteH8OD0ByaMm0ETiNpH9sLx8wG+GMGZkuGHcRUUxvnZnpTKzesmc+b3Ca
	 giiebX3Cj+jNfErGL6sSN6FXvLZcVj4qI/9CRQX4yGS4t2fxnNeQqHn7ckgpfQC3hv
	 Or5ou5ECx5ZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF10C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624683369.17809.8611445288053481135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48b90c3437a2a187692e2c5ed717429a80af50f65b10b097dfed11f586d360c
Date: Sun, 09 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786246833
