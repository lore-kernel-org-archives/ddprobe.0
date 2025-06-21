Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEFC30E842
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750550394; cv=none; b=ow9dk4L5ITaC94qqH2X5EHf8C7oD5LiDQ7hDK0DWi7nIjriC3YCX5GJRIrDa9w6Nfd0qKxObzBL73TDMSWfdYQ+eg1z3cpykTQBxg4qzusZZeIDq0wLqVkDg3pb5nZvPErAPJlSSelFyt6wJy7LoosTCexJt8e2Yiy6FRt3lSVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750550394; c=relaxed/simple;
	bh=GLXWaQozlmmWL+37zJ11eC7jD9F9+sqXB07YUfuiw/Q=;
	h=To:Subject:From:Message-Id:Date; b=d0aFr3x+ZTQtSMr8GrBQvVj642JP2cWI9rve1oZgcLiy+NQ7bXdmaO9gIB+LoV6DM9rrLQeIkQ/9MGkH3TJUvK1fEOpFiGyhwtKQAPgE/OvnXOoYqEhqjXESFRJhe7MNePzkrhzThqmEhVSDi3RRB6XyjuPfk/VKmNgtIaS9anw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFVsNY7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFVsNY7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01DCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750550393;
	bh=GLXWaQozlmmWL+37zJ11eC7jD9F9+sqXB07YUfuiw/Q=;
	h=To:Subject:From:Date:From;
	b=eFVsNY7LJ1ZnO0zAJaIdxjHPTwZfG8J1eFu4qjc6UVhySvuRqE6GxXinbuHL18L52
	 2UuDBs65DwJpUR6D7ifvcGFlB5B8RtXgEMO42hiUiPKJpsDg21mD2CymHFjjT0uy4W
	 OCiYFXCth6YvOlzGzPEQmJku40ZyaXrwmQryEvDyyhX0EuJ1cdeBIyS2C1ZbTMga9L
	 l7NRebrpPiqROmaP/JfWy4mOP3NIm3T4OhDx1U88rAY1JKNT4vOYR4rbPvM0AKNB5q
	 tWi8qHWAIMd8TDOmgaHu2GftcqUdASvt2EI+D0ciugwVr5bPoSINXBzD8si+Vq9v1o
	 /w6Af06L8nIXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB0BC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055039357.9590.9302819143191441493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb9354273f52e29035984d9bfed3b7d6e0acef26137b4baeaa54eb1ced44ce59
Date: Sat, 21 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750550393
