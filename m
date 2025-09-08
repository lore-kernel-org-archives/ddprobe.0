Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082DE3054DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757335794; cv=none; b=uLrNgFEIbCd3d9DFef7r+qOQPX3a+Uya3MJ5AvaYJfmzYlZoH9765q67a3VbpZBjId1gMIruRrtWo54V4yU4peWUAYIEPmra/vcnkZM3BVvJiD8aRHV+uOdm1KvGcwT3al/szQXyUllq47vxB27vLwkthYN2lGFMwit0M2mD1W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757335794; c=relaxed/simple;
	bh=l6jpACy9l115MchoN90rCfjwYcnLl3xMCxeSxt3Ca+k=;
	h=To:Subject:From:Message-Id:Date; b=CV3iKUBVvUgE7fNAEYBI8n5BQPLyWOSwvbdPTgvl2wyXvWsGGT733sQqAGveKfJgtN7ZQEtDNjIPMCy12kQTwUA75Ez5qOEjL9mhcwdxLPOqUo6ewo6bAit/WMauOGrQROLOhPsGDdFRIcFV+DG+lT5gpojIV6USfP7ikzdBOqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJleLQ2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJleLQ2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7C8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757335793;
	bh=l6jpACy9l115MchoN90rCfjwYcnLl3xMCxeSxt3Ca+k=;
	h=To:Subject:From:Date:From;
	b=jJleLQ2pjMT3VEfJSsw/7J65qmTZBWsPrnQU4MSazlKfTvLPhOZqjnMLWR8ZWlHjS
	 db+OSyeRSIku7Yrgn5/VmkF+O9SYTpo/eCUvRYLOfIXNb/CzIYMUvkkdTzYFOjcRiS
	 QE+Vy7fehLvpswH4IU4MyezHOHqnlKWRuWFxkHzrBeLLcGur1IXNV11mlvEV9nePAe
	 9Z10qtHV36zb4NI55LlB+RTUkEmt6wxEzFwsk9wLXXsepJvQvNFEWAM+Ky2nQlGhj9
	 UVakYQvgyQv5IujfIuPBxKLI1LGP5c4qVY1PXrGMFpOV3Z6KMXPQBLeY6fRG6+8FO8
	 8VeIkUSgD+Ebw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E200CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733579357.17473.7216472979952367388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14c4ea17d394bcbcd379f48328e64bf668d1bb8259cdbc318353c0bcd5cec2d
Date: Mon, 08 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757335793
