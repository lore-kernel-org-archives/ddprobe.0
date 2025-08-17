Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6A83A1CD
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755426594; cv=none; b=Zg4xOdG0+mNS6Umj1+jy8+Z3KroBQLWuta0t1I0ZZLTrnsVFhfc6/iB3p6NpDm0q6px8PZMMm5UsRuSXRPJMKlDaab91ld5iW0wD2M+A/Mcpivtfo08GAfdKHvd8uTbVgvpz4HLCco4XWiUWMCs4dOlSxFu0NjbtHiHK7uEXKV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755426594; c=relaxed/simple;
	bh=s1g3vYcoxnYuI3/UoFZuYk0sj07SDSOLvQ9oQL8BUy0=;
	h=To:Subject:From:Message-Id:Date; b=mBXCEBf2byOai91IwVLVmdNVcD8LhdMx8emyyDptNu4Wlk2hlo9twfHMTdQcisN2X2FTqU5BOMuT9IC3i6QlrMtJ7tP6NTJhmsojOUlfcJUjivC5+nagOHk2+SuQL1/mPoQIICmNZwEc2/rBxJxZDWxyW4EkhLGp1fLkiLxWNGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpbHRU4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpbHRU4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CF9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755426593;
	bh=s1g3vYcoxnYuI3/UoFZuYk0sj07SDSOLvQ9oQL8BUy0=;
	h=To:Subject:From:Date:From;
	b=cpbHRU4+oiup+Imn92TTvDOWIspLl5NZXyfcCBLS9cgFMnzRH5o7UCUEDkE+/hcRo
	 z0pIkaqfuOt+M9bKB7gI0cvrmc1C3w9V8KynCjwtdLT9Z1jQU2ielSV5SmaZK/DvAs
	 6jtskOYwniL+IximNh85+EStGKMmXYjC77tdj2hUlPimJ49q52W1sQxKGgPxS0Pd7D
	 9GcGGsWEtd+YqvouYqZmyiNUX9ox6EliJN5T1Fn01xXD7URRlWeor8WcJnKSc8Bp1L
	 sk/3q9B7B7grIHxSpPTbbwHsjKe6MlbOg2U46oDZb0eDFlHkSoVj3m4garEFMEQiW6
	 Yb6CywIRgyHSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A13CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542659359.25001.6648512405224420115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffe069a39e03fbccb5f550b0443bb4e24b2b7725adee59f756d1479c088bb5f
Date: Sun, 17 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755426593
