Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1788A3191B8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762182594; cv=none; b=VXZQGemQ5p7NPUwxk4CrGKRDHAN+QK3YuYbEWCw7Jl1kTwMMHhmyB6NxG0tXkF6EuEQz3JUs5bvE9SH77V0TbKCQ2HL3yVASxQ6HyAY4S95MWJs6tw9ioiWSx/MqmIFseDeJS//1LevyDl9q4G/fgYLA40gnF0x6HMyRa7SfYAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762182594; c=relaxed/simple;
	bh=NMcOJMDukaHkHtixJWrhiZbz1ONkkSTu/JfAqrwdFFY=;
	h=To:Subject:From:Message-Id:Date; b=F5Bd0JQonQyRmnPmPTRT0my/UT+sgMSXqXcCvxUkV5FKYguvIXcvtZM1h2vxYUY+ozZ6AZ+DQbM9WN0xNznef41oTcjM1aYdK27gEzIxIKu4zC4x9laRlPxenApKWEm1+qujlpgjT2J6Cen4fIDY9xbSEEru24x/CvgzH/Eubqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDkdZOKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDkdZOKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8E9C116C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762182593;
	bh=NMcOJMDukaHkHtixJWrhiZbz1ONkkSTu/JfAqrwdFFY=;
	h=To:Subject:From:Date:From;
	b=kDkdZOKhjY+7ET7w/pJAmpbp3sf0CPwNTJCdeE45nZw7pW/mUgJODaJ6K4cXctMiS
	 Z3qXOv4zdXB/e9JA12mA8kYicU/EW/4G9cwisFWUVLAussV4uK4f4g5ZrAMl+s7sq6
	 h783UvY54N6tKayov/I91W+HlIozE6OwznT2KshY3IYLtmPLRUNdxLTKzLsCTjLhZM
	 /JKeszVY92b0dYolEgaHH+FCZe3ji4A0SjjhY5sHpssruE90XJWCb2E2kIrUy85KLw
	 Jf81+xuIux9n+v2oryBZqnFZxgcpAsE5lQKAlm8JLuITWMpfJX80TfKKGoZE6b+drW
	 tbKsXcdpJ2c1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9032ACCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218259358.22155.9349438289185468608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a9f154537a6023f71c96e63a033fea999f0572d13097b2e55624ef2ec3b8c0
Date: Mon, 03 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762182593
