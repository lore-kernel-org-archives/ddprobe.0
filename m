Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6617A2472AE
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789273234; cv=none; b=Qh1gIjl7ppNMJzM6EdMNmkguEZ+lLcZm1EoFbY+iias0fgYe7a3aPoUehJduSF94qNOFlmmBWPJS6Q1taueexxTtOpfhtdakcOkpjp6YmUzl4zFlt0PlUWYFkGrm+gcUi600OZbN22hH7nCw3KcHsz0D6cfaVpeGsuMVGYlRW5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789273234; c=relaxed/simple;
	bh=fiFaBxHJ6igoRRmXnSff1GVO1x+4eJrjUzk3MD9w4m8=;
	h=To:Subject:From:Message-Id:Date; b=n5PwTiSUp+YWVVWZ71KwSnCpXXn7IvVQsQE0NFzCcFujvfd4ZC26N0G7I8JyFqinCp6aXWTefDCgzUyynAPL+60Ej1hzDSFCqSe+Qb6AUTBsUpQh+VQSDyYq0JoEubxrFGc9poObpTwg9/YDkIWiKywEoXubqwlAdaIRd9Z4Trw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCSRLekA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCSRLekA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 019F7C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789273234;
	bh=fiFaBxHJ6igoRRmXnSff1GVO1x+4eJrjUzk3MD9w4m8=;
	h=To:Subject:From:Date:From;
	b=vCSRLekAI1MeeIfBifSDB4ntMLGz5gIEC5nlAJVrjtatltTnIAayCuA/m/FdioBHZ
	 YWC0I50ej4FA6Lw6MzoKZ6G6GE+ArcuSZr+lTdkVBgXBcKCKYCrQ4cuPhn/Fz5SEaP
	 ZshyHWBdgLyQseRkQfKh+K7ENSdfO43z62kwYLrwurkndIyLu/Ap7fKoskRBN3okvs
	 vKIDMwZojSK3TyC6Sr6dr14IOE6qswPex0A9AWbHL84UvE1GJh9C1WOV0hHUTuta7M
	 quAssWPWBuRRvZztBEaX/ylq0l5fhTP6c6Saw13VSaEHYOZ5wp99WbEHnq0kH7e2VG
	 tzr9wsvJgASwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF6BC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927323379.20197.18033930995647588476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7dc15f86084687c2964e19654d5564f21b0f194a2f05b6c19c23975604ffd3e
Date: Sun, 13 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789273233
