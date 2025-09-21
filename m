Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCEE275B1A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758477594; cv=none; b=nuK6jr61eSuGq7at0ZDmgSIwU+MbQYnxqrGxrwHaZWFGIAaN2Bp+m2Zwc62T5GDB74Im0I0cZ5hnLiEF8ouwr1vADR8/2YthyrTQzHGYzU1XRIgjSeNh62djAh16Cnu3tDkcfnUzrn/YQeM1UlIDM5sVMTQer+HHmTkgwErqZhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758477594; c=relaxed/simple;
	bh=sbkKL2vTUHMJ3OErBNbuDNsDpcpaNEMMhvhTCS+W8zE=;
	h=To:Subject:From:Message-Id:Date; b=klELyjHt4kdTWSdqxuF5Kna1XEM0UnjZA1GOSwDRVu4N/NiqzqsM9Q7fh6vq/gHOnkhhJyjFWzZ9RQ57wkkjqwFTWq3vO8wY2HxKll6VAqeA8OGcxoAUttJZHocVc/DR40uiJXIXT4u0DLweKHlYEKKPahje8sD9Sc5ujAHcyZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nyp7orVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nyp7orVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0A0C113D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758477593;
	bh=sbkKL2vTUHMJ3OErBNbuDNsDpcpaNEMMhvhTCS+W8zE=;
	h=To:Subject:From:Date:From;
	b=Nyp7orVWF5r/wvDmeKY/byScbQd9JzSxVGZJxhZO3t3L8NBDuRVJev/Zt/0RxeXig
	 AfbcFsrQLuYkCwHOCU4d51i465B35aqERpklq1lGws/SUMM7WHa1+GMRMJ7yHrtSJ6
	 G+FC7mOubM0lQjeda0EP8WqwahaJtSF9t7vVjwCLY9DNT4GeVHQiZZcvTQZqInAQDT
	 xS4qpsYKkFa1KqorTvVS/QHsmFFWm5Hbzds1Vf8QWH1ACIw2pNxm+sk7kvdEWddVCj
	 t2srDmu1x4GOGnj2qkRPPsGgsg6Ci6NCsuHr1gwh8tM4JCqs+osfY272dvVaXVeBjb
	 4Cbq6mVqoLPJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45CCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847759357.12923.14388426218626470530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff7130b5b57ca554ecc4e284a24f8709d75f2ca366083d4a903a65951b85435
Date: Sun, 21 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758477593
