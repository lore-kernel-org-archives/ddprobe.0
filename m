Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B5E23DE
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743299994; cv=none; b=MSd2sbW0ofgQ3+73nnwMprcJMqFIQN1vUjuBQ6L38kU1eYZk/UgCXtM+wNp3a03CGd7qNm5y/6j6BZjuUJSTkhD0+RU2Zk243Klxm3C+Y7G2ozvUSrh5+suwCbdHtAowzmOEkC8Ne6gPVgjrqhfI4/hE0SZhoYAbzrnmvz0JkDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743299994; c=relaxed/simple;
	bh=0/QAFwXVjzaFuPjr64eDR/qGGQcASDj623GzDaPyUB4=;
	h=To:Subject:From:Message-Id:Date; b=A0w5/J9TOzPY7iyksYHJBpYBxq2Y1ttdgoK6bYYgnDZT+iwdqfQk0dISFhU7T6p2DS2k868UorQ7D7pUoibVsmmoILjnhLl0O5i4RiPB4CbyaKFDL/pH6254UTQw8QZDyzuIIn9CTtLY1LEFcr5EbIVC7ashYhPWP3S5LkE0OvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkWJF10m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkWJF10m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A27C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743299993;
	bh=0/QAFwXVjzaFuPjr64eDR/qGGQcASDj623GzDaPyUB4=;
	h=To:Subject:From:Date:From;
	b=pkWJF10muUJgDWSLRU20yrvp5qEOkVs0KoVT0gPlkl9NU41utbMpqBfGTPWlYAnJk
	 ZC27LZhEztQn4ivtZWvNGPalb8zO+R+dZLPFARGY5edDjkVOCJiPT4X4rKQZh1DxYf
	 BmsqfG7OyaYz9/cXevxXRzOtQREbCnhaM/Ggfj8ddDZQ/YA2F+XFf07WQLD1fveEt3
	 p4HjwjOkuIe9PmKuIN4zVy/ujUhvkMkMHk3cf2scghWBuoxdjsxpgzD0q6kw5DtfNz
	 uvRDCFeO/1ojMBQq7d+3Xpbhi6eW4TNZ5lgXEa/miXABZ5/H5WSUnZKLkoPZc1WDQY
	 q5kf9MOQPGj4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A681C36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329999358.7001.16610661721144811793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25af26cef2ade114e8ebe6097d9b14a49c3934338c2274c8184b10336c757737
Date: Sun, 30 Mar 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743299993
