Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8E84921A6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788945034; cv=none; b=ONFDpQswLQD8E4BnwKLIG37y16vHkA3xAgiHMs8ktw0aQnq5jiuCUBH5jpJDGVlNL9Q7OhyPvy7ruTd3Slr3Co9bfCJsInWfbQpL4puOK9teJGScWxIB7F5TXYOpDm6zoH9AKBAvugmQjizfiqE1DACez5rIy4k7s0kmcaZTLA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788945034; c=relaxed/simple;
	bh=BTaww1n6CvYPkNjjlLXGYQEB0fAJw9QMH6SW1DbYky4=;
	h=To:Subject:From:Message-Id:Date; b=APCWk5ndZUhFo261sjJIomflok3YIhcjTNx0STqyqfV7vhU+KJD6SM3tvA2rt0W+T4UUWpRK30A1uLA8b9NebxW5rcmuqoyMIu/74veYJLSeYME31djk+TxCq42Ec0L1sKopCedBp8drRrPs2THu8Y3bvFunir0Qo0nRE9T3pbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hV5vSfL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hV5vSfL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F6AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788945033;
	bh=BTaww1n6CvYPkNjjlLXGYQEB0fAJw9QMH6SW1DbYky4=;
	h=To:Subject:From:Date:From;
	b=hV5vSfL9AIGbaaXD6JkFNhrdFNqIGmwHBxEM9uriBT5KkARZeHnSLGzvgzbFvsvMl
	 oq2mtlwXxjPMxG4B1ZdZRYb1W4MCyMqMW4OIO9DHSz6coktyTXKVW4SlSlE5Rf6q4d
	 BjO9/O1/kBIAhgI6sz4erdSZXF3OLF2zWwEEqd6YKNMjNHzh3r2AmJ4ogcqBgoyfvb
	 riB+yqfLM8+Fuh6p4b8iuAdtIjz6l5JZhtTQWpClqvwgX97TOU8ZKMpFUmT8+UIvjC
	 w0lxaQBdY+Srxyo9rv1tU0A/tyB36Yax2mysg/IqRzGKvmPnCI+roXlbaULnl93vST
	 YwFkxi3QuDsFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBA9C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894503370.2973.15340165528499791416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2008daab2baf0a15c9c3232c540d95a76f1a5397dcd1583aaafd130a0a00c18
Date: Wed, 09 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788945033
