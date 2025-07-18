Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3216928B41A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752836994; cv=none; b=RDpC93vJdF/nvW49cIx50UfRGPoffQmKSKQtpvuqbmfvY1zclkblyyWPNp8KLKSmWDcLG1I06cJsnW89bp1pJfcLuyfvIYFpxWMs96HVVdmuYJQ/LtVXyClfpI0/7sS0g0DiIk1+zssMX4yZycjFqPawQOwdRjykGMM2x+3p31A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752836994; c=relaxed/simple;
	bh=g65zselUEmJ41Wc0XkGBKv3g9C4AWxU/7wjP2XWxMS0=;
	h=To:Subject:From:Message-Id:Date; b=VD5Wb866JcGzfhSbJXsyYCuNGaLulc4VGWhMxP4JzoJpMiutpuzXpnNnpOQ2bACf28cXWai1ruPgCKVGQVssD8W2gTDaKUUwl3SKvSz8dsPK5gMjGUIn1rDNCZY/hctCG8u7Ez6to+hB0Q/96bWprUvwvVP+jmrKJyaBFco8PcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAmxgY7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAmxgY7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6AAC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752836993;
	bh=g65zselUEmJ41Wc0XkGBKv3g9C4AWxU/7wjP2XWxMS0=;
	h=To:Subject:From:Date:From;
	b=YAmxgY7PMWG72vg2BDXeqgWmhBuS9wLgiaj72Ww6udQBMG3t89fueX6Byio7yYuNj
	 /vieDndRVtdIaZPxqv12NiMK4empcZPjOE1lFkzQdL29BuCvTEOXlEIiKV23d2oyH7
	 O1T/8kro/Sb2Jmq/y8w/lwmjfGiWqjX579kfd8g5/+qeT4eefK93F4LGwGfOqPIJV8
	 44G2Z2uZ2lZguENAXY8aRSAmIuUj5aEW3mdwscDkWx+c8H1uX7rBEn5ZZJvEl29ESz
	 tTBm4TnnbMoSdAkMhvO8+IBcBpvgGJ3bmS6X59H4w22I2Uarj9tHy8dbb1kZfltz1/
	 rYev38pWHARNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC86C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283699357.13246.4015998972930491537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8989fc80e594440df2ceef75193dfd3dcc4ebe097588f7002263bb572f982a2e
Date: Fri, 18 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752836993
