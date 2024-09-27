Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107DA169397
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727456154; cv=none; b=c5r014yvjbZpqIB7N14GPZ/q8badSdpzEbOzpayfNhzkTb8ZUULDfzmOF8eRxBYHByUx5N/+DHaYXLPyej53HqyJ/VSiRJd7DTjbNF4kHDyshX1v3+X0NUu6dg8WE+YEVdEhaqlpdnLVVhd/BEUcqJtIrIxlZw9lXD5lHu5Pkv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727456154; c=relaxed/simple;
	bh=p8UqoBRll0sr/+9CQerVLvSJNM3CWhTLUg1m1suNW/Q=;
	h=To:Subject:From:Message-Id:Date; b=kPI+saJ4f958AIe+KL/XZQ6QR4ItMpSNKHVPX1C3L6PzkcYPkErTWp9+wC4BPZBRNbnKd/rZXX78VSHaRzsI6mmypLO5bo+Qbw7J44mvOqdFBKWt3pU5KBFj5npqBR/q50WXbAHnCSzn8FmeiwV6j7ilFMLY6CUXsaCsuiiW7G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZs862Oc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZs862Oc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10D9C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727456153;
	bh=p8UqoBRll0sr/+9CQerVLvSJNM3CWhTLUg1m1suNW/Q=;
	h=To:Subject:From:Date:From;
	b=bZs862OcOsaqXM/H4iLZkhFWuDu39Tgr1Ctz7aXwbBFD/E3eetiH4I2rnmXOTEvU+
	 FUafgbarmm6VGQqgxA81oMT5sjRlV92KtZt/CVWMwGpQEauZQImov4L5jv7CZo96UO
	 m+sX2lD2txt62vW1OFQQHmw6sqV6Aedj6W7s2sZUoDstZaagHfxh9M3vC+B9cvvJdY
	 nfnaLSSNdM1JQuGKKkAPezTK21Mx4P+jv+UUZnYWtdThHYIzLo6SH7IGp7deGQvhsl
	 KQ1gJmGSdYxbuJ325B4EgbOnYNoUefbvTE2swq3wUU3mkmlimOns4BMmmrYBzCh/Dk
	 w0SwCliVrfz3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B9FCDD1CE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745615359.7842.17665458183750505359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bcf284b432c852d38d092f53c5fcc126e09ce3c9837be9b4f68e61931e38fc1
Date: Fri, 27 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727456153
