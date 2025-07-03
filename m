Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD402F872
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751504994; cv=none; b=iqvwTTF/VT2HMEmgztmNuvt7EgyA5HvUtJq4YNUH8UAl2zdpvoA0tpl7IwzBEDpk5wLCro8A40cAaNs33BflVTlmAw4Oy5NXYlFhlaizEzz+kncgVYUhMjWqvxPCTdzweW8tJLn27C7QR/VKst5P3oDP2ifCwtqVj1u2MSuvWgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751504994; c=relaxed/simple;
	bh=oZhQKGPlVGo+wSKA4clpPszJddW9Gtyu9KEYVx7Uwj8=;
	h=To:Subject:From:Message-Id:Date; b=rRpYR94QBmYdHpIyzMZG4EhcCj2wp+dSwVhsvpAo7O4NupfbucKxy4B0xxiIIKBY/amvprlr+stXLfSC6yWjfPxXjeg6o1SpBmhFTeczzveIP4aQd2gwRD/qrPsS4BM2TgfmOVZFaZKbGen1fbMT9v5jChJJoYQs5DbDs0aSXmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSXyyEUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSXyyEUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A188DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751504993;
	bh=oZhQKGPlVGo+wSKA4clpPszJddW9Gtyu9KEYVx7Uwj8=;
	h=To:Subject:From:Date:From;
	b=GSXyyEUaPGXyw+KGWSQpoeUGqgx9lxNbTvcgk5lAsPfqGoUe6PZ4ghU7zzCCJm/JK
	 j5IItK7vB3xVWbfQZ0ADu0NilwG5/5mOLmPDD6FWmJT7tRDzZ/xckL3M0rb7xp4mAk
	 39lAWpcNZbIAt2qCSdfeSoPiUXTlitSwnC9tQT0K9DmH+Wr+8IWc5M3wiCwqAYhLRw
	 e5JcmzNrUqz3zmQsYFbww+uHM9EjR2/GkPfVJPk7Qn9AJit+xaBMf2rbMn63M2sif+
	 fbUrjlw6mH8pD5Q0GbZVEaAsEkGBq7246b5LnkE1RVufbWqVZzpBy4SrrJS4vuZoTb
	 4BHXJt0PtoqWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10AC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150499357.6828.5505612604872547148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3485a52154f5aba4cdcc14a6cc891d9c51859f38500482ff51ae443e1b8c872
Date: Thu, 03 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751504993
