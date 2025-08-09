Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C3E1CBEB9
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754774994; cv=none; b=dq05rbrf4GFHWowiL7nYUT7+2G8MfoDl5pJV+A7OO/hw26co6BDzAvdJcnhcdvt3DHQau3IGSUxAVC/oS965K6t5jWE9bgtBeutw/HdFWWs5gMhSe+8pICV4ZOdoMNAxcwG9iTqLJ8WXuN6q71Kyar2yohOmcrFUc+C+LvisWIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754774994; c=relaxed/simple;
	bh=eDcZON6sDKE7tXMJCTlJgSNOKe42G1f5XwgRnYGLLIU=;
	h=To:Subject:From:Message-Id:Date; b=e7LptdB4sF8GTynKS/rubEK/1yCte4c2blY7YMrnlxODBM8fNGc4dBz0l3hLLUGETWu1YP3G+3e7Jli/q6nQ/d1Z8QFEITTGKiXjdjV/PEg8dPx0b7mLZbW4yjjevulUTo0T3xPbJ7QgSfJ1Go1E7P3QQwgp3BES/9G5U68gpxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFPUFlYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFPUFlYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23B5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754774993;
	bh=eDcZON6sDKE7tXMJCTlJgSNOKe42G1f5XwgRnYGLLIU=;
	h=To:Subject:From:Date:From;
	b=dFPUFlYnq6e6yIeYc43DUCt0QfP7XAFs7rZG/2brjpQsdXUNgri655hGi1+V5NOBg
	 p1f+aZuXF5mk6ZiFs/vKWaNsUQnkkVT4tMaxURzHfygF5PwD6tCI3q+oYpvTqVgRuE
	 LWn2yKFAns15FpSrLERWC+Nouziqd8otKCbYxBmQZjoB4E84h01MgiPZGRE6aMKGly
	 U6DL3OpBRBAWoFtZbAQSIf60lR7mMrhpWen5L6L/JzJTNW3h3hbKqJhefbEZk6VlSx
	 b1CgTdXNCnw9YqlJdKOq3mCGwaSdTDtVHOXSf3pec1UeCqa0jsQ2dcglGVSHdD+Mml
	 YJ/SDiiUgJoyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F705C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477499357.31050.6112292728919693314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3e3ee2c6d624c677b9559cae7e883348b183db2d76472e60c0b6f4cb2d9821
Date: Sat, 09 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754774993
