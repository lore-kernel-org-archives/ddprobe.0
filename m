Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4345C18AE3
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783205314; cv=none; b=LIfoLHUx5GOc+9cT7VusacmVjmRuwkh6/La3ndD35buXRFhpk660huF3PSwN3mdphzDpK/9gTmDZL5KZDKVWDVIsVkz6YX8xXTXAML/h5pnXKM1PgxT7hTwzvyxXPqrlvRLQJRVWcrAuZZMfw1pGH9JnTFVzvh/H+d3/xVJaRyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783205314; c=relaxed/simple;
	bh=+V8dxWBBN8+UwxkeDXCG6uPOx3SY+OuKMTrjW2juI8Y=;
	h=To:Subject:From:Message-Id:Date; b=QhCIW3q56qgtrAKiOr6a/AW3P5qfhUEZ2GRrC9/fvkJpL5G7FT/Xxeg5T3rJRSa/5hPoLQB2ZUbTNOiVpny55DaEUtJXKQuv3ClpBA8wgvv0AC8nI4j7+hTpm8CXUKJaWRMa3C83TBRXt5tT8EELPfyCWD4W61xLEtqonmsVKIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlxOz6Lm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlxOz6Lm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6522C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783205313;
	bh=+V8dxWBBN8+UwxkeDXCG6uPOx3SY+OuKMTrjW2juI8Y=;
	h=To:Subject:From:Date:From;
	b=OlxOz6LmXh/R6lqhcbSytHGii4KtkSfSB1JfuR9SfVPWpvInMH9IC6CWpXbYi/+QU
	 W7OdAmT8SFbXJDNH3gxgaQPRL7JhTY8cD99vbyCt23ITf7OeQSFSmKdU/MxjbK594k
	 jh/lO/4dXEAJ/bpCOFwkZU5BLbjdMcFyK27nerzqxHyhEJOslG+U9baQPwF9U1fEsu
	 kgvE+G568PPNjKa33KwMg8Dq+avqJnW3YY4gZPea8754+t+dkgx997nNklNwlaqn0z
	 NbhtsrlFoRRSa3g6S6W7jkTS2IixgFxG4Hc9DXWgMn74vOVMAlfuhI6H08a6Dak8ph
	 OTaeZH7bv7o5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFCFC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320531368.29552.15563675041098300411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9ee9e27de88eb970793221c9bcfc0d3f37aef334999186c6d2e60893d4d318
Date: Sat, 04 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783205313
