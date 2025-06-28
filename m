Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2497543AA1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751148594; cv=none; b=pFeJ/becwGUNywP+SF5RyOVI+j5hgE9uaO5kqWJ1QhSzlmyDidHJWjUYy/9b3KyXkXpxERjtXnFiqLIwUrhmdzFdWSWG81+Ol2d7oxqb3lqcl+GS7CffV9faJ8ARLE7c4ogsf4XzYGeco2vvn9NbykEgQy4RmNaMGs9CXNZmYFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751148594; c=relaxed/simple;
	bh=y+0IY3oL5wIiRVX0rqXvz378Bw9VYZolmCAfUvQoXVI=;
	h=To:Subject:From:Message-Id:Date; b=RnQHuFwjn9Q1XvNO0bMK2JBiDLAh+P+IM1fsNJ+3zmTfWWHXOePrnxMEL2W+2xskt1NAYlk1w/sTzfK14r0ylN7KsBNaGNEIqu5Plm4zp5fDvZpXKd0INFjocj7VClEt1Fuu0AoTkvGhUmJFq1AYveS6E93HRVzKlHS/EpqlyL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+/vTVe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+/vTVe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F52C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751148593;
	bh=y+0IY3oL5wIiRVX0rqXvz378Bw9VYZolmCAfUvQoXVI=;
	h=To:Subject:From:Date:From;
	b=t+/vTVe0MMVUPKN/t/E4U7iY33fmfZNCnkALKHoGe9tUXzJc3on9cT84PhIk8vhU8
	 oVtgwq1YVhq7HMZIqz6/fxgIXOzxMEC+W/Fh4xKb9w2B5c418jEx1a1uNbzOcA28dq
	 WiFlMTGz32BfNQvcsAr2+DUHD8oBMrgu2+F6O6X/Lv/uNv34ytEuNmsyK2sUIAW+5W
	 1RUI+l9vcdLRTUi2Lb3XBdXEDE6qZYN1KVecQ3mY1Bfci9HdF5p3Q6/5dfm6b2TF81
	 abKISAOab6qXo0iz94x/8O92/x8gM99LA3qmtmrrm5O+zmjUFbkOTXezJXm6kVGbRT
	 Oir3UcRDWeqyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C23C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114859357.11710.17003879248288117812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3180ac3d3f7baa81ff60b18452ef88f78bf13b7a3d6990ff8df2cb37f7cc4fce
Date: Sat, 28 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751148593
