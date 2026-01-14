Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD323815DB
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768385634; cv=none; b=FWi2CZwRK0b3E+ekN8sofKGoNSVAG7rkL8fc2kKm7LQQ8Q8JYkJqF5/gUyI0dzoGfiUubgrqZ2YGmMydKgp0bdINBXzKpKaH9jkSiagmjW8KQfufVmEf+S8/MVZ0CzYsW4acHSivgRuqpsN53WTRD5NCbBv5cVoy10/YiGPIMpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768385634; c=relaxed/simple;
	bh=k/Eh3tZgiBk6lkizOf/x9iACEUYLa1Fq8GpJGjA/MNg=;
	h=To:Subject:From:Message-Id:Date; b=W0UtI7ntQOOmmRsZ3AqxY5aYh3fAfM5dPOSDg32pArGPOLaZgq/QpWbD8cx5T2L7vJ8FW5319bRhPVxjf5SOIBDA9O1uERbzSHPuA57Yg1J9iUuUb66kLHHnj91yNi6T7P5gt1aqumvtA3nmJGBkVCMClnosgsvi06ixzpiANSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JakEIWQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JakEIWQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF99C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768385633;
	bh=k/Eh3tZgiBk6lkizOf/x9iACEUYLa1Fq8GpJGjA/MNg=;
	h=To:Subject:From:Date:From;
	b=JakEIWQqZqOo7m+2y/bIaB/XSoVkygF4Ly+1xVAyVgotGWo8w4cIXOPt6kQTiqZ93
	 BGxbs/vakeFq5fOwEWHGC6PxinKETf3lMcity8amnfXtMGQNOWmWkHMUzfRS3ygZdB
	 KgX/QqTMZU3rNgppPk3am1ad1qK7y0VBqzTAXczz/oARGsc0U+bsrfEOuZEuGfAEac
	 xpZz7Ip4GoKIOt2phi9AuegM7CeTndZRDrlVTq5o2+lBFe2/398Glrai5ojUJfAz42
	 T/3hdNNjfK/inr9W8R/PNWPOmQx6bfVR2lJVF/YAzLOxZfSkfqotFqS8OgG042fvLd
	 nF1h263R8vLGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F2D31A3C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838563357.7531.7601884531967342934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d634697489f2e8a99fed8fde2d97d66f7cb99d2d9ac5f8ab9c0ff9adbc39778a
Date: Wed, 14 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768385633
