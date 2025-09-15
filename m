Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202F31EFFB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757911795; cv=none; b=G7Cyt5WbPn4C//KpUHabS1/zqgf7BJG5qjbS/V8dzwKbXWS2j+t1HcJlFWCEg6Lw2L7xJDniuK7o4fXn/D5Zxrw+HQz9lWqEQ1UkzvTE06k14G5oMVNb6+NZ3Xok3NDpKpCrn4XhIHzGz67oERgbxyEzdSE5EiWWrM0EL5H1DJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757911795; c=relaxed/simple;
	bh=nOu1eJE1oSmGx5pQg7Dq0355yO+uPC8fjqgRsKJeZsc=;
	h=To:Subject:From:Message-Id:Date; b=KG3e72IeJAFtYrKdfMc4CFMK9kQl2EOSmbzCHR7xKo9s39gbetJ+ikkWB2Isf1tCCzJTXGkahr4z1AOBxiDnFsU3/XVmgQG3UcFaXKZuA80iyUfCB8+7IHnFgtgiTuMWRWmlCuQux44pV2a2NYZ3AnMZ397o3p3tg2mXTR0Q21E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSGIW6jo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSGIW6jo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08ADC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757911793;
	bh=nOu1eJE1oSmGx5pQg7Dq0355yO+uPC8fjqgRsKJeZsc=;
	h=To:Subject:From:Date:From;
	b=cSGIW6joUG4YhMrcuw4WGhn53taFDg3PHGrNi5soLXqUiz0CL/ynBnIOY2LP4zSao
	 vj2RVtt8m54m6kBKOhPCAJTJz1PgDyuhHDSQ/l717i88jQH/2CX7k+EAE0ztE9Hdok
	 U9fFEXFY3jcgAlyPrGtodqZ8xUG9lBmHcw07IMzM9nUHKiA2nW6lc4XxrX3Z1d3FDu
	 GBy2weDkfGIU5JNzS446M4hUGTJe5qyORZGOFTa5TmYroN1F5jvEyU+iDC30tNjN7H
	 6jko94wVTkWmGjwm0pdOllmPAYR501eQl3rdZY5idUCjEzzT5J7zdD9GBAkoY3I+uT
	 O9QjQ2B3SQXzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF5DCA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791179357.7976.14961029318775727496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75934d45678f0b09e6ed553f1335fe3ec9097ff1111a2086a2a29fbd8de22419
Date: Mon, 15 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757911793
