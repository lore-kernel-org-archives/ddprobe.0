Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F3B24BCE8
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747072194; cv=none; b=uar10MabR0d8jot4JLIBHIv1oU8pd199P1CSSZ7aKARoFyQ5bbU4c2ZzXYO1nhr1KyqB53h34DWtmFHZ7PFbHDwzMthfmuEkSwmjUqtnRa673Qt+Bbav0TSjocbuVCmGrPvP8eE6GGYov25hrTfQ2zJQTRgbYhjN1IwNSNOd8Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747072194; c=relaxed/simple;
	bh=YXcivvmWX3LJnz9LntiHF6lHJ2rWYxRe8KRxB+UW8xs=;
	h=To:Subject:From:Message-Id:Date; b=hkxxkq3Ktu2Ur19xHHBVavgCW/vAjtraDcxdiQhi7js3e1lSLb48+r+HlCMWasGffhNmRGwfDeKiGtQMew83/8hn4DNAJ4Wqcy6I/BZTiioWtkENeZSmU62mqRA7VmRvDyd9FrXjeUJOa553mSw5KwrX63i4/Wr7ZSK6KSnh8pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6BCMMwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6BCMMwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7718C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747072193;
	bh=YXcivvmWX3LJnz9LntiHF6lHJ2rWYxRe8KRxB+UW8xs=;
	h=To:Subject:From:Date:From;
	b=s6BCMMwTTTjdrDgKzMLzKd8BpWedBmrS30COzB8I82A1HmY2Z37GocH+mSM4jqQuf
	 9v16fhcoP4eE2/0LgqloYz4QiZqdMriMfhom4Qjy9jjf1OMaUcxgt665iUJ0yaGNo3
	 g1/Ux4lZ4gFFT9GFxQUEJv5h5c9YkSttMpgh6n3LLgOD6XpYMnJTbGRzZh+/m0FhJP
	 cbQXcCOl+AWCSoREOEJNtHQwBZUbD9elP6FsXCK6xa7TM6y6r5tG6nW8madN2arBhT
	 /AghbebBHYEQAaSblFS8ca1EZmzCI8vsu3ZpvqOzSQusln0sukhkO89xNtCb+NkqeX
	 KOJvvtKAnBF3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97513C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707219358.18373.13325334572797544968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59b2c12f1f91e56121d1daca8cb27d98c221fb1a8419897f71a05cb40d3bf96
Date: Mon, 12 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747072193
