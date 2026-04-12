Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE9029D294
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775994454; cv=none; b=K911Wt6WcZov0BZc9HZg3FfYLMmFmYDkfahqKTVo+DLPshvGUUvIJCLQI7b/UWgS+uxiHkEbbXLi5haA1OMloyfgyPMPEq7g5vSV7ApAgNjpDsSKXMkq0I0jI8CfrAA0PaaJFgt+xY2MOxmJ9HdF37mBqpKcXCE/LfrseIgoO2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775994454; c=relaxed/simple;
	bh=dghhfEbLoeXJIRyhwMVSWWFL4SBcGJIq2CE808zf0XE=;
	h=To:Subject:From:Message-Id:Date; b=BG20ORH7uDjI4GbbcATxYdKhlQSqMSD22yAmY7TXIhfybSsEUctjuyqvOu6GTXOT9A7SCEQ0+t6lmcYH0knC5RzKpjYA0FnBH3aog6qWw6m0jwIsj+lkiwtz5JzbG3nT58D1Znwco9frJ9IVgOelwIZDxkVR3VS7xYbKr1FjfQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IK/czXZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IK/czXZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B790AC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775994453;
	bh=dghhfEbLoeXJIRyhwMVSWWFL4SBcGJIq2CE808zf0XE=;
	h=To:Subject:From:Date:From;
	b=IK/czXZItaRafs3arIiqMiAMuqGfKdekrt0rSWvR3V4i+2Q9mMx+YWrgoMwjDUSK0
	 kUq6zQ2ThU2Y8eSBlb2GziNpyCxT+qJ513223/ZzKZxAxHlgAvpn6ZROKCy3m+0hWE
	 k87iI4aj6h4EOs7zAAviYUhZyNOeKzOJd5Yw3kxXNWTsWZbdQmctOLCShlXvDhkOrN
	 csmvR6Zcr0oPRSlcBdiKjvEMEYDUmdeSVZs+JTZFGSfh3ivei+M+OBQ67M3AoLPg4v
	 ugOGH3JCYKK3JBF+IHTwm34fBBjE00+uOmkXzeWLNHHtto4SCfjXjTg/4VXUDyh8zt
	 OWAWyZyh8eM9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B59E937E3
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599445368.23329.1751721058473749344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51148dc1125a8a7a963f3124fd13a60709af4343e9890ac09de6f6aced8acd0a
Date: Sun, 12 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775994453
