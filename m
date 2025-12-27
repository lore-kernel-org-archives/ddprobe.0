Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385E412F5A5
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766848434; cv=none; b=IaCYjpKkg7HghtdE8N+e5jNczfCj2iOoQWUOd+hp0D8ecQBBO8OsJPvNIeb3YryeodoFzfBiVsIa5wZtV18QTExBcJDh3nwiBeCrdXJq3oPcWoTBTovu4YImH5s7cnbJRRSl9WYvMF/qnoHj5w8tDahQ3uY8onkMsM5qY6KT8BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766848434; c=relaxed/simple;
	bh=XE2d6VZJ+nV23VtVoRcwQxwADEnwMYs8PbSWoWhRogg=;
	h=To:Subject:From:Message-Id:Date; b=lk8X8nUCZptMZUUkLBoukKosbV7yZuecuBRPjkwRZto8Dzepi+8lwxJeuCPZVgA/N6H0cM1/koGatoyCXt5y+U8lBNnETl2hHstifKFri7vDbvWk842ODjCavWe2OmOZg/9E5JeGMr2HKDSmD5K+mvlFGKU2ny8gHk1MVIKcpqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/74/R8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/74/R8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2123C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766848433;
	bh=XE2d6VZJ+nV23VtVoRcwQxwADEnwMYs8PbSWoWhRogg=;
	h=To:Subject:From:Date:From;
	b=j/74/R8F6wktdBFcxWCyZngRdSYb2e2uzWz4GKFUP/ngeM850dMzW4H/K51NIBBon
	 i3dHnyAbPmhmD7RrEkRWDW1dHuJOiNmx7D5DAIxte1XGg6UPPvZboyhgRQvI4kTdZY
	 nozd+3x6BZhp9NJTJkiI3XFJMxHzY4OrpG9W/OHuASag+Jnes00nTb5y9pjkjnefdv
	 f7XPge3vSy/BZLpOg3PkKae6rS6VYcHNNltjfWqHIRFuG1CX29gyzltYcqDCwcRznL
	 vlWP8mYPg/XTptWl/l95Mf8ukh9K9vZQXm4PCfwYrnQJ3W05pudxG6EVv6lq0ufS6B
	 Pz+i079/6amTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9449E92714
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684843364.2970.999950304528800394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048b6944fa18952e22c998ccd53515113348f20b17a405dbc48b3eec78938e3c
Date: Sat, 27 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766848433
