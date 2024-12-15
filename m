Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E3417BA2
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734242754; cv=none; b=NxqMs6vHq/FsPfWZihYB+Wn7VbYPeuCeM2iiIHRLnED4YwS6avnHJKwcFxZJzKnaAnx4fsMsUvzw9+MnUsBocNQ+/pqSddyuLLnXP0YF3Oiwz5m28qrSEJoJXIp/LzUAsAZvM5dZvkQoJH+AceOe0R0ZO+1XQx5dsIlAelvXPtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734242754; c=relaxed/simple;
	bh=lVujkQJiJU7ythWAyynYtA4r4fX2u/uyE+ZHNEosUD8=;
	h=To:Subject:From:Message-Id:Date; b=W+GGQUZQ5ema8bXPp7clTg72G+Pt1rVPucS1nrkb0pXV/thIKvFNEnGX70sB5Ee7fM8xFqlc5F33SHYEFgM38/ppV9+nFfhq8HdyngKjqIihergNekbNhmcILvT5FHaLTSkIZfpggGB8W6JX2FQPP+KIjSt+Tx/OAy76nH7wOEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTBmgmsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTBmgmsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C33C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734242753;
	bh=lVujkQJiJU7ythWAyynYtA4r4fX2u/uyE+ZHNEosUD8=;
	h=To:Subject:From:Date:From;
	b=QTBmgmsDQ528rIQgeJN4PSGRvlZwDPnmlPUE7z/xjesckZAde/PvAVBvLvUtKHaQP
	 hhBmTskWfXbqYuBWyFpishad2rLCvZ7RMYsMcpQe0A0ayIiA78Y0+qSLcCDbJe9n9D
	 kIHzwjtUK/3J4Qqzni7vVgVku0GWQMUtm9ufvbk/kkI1z6KVfKHF+XvtgiK7e2NPGm
	 cytlc8a2IxO1OS/oeQhvhb5kLTTAgr5eNB4Ln75Ce+Sp0G9eP3UMhKKkjKVn+3mMIg
	 syIdEIaObcJtUqIBe03jQF1p8MtvcbdeU29X6jpyWYscyQ1BvPEL3E2F/xudzutfBX
	 ovp+F+C1cOsWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E638E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173424275360.2658.7965357760232784859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d599fc76f0f6b6a53575429f1a7efb620c4e55590ab06d0f8da8b74b9f124062
Date: Sun, 15 Dec 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734242753
