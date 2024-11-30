Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5BE12B93
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732961754; cv=none; b=Yl38HZYtFhxokgIh9+6ikqDWwghLy6B8PfYiQhaF4VzOR6oInN4lktrqx35za33O9SXmsjtvxKJZTDoDxlepNjXlMnc8yDar3IwHl/5CtwZ1tzHJlnd7n6QtCkEzKGbyoA7d5I7EOgioKi8bpOzFBLo7KpZa7itlCrMMM02qxX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732961754; c=relaxed/simple;
	bh=vYig5xKMaG9H6/skJ895cIGBMIs2v80CDgpHUidufwo=;
	h=To:Subject:From:Message-Id:Date; b=ACMcqjrJsr6U1ur8PPY/Es7tcM9oWVmkZqfi29BCcAFsot+kfiT1mc41IIW8B682nMuOWs2d+KXs6PtATmLFCKvYHPEx2+Q4fPnXkhUmBl6g9eedO0ExGNxF5wFLucspGIV969HEYkYuhsfmvBXlfobLTmsU8Qi3TOYLS5DdUFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXD+gpvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXD+gpvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93D4C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732961753;
	bh=vYig5xKMaG9H6/skJ895cIGBMIs2v80CDgpHUidufwo=;
	h=To:Subject:From:Date:From;
	b=JXD+gpvzPuVfSlNPdgPR8zdL1epzJM8pNJWkfBQO8gCadgwAGuUKWSwyDEfJZOoY6
	 eRK/Tf/jgx92PAZSWnA1EV9GcuZ1zkNAzQgNdRE2YB+lSZQOy+EPUQ60CD+NWjTpUJ
	 UFwhI7FgYUDuSZ9Xeg9SH3rUg1aH1deFmd36WS3LHDQK0s2Qh19PtMNiWSK5O24qCK
	 zG6+N1ynAEd0eeC+3CdrJ3d5q8uNmEfORwh6VzXtUeVqV1fx0fpFRXqnEE22EoPpaX
	 ZxTCSWcKUukxx/ewPLCFYz4qLv4h494CnGeXcA1aXI05QxvGJI5FP9nrd7LtZlPusl
	 tPjezesTwGAEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CDCD735FC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296175359.22126.15925726775167254794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1372921a03bd3eacc197f8635223bc04cc52b8288752209803e7412303f68c
Date: Sat, 30 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732961753
