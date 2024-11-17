Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B17D64A
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731815754; cv=none; b=V18oswBRXhM3ukI4k67sd6Xfd4CL7NHgQOmCxYJuuPKHfdXk1wxNPqOWcHF8E51DiU1sc52G1VSYQehB6ouUN6stbVmUzED+CtcwJ4zW8wvfCEvPNu/b8wZBbgYhF4IzNBaDSmRYh5bXBHxHseEfkUSvLZPqhY/LsDtGvyNxJLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731815754; c=relaxed/simple;
	bh=3yvV6eA0ieqDr6q6lT8CbUP+xDyEC6aCLYTJa+DV4pk=;
	h=To:Subject:From:Message-Id:Date; b=egLC3MLEWT0YlF1LanUFAJpYeCzTaoD23TwZbKpFLjgDid41X2cuLfC9GUwRISvabDMaetY18/Vv/dkKJOlrsL5xujHPyCEpVhGsY8bON/sdlsoXwBhzuUE4CjqY362EOfQ5pfgavArL2+Gb1O9Y1ysjdR/UpPtO8lgOVx5swbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayKvQJoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayKvQJoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA96C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731815753;
	bh=3yvV6eA0ieqDr6q6lT8CbUP+xDyEC6aCLYTJa+DV4pk=;
	h=To:Subject:From:Date:From;
	b=ayKvQJojFvk45G+cCh+dLkb/nsCmRrHoyZWWZY8oOzT13BAKa6R60JiV0kd40VyKH
	 zXePJenLilfOFX7yRYcryTpdH3nXyIiGIvDL+9qwiDd2xteadLOQ3QiS9p2v3F/hIp
	 Olw7r3wdX3OSvr5jx27Ld9cmO9D6kFBFd4EZgm1EZp60nTUb+j0OiVJyrtveHvrVjx
	 YwQkU9VA38anU/LlMmzr+Leq37RM9Z7iky/cI1J/Qr6rJ8L3dz3jIKQ30HLyCOn8cd
	 lgxGYUZ0acP/O13GALQsqIfj6akw8EcARBYqxArBN7L6FYmawUIZwP65s5llIvKfSq
	 CiAtkQDkDkC5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8F9D68BDD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173181575360.30055.13747568855664110086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb1ae6512ef07de5ca8f7fc62958f83564222a45435e6b8b0ce9527bc1b03cf
Date: Sun, 17 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731815753
