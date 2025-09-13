Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EA311CA9
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757786394; cv=none; b=VnSEZSU9cYkzLal3SDZRh9YPOxY4Reh1RQZEL06unrUoRAMduHNPqwRwp5wqU/sHdLXO6CQNfBaC4JFhuer6RR6SW9ME06uBKdmqXuRi3i2KcAoegxmtvrFbjMQ+fYZpByhZE7j8hVc5bhsxo62yRgX+K0lzE6NvQAtvltQJsWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757786394; c=relaxed/simple;
	bh=PuZKa0nuBB/6uWLu5GxFu7IOSaGcXg1KbIUX+bvtmWA=;
	h=To:Subject:From:Message-Id:Date; b=J4nTlVqJJflYhREcgOkuQ6LqTIAi8iDWcWl0TCg/UzCGjRIMIspYk/pJKRyv3AX15BKRuFldvOa4KXVYM5F6AsoFuRiRj3IvBkSHQF4yPK805/9cgAE6EjCOHFa4QD/JlTjRqNIH+Xogb1vObvfSWoE08hEZob2iJHdc4wfePp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsxBu4yc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsxBu4yc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F53C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757786393;
	bh=PuZKa0nuBB/6uWLu5GxFu7IOSaGcXg1KbIUX+bvtmWA=;
	h=To:Subject:From:Date:From;
	b=KsxBu4ycXquMdz+7AK7rR8hCWfg7crdWcmWc5Gue5m+tRR4IJZFoVVf9lkDEAjbfm
	 iXaTKihmrUPMoPudKkvoj/zXf/+2QraHxAZwTsK4a/eppN3LFuPLf/WcSXBSOM5sjb
	 66eJZevYZHyZ+gtKOD6roORDnuJ1RIESZKv+7jJkM5jNRMruCfu3NWQ+ok70TxYNoF
	 QFi/YSrHfsCw6Wy6YcX6ZRZaJpEWifILusMLE/EOKOeoa2h2E5gsfK/3kFWt6EXdQw
	 4Z+NTUwOabzzy0AJrsz2mtPCT8wBo/rKobOmVKCGgMof33iyIZKV/9QVu/pTXi7BNG
	 ZEwGSnI6SBRJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA4CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778639358.27509.9091133767414496260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198d428c50eeb793e1b58bbc3c1ec87d02e9745eda142ec041f530afff0d01a1
Date: Sat, 13 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757786393
