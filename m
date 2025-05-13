Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3BA1E570D
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747129194; cv=none; b=fAj48gSgYCqVnviLxUmWWq38MRm+AzSYsuSq1voL6zbZpgD/K35hBqDb32xT1Cr9yw2fu5K43OdnK9Y2fGKk84Hrh89OuFe8SwlMraQ8KEfb4BoeZ09jRRUw8MQxNQN59Qwow+B4fwTaJs8hEEwv0c0BT6O1iuDaCmzTTtY04R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747129194; c=relaxed/simple;
	bh=HKl7nf1ZsN6B53x15fpuSXBraMxhKNXvw/kR8QKk+Kg=;
	h=To:Subject:From:Message-Id:Date; b=DV8jGckFLeWunX5eL8Vu6iItWmGdyalHAeLvZPNCY9JreYQJKTGd6EcmuGsC03w83pXo+fjrkD4MHiJg4b7ID0g3lEFw6dgtmR+tcHIWXBrZiwf3gf2akWrUqv2tCEXcWNG6fU8xieG1XmsJh47t6259P9duDUwNEwQk+a/kR8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhmnSjzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhmnSjzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2735C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747129193;
	bh=HKl7nf1ZsN6B53x15fpuSXBraMxhKNXvw/kR8QKk+Kg=;
	h=To:Subject:From:Date:From;
	b=UhmnSjzqa2b/shDwnOSLMMXM+l3MRvlxiYUIFS0p5+HOcvuxfrf92ceYEYkkjvM8V
	 P+fzvQkTixxVnCrgxCy3tVJ4u8MkJgHCdb11vS2IbEaUt9TwBAER61naLxJmBk59a8
	 qLUr2qKq4p2ZqxDhsbSVj//10FeRQwhsE0Uzh2M1kDgBqk0cB/JqK397KZw+n5R9BQ
	 2Hf+DELCtdFmR/98//QsVnryO032YpLpwfLyOiN1XUf+TUxsvvu2tluZtP8e/XCtd9
	 ZeMIxo+7QXLRa8FfHSAzJTthUgC1x/fgOO8yqMJwzbgWDsZancSrVKu7m1e+DdjvDR
	 HIHpm3PMLIPCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AFDC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712919359.25214.5760978963472938679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cabc7b6023aa19860569ebdb97b85b708d798615da34f8ae3b90d6f5e95ebc4
Date: Tue, 13 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747129193
