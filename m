Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B236276059
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759454994; cv=none; b=SegvEeC+VLwAVTnEXs5Y5fW3wBaNmsBI7xZdwebf8ALJYVdgjhPvqZfaHqEkElF1px3YdDL/5iCppc8CSi7tsEvzXVp8ZNnHqyQtSJQZs7nNcrwcWFOIuDzgeIZpDPxAAPqq7+yGWuP3gqyUeaw025TMXcZTTEkdVulhBPW/hWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759454994; c=relaxed/simple;
	bh=jPmNJQKLupdLWJfqBwgoizSuyqX2m7zsyFrtOKSEkKk=;
	h=To:Subject:From:Message-Id:Date; b=VwqIuYhJi51igLwuVsW+c9oN4XoMaO8LKmxHPjj+pYU3ZKgIt3x5cXOG/0hkfS4mfZZa4Flw/eU5AATvcMKFUcu4pIPTAlf3u6GYsAak1ELQUkcgUaZAE2Ht5xoxeLFWkt1EzIpri4+/EnlUWOg2L8+AeiahtsMF4qdPfWbXdKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeok4d3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeok4d3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F9C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759454993;
	bh=jPmNJQKLupdLWJfqBwgoizSuyqX2m7zsyFrtOKSEkKk=;
	h=To:Subject:From:Date:From;
	b=aeok4d3/GLFgBaCWUWaAxNQmH79NvnG6YBHlq5Yo8qqfnTgjfquRGzhfNkyvevt4m
	 bsEOcWy5NGshv3YD5zrGHVY9TmVesoOszNqBD1xp4e2LyV5HaqxIhmEihJduRtd2jC
	 zeASZPAEcIGx0n59jKXvxImYHAJQw34wLFHBWB7Qoz2hVgYHz8q/enbEptNmhIrlfC
	 KfC3Pf2ou8crDkG5QUf6J6rXU7JKshXT6m2BXxzelaSewMPnLSOC66E1quRNOlpNdg
	 dxxqkxV4i9Ct2otHosD1XZfI1N42B277K6jhZzKSZN78AET7enko+01LJ2BepoC1OB
	 gotyEnDS4Hrrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9389FCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945499359.8158.6116919313584214078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045ae94a8a490e919a5cb0816dc5f54929f577a8c19e77bd927e59b5340dbf9e
Date: Fri, 03 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759454993
