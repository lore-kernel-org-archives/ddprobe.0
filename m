Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338311DF252
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760290794; cv=none; b=a7bKM3DD154FzpbOZpRGqvFZ1Lk/3NKawgEJo9HxO7lm04dQciKWgaNbPfD8fph63esaBMIMsp7lhs5yHbHppi8mBH04e36nvF1zcUNZXLNupMUHtwoxqRLMZmZRO6XhkmYwE68XSiRFKB7ya4ZjikUItuftkf45JS/dhvrkX2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760290794; c=relaxed/simple;
	bh=Io+RyyIyUn7q9OLklon6CnjdJRpA7lG7aWPYFlHMuow=;
	h=To:Subject:From:Message-Id:Date; b=L0PCxXmyHIIkm9XH2uafNeq6jD2VMMVvoskIyipyYFRlLIA/KkOlrcyD+Qcgo/yQa3aggMOw4prmgGCj9PSpdgq5s5ei7QAHIslfK5pc2Z1MkZK8OGpY9JVIMtmvSxM8R4pIRSMwXNN7LVXexA62NR7GBuQdjOCUbY0F7b+ZN8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkScH91Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkScH91Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6785C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760290793;
	bh=Io+RyyIyUn7q9OLklon6CnjdJRpA7lG7aWPYFlHMuow=;
	h=To:Subject:From:Date:From;
	b=ZkScH91YkH3OyJ8Pw9bsgHihEBKwhMebELT0s9J8QonR2xmjy/GX2Q9UKJ9aE5duC
	 rUSd8WUKA2SzyWGiSSAQF7BOoAWC/pLjYhHh5Tim8WFQYjsjciokidwG15KR2vgu8H
	 ESmHkHTi1BN7hxghzY1NAbwOJy9+MeQMFWAVmS+LIJfHY/SaO/kCxlNK5YRIsy0bJ8
	 ZXnkaO9Wk8eLukY18PXOKJIotb0gG3mkrI/ULJ0Guj+cTr9Cl/RN1iirwdo6cyG6Gy
	 hIdHRNZeWjLyACf7jHL5OWZTndzN2Tyj+tgDR2dZzAWrsg+QzUvENz7GNVjNjk48R6
	 j92zt/qaC44pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B47CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029079357.17479.17812767701299383705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7787a6b9bded0ee8929d27a56a4fcad439108d419cbd4ed7ddf23f6124415a16
Date: Sun, 12 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760290793
