Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402F918EB0
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753063194; cv=none; b=BT5CO0wsxpIknW5YQaXGdPXyfHygLGzCCFDH2yIBy3XWYEIAe9BC5NwXKMngyUf+1rLb0Ce9wkjHHMmBiYXho+pgl7DGtlSUdyIL9sS4blDwwoU7xAJmTyNBv+j3ZuPQJmWhoFRX6rcTcrguAbrj7DrOw5hqSbLCja6kSwKUgTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753063194; c=relaxed/simple;
	bh=2UBZ4LdHim6RnTGsD+2yvYL6w87MJjS/o7TQATb6cQc=;
	h=To:Subject:From:Message-Id:Date; b=TE280clQnRh9SZLT/LxZdWUAU43ie677AN9XO8UpFjcsIo6J7Jp6RTfKUbQqPPKxOxH2TA+e5o7bc7ZqPC+hWnzwsYOQBJFjq77FqrXQIc1FXmqab6weIlOg2NckTmWEVInotzO+NaHF3DBc12ujmkPl6J8gq91tFgC/XlRu3W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRdlkgPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRdlkgPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EF9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753063193;
	bh=2UBZ4LdHim6RnTGsD+2yvYL6w87MJjS/o7TQATb6cQc=;
	h=To:Subject:From:Date:From;
	b=dRdlkgPWNDhZYQo8Kq+64/nB6NjVRk4JMQi26mLPYIZ0yxyfgZbilt38PWWS7I6Jw
	 JHfOb54X0HrOl92WelRmlDfw3RX27ZzVygWk8kBbSwPrXDWqVYzYOjniByFtwup7xA
	 BUafZXDkSOHY4fzoHnHiEREVhBtyiE/LShb2+UT/TCELhJOVn7uGDnkThmLOZMcdEF
	 HSvPQEPnkcdOp92yFcL41b6fpNek5LYDaa56BYI3Q2f+9dXjV0MQdPtZa6Lm0Xk+HC
	 B4Vt+d+JLmHfpO1+e6yjlEdRd5oA26THkxsXBe7XtaTmYfVKqrBBXTlfB+1V8evIkF
	 RCNC2iP+Ih00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950CAC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306319358.24884.12279481727147939271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c8a41a279e6ca89ffcb70be3b20b546c68e8affbf11a55a7a8fc2a47a51048d
Date: Mon, 21 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753063193
