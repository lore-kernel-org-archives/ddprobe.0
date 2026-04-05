Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A4D433B3
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775415934; cv=none; b=rxMCTl5zzWlMOA+PiSNtLMm0XI4Umrf57PLxjgLltRRK2pQ5QJ7nF8ZBBnBH87XyYW9c6oZKjK5VqBtxfu/32Wvc3vRevzJR11avAT5dr4GgL82TKoKoUaggLNVBGF0/9h9maAqtGwit2vhLI/wML/bdv2ubpa/rN+5Bj2psGFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775415934; c=relaxed/simple;
	bh=p3M1+O98JdUAK+h7+0jMJsOPSY3OAwyZaqUo18GnwSY=;
	h=To:Subject:From:Message-Id:Date; b=JX5YTQDM4VSdqwfpCrV7rBp2a26cx6mRV+6QM/sFZQUxkm5fXeTsoDscU8x/jfTwROYuAZyT6ezfqiL3f4WgggGzZDlX5qDkLzlQ0KEHb299wjEfZnv9D+7vmu5Kw6pePNCuY/4QxECoHBqan6ybmCQiY3WPMLr7/c5yK/5qfbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8yYooJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8yYooJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0338C19424
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775415933;
	bh=p3M1+O98JdUAK+h7+0jMJsOPSY3OAwyZaqUo18GnwSY=;
	h=To:Subject:From:Date:From;
	b=j8yYooJAPBCaCkapd371XXc3q1YNnRE6c3OiMTISr9j705UAfSq9gp41a4I8JRqU9
	 3/U7kOeuPETFPt/2nZZDEuHzdYI/Npro1ZRsbQgOj3kH2J7o35Q2pslQVveQit5FGr
	 bmLxs9LVU76ZAa/BgCmWmI0nLPyuSQTHAWG+3eCNOdzna7pqHvZQEUKHTulHJ7It/M
	 yL3plaFnWO8fereYn3QygoU8AfWsQA/4RZQxlibfOH5J3bt3v843BY8SSYcwtuOfZX
	 7gM/YwcN848mhQuRk72e8UQ5/P8473gfVKwQiDo0MWZp08gkM+33/k5Ace1MGkpLMe
	 6YXErAaoTil6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4E2E9D812
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541593370.26477.17981221147824103991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bddd8e996ef8c16619c951c884d4af49093e337091e35984cf8d6d488030069
Date: Sun, 05 Apr 2026 19:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775415933
