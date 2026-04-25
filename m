Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B742DB7B7
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777160854; cv=none; b=XuUfK5YepgjSDJa0+v5seCIwkBDK3CbIBpUkPko+I96BfKiR84NUuWALIV7VZw9zGeNz1R+8RRdPyDQQm9HpNll9aD6bATwOjoeA/3toe52D4P7ucR3VGHoiHQZoGbCQJQIG3r+NxxZb3vzZHuZCOz409mPft7XiCGb73gpLi6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777160854; c=relaxed/simple;
	bh=m41oGWbz/sWipHsscVUjfjvZh7MQ4/pPy4QBqaLBaQI=;
	h=To:Subject:From:Message-Id:Date; b=F7Jm8QyqYk4D80kwwu0C7nWhFrzGlErUfWyyie7Z7azmesrHpRs8LhAJAPtho+yX2KHaFgkpy1+BJHJeB2FZd6B2yBZZn7Eb/ddHK6WE3UCPrvra8aI68SK122OIM79AuapJP4QbH86BPgOU27UjmogjhJyZ0qeC9SX4qhcddCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nd8mowqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nd8mowqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E17C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777160853;
	bh=m41oGWbz/sWipHsscVUjfjvZh7MQ4/pPy4QBqaLBaQI=;
	h=To:Subject:From:Date:From;
	b=nd8mowqN/5yj70Y1ydQUq8A/Gsj+4io09tIzMymB/EZiCJt0Ta9qY3vadYaJu7iEM
	 hsc0N/gBY0yiOg8mX9s3uBKkPLaj9fq8k6EijPqBuvApgtfzRE44HpW0KYy7cEGACW
	 ou/Gio2ZU0PTvO/JYJJFuHe7m6B/SJu2gHaBS1fbRUi6S41BlfTo/xr9EtI0vZN6V2
	 gsP5aZpSrkY8w15hpYKOCoAleGx4DK6j7o7hfNZ2P83U0Xsoyp34P/X21zOcBBKekR
	 liRvM6sN5/Mp0iKoCSSrpvsrnA8I7rCCqXT+fbMzPbWu0f0FVGmpF4eR1xfW7ckTzm
	 r1Am6kagOuvbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B53FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716085368.31921.14465460971150434868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac3eef1a8b35e717f84978ea210bd9bc3625255779898fd77bcc55a3f93fd5b
Date: Sat, 25 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777160853
