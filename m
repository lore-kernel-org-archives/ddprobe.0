Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA652DECBF
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791675634; cv=none; b=D+HPa/vXhxbymYd5XjUM7KDyi4wVpBsAqYonJUvyCQkihPnDl4kWHE+Op10N9p4CxsRh6Yip05ec/MsMEoSLlpJTvRVrtrLtaj7ANYlJgz9cfhCxWeBaW/ytbni8+KQz3Kfv0vP0NWGoV7lng0IdyPvfulsQa2C6DJg1H8/c+cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791675634; c=relaxed/simple;
	bh=+JQHjK3gJjIaf6TUR5GdtTB/YAJ9mKu850rGBOOKVCA=;
	h=To:Subject:From:Message-Id:Date; b=XtIr+Vo8rVm3+ivcxC/kGjlJonHA8Fc1YGRtcD6g3d4SJB4harZ6xEnQwD/gnyjMeBWae79C6b7q7KjjvJrNJgtq94vXBFbvY4FHLWnnivB724p7tQ3uUsm7llsS/rACtrnKo+b9Ifv5PJy/VkPRbNE1UgzSGceRlDTMnEgATV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaVR0HEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaVR0HEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D614EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791675633;
	bh=+JQHjK3gJjIaf6TUR5GdtTB/YAJ9mKu850rGBOOKVCA=;
	h=To:Subject:From:Date:From;
	b=NaVR0HECvcu9ClTYgx7dAuYbKLa78pIUkaRqejzxjct3pAdpIVK3/67QNuLZqPn6a
	 9Jyq1IcLTb+Z5lrPOiCDXC+BwkXXNDFdLWwu7p48tGHNS0N7HtD1atOGHvtgwlUc5E
	 Qc7J/pA3f/XcfDbaN1EEu07tgqtuXkYw+LNUydPz5MjgCqDCcr1sG3lZnWXIIBWzBM
	 sK7Vd+XMQ9oirI7mpgr9khluuYspJBDKiMqm0UQxDBKZt/h7OK+BZ9/cv75mm7kR+i
	 zhwuNSsbo80F/yyd5U9mfkZLGgJtt01yKquxgW0PVPR2YsKJ3KKzc+hWAygS5uuJYD
	 ZMmvwK7KgLMgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF65CCA9ECA
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167563368.19834.4415037661375772682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3837bf8033e3adcfca7a6e8c3d8c089313f6ee481979059aa8b673fe97d51875
Date: Sat, 10 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791675633
