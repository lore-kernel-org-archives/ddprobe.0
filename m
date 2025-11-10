Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2870319258E
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762747794; cv=none; b=XrIUxoskX6hf4xM7UsnCZlkhA42B4KtjYYOxijk6DwynPHAJCT5aX9QJVzR6MUE9dx7aZ13iSv8acr1W4WqabsEHYCjNNzJFk2LoyGmwFcykjrYNgPih6HlRaR3MnuUm1YJDj3cp8Rz/hF9pWkaTcKbfOmGAJURbTVfLfkcpW0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762747794; c=relaxed/simple;
	bh=v3iVtEs2w+XP1LmYjr9os6CfdkOyAprn4NuH1JbSYnA=;
	h=To:Subject:From:Message-Id:Date; b=D8GGCmHsoIYIS0Ya8tSOTY73oP12IwczbnAPSpc0++ZwVZEdjKArvy9ubj+rz/n85qs19sAoYcN6Q20iZL+FfljyYkdx2GqunAVd9LV9420XNqH1q2ioEN6wtAZ+i89hhCMqNSBndB9RW4dOngduCqSaLtio1Eb2mS0GR49BPq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNyB54Zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNyB54Zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A709EC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762747793;
	bh=v3iVtEs2w+XP1LmYjr9os6CfdkOyAprn4NuH1JbSYnA=;
	h=To:Subject:From:Date:From;
	b=qNyB54ZqySj6g8glOPTcnpHVg4QMc9jYovx1G+pi5zw8OTRUnKIYjzERskyYLuOAt
	 UMuYIyBV8uxOTsL18j3P8rIvzTa0M1CH5JxHNdJ9J4NFeCbCNY3Nq4bOkRG/Tm8sH7
	 m6SdIPj3p65Ca+wFWakU5K77qx5bhOPlU5kHLCcZT5PwjF7xyGgT0NL7FzqUZhga/o
	 UaLL7Hu7LJ18NkKWTFmz9JNyCQ3rnby5HUImL8irz21taxULc2q+xEJUFmIonc+XmC
	 THQg0ngHqKVgNEI0sxIwsogxMyReI4JE7T8KJ4bcn4ec2TotrW1biiWpBJhlKq1rnj
	 wgmeNslNyEtag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D86CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274779358.16516.3601926630498406863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365ecedbb887adf2840eea34e376b943fa4cc7ff3b1f56751196f5f0afb6dfd2
Date: Mon, 10 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762747793
