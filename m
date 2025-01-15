Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F8A248BDA
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736939754; cv=none; b=iKX9dtNX4dsZgrbAavpf8e66049iSapeIf1sF3qzwJQzcp8zwzHl64G+ArbpNB424ioDBscAAUyErC8LcWzl02VXwfP+WA9RRZILAZXqkwy1HtrljoFyjoQwN5qQLF+BRu99UtN0ouLWreBXzbab+dkEgFeXA3XRmXNS5Cemwm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736939754; c=relaxed/simple;
	bh=BmfkT1n/cESZEQlT5c6INefc9L8pIswsGCuG576/GFU=;
	h=To:Subject:From:Message-Id:Date; b=bQsfr5nkADbR+cjWiNg9Uw3ghXyWjWT0ls1ge5IDYlXNngCVz8VU4VBjqzdwqHWPhp9RGCSyp+WcmDQGrqVutAmD/ruCvqwJJKMt/k02X1mCCjU9igN91IfsuqT+1fUs7S5flmBWB2yDdL5IROL7MDUG4GCEmONa7SPXxyfUIZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKNbhUJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKNbhUJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE97C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736939753;
	bh=BmfkT1n/cESZEQlT5c6INefc9L8pIswsGCuG576/GFU=;
	h=To:Subject:From:Date:From;
	b=HKNbhUJM67fD7VfzqXnu6H5nDsyGP7PlBZUua1fjo6ndO7IxuYhbHiDoc3YS39kFa
	 X2x2ciBJdu/YeOJjUBXsQluYUL4jE/THeTMwiSj96nFC1NSeKKUUWa2bU6LkXJg8HN
	 rE2m3Omh8fKmt9UPc0iaN2z8tnB4/pj5Ogia3YhRnRRSyCQYmVb9GCnmy2cvSEdle/
	 +Kmzm9qIvA9Fg5VjbGPTHqA6QcxrC/k4btgBTF9/xdBYMTFZwKla+WAwJeAjiWgzSB
	 oALeoBE64Zc499WwLFjDHuRfJVSh7O841gxBOzB3STNHOnlf/vwTG3w94/XcsupfXH
	 L2GN3UwCZ9zpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966B1C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693975360.786.3684789545321223379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a01a2e1218350b578cc16f08117ebb8ef35e61528bc4fa4f70d94a60d674fc8
Date: Wed, 15 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736939753
