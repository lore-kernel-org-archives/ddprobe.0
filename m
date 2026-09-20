Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4237E3C81B5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789873234; cv=none; b=sgDBHU91llsJEN7WxgcB2SyNh/7YC05NoaFPoydyyrAOMwj3HC2HmvtaHalaSKWN/RaMFdD2jmDbDII7EFy0k1jR2Qp9kb8h2k/vjTIWSReG3GEmmQ3xp/WayBD/wkn8c1ZwYkayg5U81H0DoQYNfzGtiBDyBIPXIY3nGq70hVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789873234; c=relaxed/simple;
	bh=FQYsfXiAPECyK1UKqLqDKVsK6aHOOOkunamz3eDzjz4=;
	h=To:Subject:From:Message-Id:Date; b=GrIUyBn/RisvUwR6QDzbtjHthLSttMWqhlh8HrcT1Y+zYXpXC+mgYgOC6ufeonq9lL0w+MwnQFKVTlRG2fjSOLrE+kxwQzAn6Ini7vM6IBFdDa9cS93R0NQZkkxafeVVvnr0g5Be5EqdDhDTj80uJPSCYJ9jhGyS+JauXtvUkKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5/GGWuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5/GGWuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2429C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789873233;
	bh=FQYsfXiAPECyK1UKqLqDKVsK6aHOOOkunamz3eDzjz4=;
	h=To:Subject:From:Date:From;
	b=o5/GGWuEgpVwCsxv9W5tYl/MJ4m+6mo2+cLmYPLQAM4GkjLAndS+LF/xr//jEYkft
	 ujw/3K4S0LoM2hUZlYf46blkZw6F1oFrVOkgQw+MXFws5xXVQTOREXW7yhyPUxcnBT
	 RewHYcphsX4wdt0iUKxuVeWuudEnDI6SvKtFziQKV38JFuF9V9u4vX80ubq0NQHxCc
	 pfbWQ2b0+l0rVOfp83hROyoUbtHMABzoDWkK41PT9DT+gjRcl4AqF7Hyh2iHBp4knu
	 2e0Nl12QDjmCo0Y2R5Pdv0YYE5UjTri8vJRVuwEfXfO6gy++/e4sYTc/Gky/FcoaGF
	 8isrsAdSdpaCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D30C982DF
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987323369.1959.12696946356405132610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9183a90000915b3991e24db28f4af23d08eeeb913d0b59eca76a3a182a154e59
Date: Sun, 20 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789873233
