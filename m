Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F661A5BA3
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745695795; cv=none; b=JIwq0Qm3an8WYu+GUFMg0GBqWN+nvbOJ9kdhhWe6+UrpLK3ToGKODdRmJGIHA5ADwWhFCyiuA2IW8e70VNvjv2k8Na/a9vYFEPYenz39dqgvH/A531YVimY38mlg33Zk7Wr9LY8TNVkC9KAd6yOObH+eTIdX6ZnvqR13FwXqaSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745695795; c=relaxed/simple;
	bh=+jFwTmo9pdC32khdW/8FrBQ56jNMIWmZNJn1YL++eNQ=;
	h=To:Subject:From:Message-Id:Date; b=Xy8PL/zGp1SahLoi/8X//r04YG5/NWmbQADQhLt1bqIHTo62MSFbwsFt5UzzVMUow39aEZXBbg00HcF7Vc+N1pibKEf8zTC8sbXfsRcB0VKcI/6t6Mox4K/3JeBJQT8yf/fyRDnm5/X2eYR4KSfwXkjcexmZXKr9HdXGlH2LZBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kazCBS/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kazCBS/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AA9C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745695793;
	bh=+jFwTmo9pdC32khdW/8FrBQ56jNMIWmZNJn1YL++eNQ=;
	h=To:Subject:From:Date:From;
	b=kazCBS/uA0zQam9IBZWGnlKmN/+GpRlV0tC2yuQRrkl5qFepRvYqdPbCqipEwhHug
	 JRDDN9sYJFvUXi1cwR17z4zD6lHpCcP9nrQTxYN5ZYcAa10dj+038JgYi3XV2zrKj7
	 zvccPq+/19tq5fXgOy02n+f2mcAV4IEiljiiVx/pW4Mn1FGuNoUc96oL/u2j1Ach0E
	 Kf+u2ZB/MBiu7SHRmFgq9ukhcS4Fq2Xu4RofDc9ivOrp9/OrmTJR5VdngfmWZzsQ+S
	 KDtGV1ZYTsQL+0vnI8XftdcNWWyuXSHVO/9VZNWTzIiIuXkIJ8k4IiZYBiezcVo9Wj
	 Vl+JtXkLY/QMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF4EC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569579358.31471.4142735468203443170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b859a14cfd1c7c15486f1975ca36efcd67422702687fa5dab6674d3696fe0d
Date: Sat, 26 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745695793
