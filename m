Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237CB433AB
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730724354; cv=none; b=lyyLgH79UmOjN6rs+wIP3/wjPF746SQ4ck+7yRFwd4jasT/MNPeKsLmvT+WYH+/z6QiX57hifpbhST7xn9OvoRRx0A5XyYCeGuxNjOLbUKfO3Qz+e87W+ljwWvCXYxlqqkCWp/8fEGe/XRhockDN8qBNERWf6fWErlcIH3wNSog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730724354; c=relaxed/simple;
	bh=H8sqze1VN25/tvlDbglh2CONf2NLP2zxGRFxtCiCImk=;
	h=To:Subject:From:Message-Id:Date; b=NB8KmVvlvpn7wfK9vWSkagiKM9+DHqREqyHXx/pDKeCppiPWVdF4NNQzbRQMrYVjp79rn2o7slue+Pc0xAn0pV0KtDq3OUSUhPxc6iQ/wAs/uZYa+Ptt/torZw6jtoe8hEwKwKI00g2JE2qMVWMZek8b4oqzYVAGT2vAQQsEakc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLowLf8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLowLf8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C76C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730724353;
	bh=H8sqze1VN25/tvlDbglh2CONf2NLP2zxGRFxtCiCImk=;
	h=To:Subject:From:Date:From;
	b=YLowLf8kjobSlu+WgtpqlraoS3MwUvAH3ORky5aOOKi0DUlx7FoWek+gPE6fa7RkM
	 HBXnxpV1PGRb2yyZmAGihoNjakeVFdaesfA7ZmYv/FLneARn6/NIz4Du+bk5YU6gcb
	 U3K+XrrRWNF67I2JbrwL0kyyI5Wrm1dYHp0RLnzN/nmHj023P1x30SmeShrvDTn6eC
	 xuwUz2VCuPktSuV3RUV6SSK3r4kNDpRB8LE7iVBfLq9XL22gKn6gN9VbzJXqFBZ2Wd
	 xVZvOltikTEUsj4YruRJI5LQMurj9ZBOLlxoECNLe06fQD5l2mC8sWSeQAapAZOrnZ
	 eK+TLEQSk0iiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A41DD132BB
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173072435362.10929.12967973924930598025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67797112afac8a89da5438c98070000c215e96dbf20c793990e3b51403f2c2fd
Date: Mon, 04 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730724353
