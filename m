Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1808F5A
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745786394; cv=none; b=tYTYiuLy29vPdPJIWbj3jhk2iFVCA0wddDvqqmm3tUWZ+PDxKfAQ8lzLka3h4johPSZFFHXZs0rbkV9prHT751f/SGA/+FnyHetzT1GObG+Go5QlvvSlYXZ7+nOQo2TbTXWudYHfMUa7RQzLtresX31oLk+VuD/mQLxtBzfIzRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745786394; c=relaxed/simple;
	bh=kZU/yF5SuHBeERkWBMYEJLtkTPC2WPesHr1d/QceKIU=;
	h=To:Subject:From:Message-Id:Date; b=cfye5CEKI76bwIw3XZrBmwQf1le4tU1kM+vJYfe2EYfUofCGIVm8AtrrjJJ7AE/Z1e7uQLj+GzZlFVuFL61n35RQd2nxNVCzDspF0gHlQEcLjNzkSJfg+ovQq1+olCr3ViFBsdy82D88TxcYN+WQuZdQXIglvODNe0c1rB1e46Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJnjMNoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJnjMNoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E87C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745786393;
	bh=kZU/yF5SuHBeERkWBMYEJLtkTPC2WPesHr1d/QceKIU=;
	h=To:Subject:From:Date:From;
	b=vJnjMNoclJoFxq4AwglF8I/VyGeE379p5/3gwjYqgbirHHWw5+y28AAAJ7mJDvV08
	 erGf5i5/DiS1yiiy06xbRBI64ASVwNOn3Tz3cBVm8heHXBkywoDhzSYS5ew3wJn5rM
	 lmxhMO3PLbXeGnCjZbgMKexYLj87yEvCkjTLO74kwpt466PRC3ocM5hfPc6Ll1+pAd
	 r0SzxLM/qai0YrQT61+UzUrjomyNa6KT3RfkVql+aIP3tbkUU6UNUC61cI8ofA+MLs
	 0pp5qOvPo+yTQn3WVs8l3m5c7m1uPlg34n3/2/NzefJFmJDZ94op9I8wPpRM2kAEYl
	 5cLFDgLrkjGag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A4CC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578639357.22454.9635705303459404585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2574d09b7282eb7ef6e56739c05150942f3df51724f50ab450d7ed852692d33d
Date: Sun, 27 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745786393
