Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EB935CBA8
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770983094; cv=none; b=L3QPWaRMxLsS23X5o1PHTIuI+znQU74Dm48mYAGmyIgYm1LeRagNMjYZRFmjLKlrgmbTnkGe0xG15jSDbP0Y9/BUFgPa5WIYlxSxfhYIeGy+hCtUQXBH9cueiMNVdHgiu1seJaIzfrl+5CTFxCcCwZzJTZjfyy9FyIFykVAx8OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770983094; c=relaxed/simple;
	bh=PyOAkIc6r0KBYCTtXZq7H4r2ZkhYPqlqLGZtq8rcbhQ=;
	h=To:Subject:From:Message-Id:Date; b=t+mnLlQkpu8aWHWg7mGYeMR8Ss4rb7wNifHMdsaa9iTXojyhb3136M6fQuP3f5lWYbihdj58X6k9j0pApOy4nvcpSeMz2graPfY0GganrfA7H2XAPh6BJ81aa63UolqNtSE7Sp+mP4c4LArurFXFpmyYULIUUkz7Kw7jqeVwaIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tfq/Wr1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tfq/Wr1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D0FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770983093;
	bh=PyOAkIc6r0KBYCTtXZq7H4r2ZkhYPqlqLGZtq8rcbhQ=;
	h=To:Subject:From:Date:From;
	b=Tfq/Wr1yLmxIWjkC99dDOa+Sb8DOkSgb5Wpco14lnqc6ovxqtROdFEpISs1wUfvPd
	 LIZwpoMB7iQcKicI/gjBiWEcUyc0Q/VZ0qgyhEuBbMR5zlTfV/Xd6tVVGCJsBtCXnU
	 VVJQ7pv4KOpzqst7pfO3QSAGizcueeNrN1rvwEoX4E3AZs4PVVOMAlm936BGXp3Ymk
	 I+DKUHO7Bfa0/IrUY/XSngb2jOlKUQUyngQJ/+px4pYlSWUr9Thk88gdHVJG33qvpn
	 xXYRdLXJwpx4LOuRYIfiS+y0mjT8cluoJ1tMtlQZukXsOt8sQlNz944FDACP2LDpP9
	 PD1f3JSe3M1Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B3AEDF148
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098309359.26330.8728514873704744506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7dcf3e9425f08b81ddde44c29e851c068e4a694ec0bd25e93f2ec6654878cdb
Date: Fri, 13 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770983093
