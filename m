Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464533C39
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724606154; cv=none; b=WH9aMmhZQC5XIl+JhVzygiSY6w0Yo6OFRqW0UyD/wjgi/50vwoFnF8eiLrC2a/7bQ3V4MgRZQoBYwlEWObI6CyKj//KRuKgzL25Fsd14yzhTmkyrAIEa0FT/5eS/vMvURcVm097npCgt+FeLmxbGV0aJX7tXk3+L5R3cUPbz3fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724606154; c=relaxed/simple;
	bh=+zK1uqQnmBfHPZsy8XBIyMO5oZfOyg2YCtMeVKPmY1o=;
	h=To:Subject:From:Message-Id:Date; b=lXYyf6G7DZPqeKqwfmug73LlF5EbzCqQop9Nj46WgcPyYkmkN1e8o85wy5CnTSpgzgeu04RRt66kseHAPVrNHSM5FZ7un/MHC/mZ22XjVwmajJcvl+1d3qvxru7MUiBdEzegKjWm0auUwxJM71LhTQbwWWBAdLQtZ4OzqY6kb5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvHrmUr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvHrmUr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9A1C4AF13
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724606153;
	bh=+zK1uqQnmBfHPZsy8XBIyMO5oZfOyg2YCtMeVKPmY1o=;
	h=To:Subject:From:Date:From;
	b=bvHrmUr8//dhm5stEghft/BLfTaxbrFqHW5aH+J88pRP4UiuEXJGZvKgez0AvJbj6
	 jFeS2Hj15kYBZyKWiAjqyBD47Az7Az87TieAC0vsMIK3qMivm8OlBkuQNo7g4bQyo7
	 b3AWs2qeCGTya/jlskrRdG/jOe80i+KbL9DscI3jV3Z4bOti7EsoMMEmLVyS6MoCvS
	 J/a5M1GRqK6F7TVlo1zVWvM+Zt7tHKChm//ttkRSRIAVIRt29W/V33wj54T5SJxzJN
	 QUfLoRSrMXN9PLJH4jfK4PkmlKaLPH0x9tLBzGs7REt/HU0kXhLVXQBpTZ/klOsDvp
	 UIVpgNAUTqffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF47C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172460615359.6959.5048502536946663645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700617532df441b0b2562e7a83d0a0a8ec908b97509d62d341b768b758957378
Date: Sun, 25 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724606153
