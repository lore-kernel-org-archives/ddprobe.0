Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F22B14F98
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745215194; cv=none; b=vB2tWGlj6iaCCz5b9kbPAwcqb5l63fn+MwZsoiFWlRRztA4xZoO+DCZxA6q+IqJh3AJz1hZmrlqGW+XdLUZeEGoMn+fJfp9H5XXc34PITxb6mQ6TiLIx//pO1JGqk/gk2e0K9+FLKZG8HhXsUoSxGawg3JgihAk8aePx6TbTOzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745215194; c=relaxed/simple;
	bh=xHlqewb0nvQHxioJoVBcqQJZd585S88jCeexQybsjO4=;
	h=To:Subject:From:Message-Id:Date; b=Ro5ffCjepa+sH/wvDAMQrIGTqqJQeXsoCI0DXpMKWFxQv/Rgu+OUzPo80totMbiyeXllGhRjm4VC7OZKzoDNJHmImtUtmIv9frS5tWya+TOeDjHwACEopnB0/xYqtXuYnctY4HFB8Mj/T8D4R2Tfm8JJSl1zUg15iftG01Nsyik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gI0kGL3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gI0kGL3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B98C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745215193;
	bh=xHlqewb0nvQHxioJoVBcqQJZd585S88jCeexQybsjO4=;
	h=To:Subject:From:Date:From;
	b=gI0kGL3s8DbYf8BvCRmn5YcCJ0/8Oio2ZEhl3pYm2xaKVbMIrsUin02jfi9zOAwvF
	 /cIKwQxMCxumHfxqy4ems/obFJtmjgiuLt5cCyTYC4gFpyvG8ZGbU3g9kVQSG8eJZY
	 uT/FSkqZa/+CWkBu/UNezJLOiCRo9AATt+1ttKwrIhdIkI/prZAbGiVF6Q3PuLTZL9
	 OCXnE6OBRm+27BAAEJJpY/m6pxNQM3dLfDXvFDEL21cmFzW4YH0KNrXO4vXcIKC+/i
	 JhzWbw729tjql57nP2/UAhCxgJ9pJ6fh6USw5VRcR1PuZHRc0lLn74H/dEI7VttlyF
	 DiA6Nx3ilYC8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E78C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521519358.11359.13214086332324060104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991dc5269fd9a67be57333122d06c2207c2206dd2d46d7b801a4af9a1eaf9f54
Date: Mon, 21 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745215193
