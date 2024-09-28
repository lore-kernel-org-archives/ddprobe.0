Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D8F12E75
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727510754; cv=none; b=RATDntwd20NHVSv5U9FZcHrSe4c1Gl/5FQlau8w7HPNOnCC048PcAaO7/jcfVSeOLzTFjxFSMXqGK2QFzjltUchfwyoCPui47SvtpE0oyn7aDG7uvFaP2PxQqi2FarjdQQiOGkRZIqeN1Kpe3DYm2UxkOgEAwGdP8iQna8e5Frw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727510754; c=relaxed/simple;
	bh=b6qRAyr8dirXWsKkyK/RKEdFq7abjqifQaK7ytxuCHs=;
	h=To:Subject:From:Message-Id:Date; b=dcMilI9owbE2SBN+74K2QA5My2CgD3Jf6TIvpRCLF23oMZFw3M0pGP7FTqbi615/pItgqlriNrNY34y3/DgN2uT5RwLIuSxQbg3VqMd8Cs6CVTzTYAXt/4nA9meiqLS1m4HSFkQEASX3U+F5Iu4qap/cJDFEs9cE3FB57cPZiRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNGdUlWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNGdUlWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3314C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727510753;
	bh=b6qRAyr8dirXWsKkyK/RKEdFq7abjqifQaK7ytxuCHs=;
	h=To:Subject:From:Date:From;
	b=RNGdUlWX/GxQl2v8Iq76mmJEheBgne+qYlLW2K7afnVc3ih9N7YURUcLfI1aFWi6D
	 Tp6r9mPNnvtXWNGdV958DHRowNSLBKQW1Mft4V++g914Kyd7JHeRdrycAe1f6PMaDY
	 JUjZ0oJ+to3NheFVz4xkc2tAhaw99yOmsiN8WyzfKz2V/it6f8Lu+Jhi3IytNdR3Im
	 NkQ26InkgPeljaoIiZEKBftuDgScqqiiI75vTA8TlFuYsN6Un+kKjys5GnXDXhcZ+5
	 v+/pxtyx4JK5OcSkDpkYHwRjzMvtx7kybJU0E5r6w90gTFgtywBP7RF/F+ftkEAoU9
	 ABdX2S+Ml+Ydw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F73CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751075363.15429.15316040066516242002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9f29ec6b1d45b0d1b62887fc9b06b04689203f2374aef991a43d24a219767f
Date: Sat, 28 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727510753
