Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD23E44B663
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788345034; cv=none; b=QSrhSAKpubxJPSqeU8HxkkdZAj1WYwrcJSsARM9XLD6iyo5T3frgKQKesMkjF5/srXTzGhqUwtbXHCuz3xxG8UHFmSTtPclWZkwqQalnhEHarFyYNpzwKggBRAcT2ZcJuPzoo4gWIF6ombizCOA25FHK5xNiI+CifSuEFr4HKcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788345034; c=relaxed/simple;
	bh=fc48W/NjPztcig+KqZ4KiPtXYqQPjLkqVn4z3LKhDA8=;
	h=To:Subject:From:Message-Id:Date; b=ZJo/S+LJwN+QOfHe27dQ2dOgN+kutpYOFbOG9UgMppewdFtJkxQGBje1es2s0wp71cUqoM+Gbvh7+80KtLi/kkfgsfrPRy/ZLRY3Luw8iDF3mYkL/Gv1JSzBxNldfqLmkG8yFO6xOyroNME6WXlvzsbgpQCAK3Go8nUK8QEpV58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vj3aqEPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vj3aqEPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CEEC2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788345033;
	bh=fc48W/NjPztcig+KqZ4KiPtXYqQPjLkqVn4z3LKhDA8=;
	h=To:Subject:From:Date:From;
	b=Vj3aqEPVh9ZNNj/R3UvnhAlVJ5eJMXzmXyua+G55xe1MS5/uJ8E7dgvPpsC9Glh6b
	 Q23FgRVaZfAThOrjTOSiTkvcyO2vgms/M+i3zs5gyZAqg7cEr46N+ymG4epM9b+nDk
	 98WkVjcixCLdwozjjaR9XZSwUtnAuoZg9l0KkaZrdUUNgGEVrgeV/YyFpZm7lfA3uV
	 DSx+wM6QYk35/LHFF3unJIkhidm8j2dbCfk14osIpIHIhPhh9imLc6ACPnDn8UjokG
	 fmnlqcKR8ZJdwc25qJHa5DNjjVW3vTwQ3UuSChqBqv9nZqYqwqetSbmOIEW8F8GfFC
	 wrKjRHa5IvSyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD1C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834503368.20221.3650164235847760764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068c153a3c8df9c0c799f2aa053b3f1bd4431a89283c22d456a9b0895f70d392
Date: Wed, 02 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788345033
