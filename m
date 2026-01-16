Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7C9309F02
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768553034; cv=none; b=nUMxbEN/yg9y5CNlV4l3C6U/Y1kwJDu1D6CaBLoFk5PJATH0N/tZsMLcH73FO/3g7cfaqCr7V8xpU5JR1Y8FK0Ls0ArhW7notbBDsqu1faE/auBroZLnGZd8goB+7Hl7p+X8fuMokPjwQiiJ+QEpgNHJZB8rv4SshPMORQ9LzWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768553034; c=relaxed/simple;
	bh=82MeZd02f9B3CW5tA5JeM6cHdNPIYKabqlsYyERHWMg=;
	h=To:Subject:From:Message-Id:Date; b=PoasU74yqxZjSpMcnkjOuQvjPzNRY5C2UCx2PhMZ5SaDk1tPqp58PFwpMySQvL17a7xQq72wVKJsuGdk2rDs6nTMPOJWW4QSoMZZ1ktQxG4mIMuni8MjS6uAGkknkyTRSXXmzfoKg7NZHC6lZesdPDDFvy5cwQIHlewohoVK+Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwkupxAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwkupxAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1931C19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768553033;
	bh=82MeZd02f9B3CW5tA5JeM6cHdNPIYKabqlsYyERHWMg=;
	h=To:Subject:From:Date:From;
	b=dwkupxAyCJ7oivYkxMBFyxfFUjbOl8I/bdjvf8SzfppP7/I/Umu1JQ1gM2NPcKbW0
	 vJuDRHhBhRzxtX2VOIE1cyrJJlfrDoQmYz8v3QR5zLfSgTMtFh/oFiAMFe7Ie5EC2k
	 0071i0nY7dk2xtlYO8xvz1UP782qVbhm+MdD/7TYCsgXAv2mJArcm+ZgtT02dtEoJj
	 enZkkB88YP5Wff2ehlmSB+DMki7aH8wmPSfGEKWHU+IRqhHiZCDr0wFEw3am37sI/1
	 6XVbUkGLVZjwb0eZaMrZNR7SbCcthH1vozx+WqGVVV1xahn6RhhHvqmpKakCKHLBc8
	 Q9VfMzITqvtpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD9D4A612
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855303359.7794.17797153468549505847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac85097c76a14d6220e2e2ed0aec18b12796997aad7bdffdc8a201096f9dc8c
Date: Fri, 16 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768553033
