Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E771B6CF4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737449154; cv=none; b=mK0gDt18PVY1GZ2Xi7ubkl046CsgLALco5Vk8UrZPOD6TwtmM47jP0TZ+MOAJmnYYTKAdmWstvcPWsgvJHPCGJMe29nIfWistl7XVPUQw1PCoKv7RdO9XTkRFtOxQVDhftNSkUQN8YxWYs9Ej/oY6Scq/Ru3YSPGYo40U6ZYhbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737449154; c=relaxed/simple;
	bh=0FsKhjBW0hLDzWDXy3IEmZTfkuLrGvx76ZZIzdt+zF0=;
	h=To:Subject:From:Message-Id:Date; b=SlfJmFUj8GABg/8k4dh7gdUX6tthF3+GrImo6GiFR1OY3csPICdO1I8sCu0vdrBBrlrU/opaze8YVVyQ+k2nIKsKWNXqs5Ia3Qk2Is4kH7zwetrMrqrMbAX8OyLW4HvodKy6DZMq3aKu+qyVXiDG+YzQAqpONzdBYEEWctlJvHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shNpAZI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shNpAZI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B99C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737449153;
	bh=0FsKhjBW0hLDzWDXy3IEmZTfkuLrGvx76ZZIzdt+zF0=;
	h=To:Subject:From:Date:From;
	b=shNpAZI0H5cL/RSFqMQZ7nC3ALap1Oj0QfjFNax0TDO25f1XusdGivvZabbZCtO/b
	 823+RsnuCVhmgpQ4mk79igm6w+KThn04tCW0CXRcEe3MZ4BrY45M/NUK9khhDqVQUo
	 IRiwl8ulHGMAiBejpOaM7Ttn1i3gD5wSsNiScdsDq6VQsfmSxWHJ1QT29yqWt1qD72
	 tSzGGGDWuRkTFeOO89ZSCzK8wd1oIWkzz2PC8uwL3OetmEdOvvLYa9oAIa/x1x/JGB
	 QS+mAxaki3WMwOM42RFVQN/1WAMJJuTG8WKxfonZu86Sxpx43fUH34kmibGHNvNgCJ
	 0tt01AqabWzOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A64C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173744915359.8186.15744798371456981230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1212c6ff26c68557e9e9fa323860c58343e6227bbacea0dd511663bff4c6a1ca
Date: Tue, 21 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737449153
