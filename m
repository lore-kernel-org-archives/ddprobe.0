Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54562212FAD
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781952394; cv=none; b=jdSgvi9BfhSe/uqZ29PLQ9l5SsuIueCNRpANUcKQ5kMqPGyqvhJSyiEWhsA/2Ya1n+A8JWh4F5cu4JTEjbXvEw0T89mnbr5vjYaAjHX+IKGAhanuiJ6moCIlopwnDF/55yz1ICWayZaanyq/t/wxp32N0AST1j3wUsZLz8q0xBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781952394; c=relaxed/simple;
	bh=tterOKfAhkvC8pOq31RG9i4a5P4ta9nFB9sHAxMxpZg=;
	h=To:Subject:From:Message-Id:Date; b=fNHArvwayWPrazbJOzRIZAYiRJMW5QfuFnJGXDQMGOJhhkBizDomhuWdKgM+xAQqrdIkr9uUvb8zdIE0Lg7N2JOwdJXedRH/TM3sXtNPWZ+I6you7C6A6FJ68BGRFwMFi+DLczcCAWUYcYZBREdIV9SsGkYnG9lZeiff3HzStRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVZBkgan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVZBkgan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE865C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781952393;
	bh=tterOKfAhkvC8pOq31RG9i4a5P4ta9nFB9sHAxMxpZg=;
	h=To:Subject:From:Date:From;
	b=PVZBkganXcJCOSGTlJqazweGxO8FAv0dOKmMqKImO2r1WzEl/HjiB+Qkno3JllCBw
	 dx7/GUI8ul1pODzYTW1qig5w+Nafe0KMvLwwHphmQDzfUc9OxkclGZGVB6mhmfGCo1
	 lnBDn0D8I8UEsFtqzK5pmhNe6U1yjkZrNUSRMiphSeoMvz9WKkfTWr/dthxUqn0PXt
	 3Fj5lIZ0Jv38USg+djIICW24btR7PmsXxYWL3BwR0SVQgs0y5CVmVRumwv96AE9YtL
	 7czy03djlHHXIJ+ZSGA28XG8jUNKgW4/BY4UekgqWmyLtGRNPeGwmv+BhqtQY2GuZu
	 DUONiCqvtFF7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99F9CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195239374.19484.17808842232912146051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f04acade5c998e4abd90c4bdb1c46d7459099a28fa96668e5972bab5adc3fce
Date: Sat, 20 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781952393
