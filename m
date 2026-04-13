Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7353EA66
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776040654; cv=none; b=j0W55u9POQ7ZmgQoJza+1XOyLpvh7sGV24UaEXipJyR4exngzTw1qz/0oT6CW8pa1eaMH/F9DmbSV5IvHT8o4laNC13SgsO4ty5+5Rdm6ApJofqzDcQjvkoeyO9wLhw/hSuJ2IT4WLP5lsYRpuuBNekgjfJFtwWapo2BrEFYd/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776040654; c=relaxed/simple;
	bh=7mltsiCErXKTEpDfliLEssY6yTjxwbvJLIiwf3UzIew=;
	h=To:Subject:From:Message-Id:Date; b=lxTL+m7BzLb6xoxC0yEnVvJDjSPxX5ZZkckN2Ad2PSq0YlFmG5Bg6mcTQphsorCEAHxHKqKQuyO89FghUX4xIewXvM18fxruyQsN3IRAAXqQwy5WJz9G3LWJnyKpF+l/O2JJFtLwTHmG4oSqKmlSAP5WTLjQ2jeSb3612H+DzY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcaS8o3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcaS8o3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA752C19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776040653;
	bh=7mltsiCErXKTEpDfliLEssY6yTjxwbvJLIiwf3UzIew=;
	h=To:Subject:From:Date:From;
	b=EcaS8o3OOVYac5Jo9JaqojqCEbpvgW4laTAWB212S/OHXTeoA+Bw++uPGq0QW5xff
	 TCUsO9VGEJO6evJj3bl5XVGkQWBN7cDfbm0vn7cAINKAGtdV/BsEsxasb1TWw8Bz5d
	 bEuqHLPCrRUMeRdGggMlEcDfv6ocWBX+Hh9BqosA3ToXLxLJJwLbaGty0ilGMOt9ie
	 a5YhH9lLCYUUVbuzVti6ZsD71poMB7lX3uhebwfNliDTS+FGTzc07o0luaLxGgZ1TV
	 VKQoksQBG2vnLEzIz7e4rT0C3nS41Ne6TO6JvfyASNw0C4c/TCKpEmPxRkqii2/ZZZ
	 4BuB6GioJvCeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BBFE93804
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604065368.7906.5247479678093919052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d739b9b9dd0737313eb0084562109bded5cb947d6d45cca2264c390a33c924
Date: Mon, 13 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776040653
