Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267E2430B8F
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772313294; cv=none; b=CMUvJzhIb+/D6ht04YYgo/+IRRVR7C42oUqctBwm2z2uh1JXhwm+TxQO9tL/sXWpBvsGpEG9RbK9p6AWHaOifTxdnrLEOtk7pQsolucdMiSJfYu0CbnUezJkj9Y3inwpjAC5HsjwwlFHkDoDEB0wS0zUAuPVo0pc7CLbJhj+uEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772313294; c=relaxed/simple;
	bh=CgpiakkTQ8aBZnb2pAkjONs51aUjJFFDLhuELhPqvMs=;
	h=To:Subject:From:Message-Id:Date; b=eV5YSWZ4ARA26xgRrIbkszKsYNwA3V3g07p22k1s1eINkqQ4P1+AqfhVALSwi4iD9OGwjmFXvl9Bo2sYAqdpl/Vser0YjJx3jlM2eyFzZ4e8j/6dbJJkny5UBzOaJ6uxgDFzsKxbGOXBaePVzQsOLqW2/fpIANHe2m/E1KdqA+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwvfO2zg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwvfO2zg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4010C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772313293;
	bh=CgpiakkTQ8aBZnb2pAkjONs51aUjJFFDLhuELhPqvMs=;
	h=To:Subject:From:Date:From;
	b=UwvfO2zgDdIDSlEnJmjvfZ1jBmGLgTolUfW2h9V2vy0F2QbmbvS+w6fiUgPrqv7cZ
	 ZjXODsIGONJ++J5j0KiDA2h8zL/j6ffl0b6xfaZwlveIapQ44iWH+7F8JKsI96nfec
	 OABceIFwzqjHI+BV/dkxYJXXjHC/l8ZNJSk36GZPDC78CUH4EXUVRPrFvRmnpw54sH
	 Tcu+aDW3f4d9GacGuTHeypG7QErfWOF0tKGZwPve9v+sNVAxQLcAKcJLyrqt0dhFFK
	 l4WjCVXhQwzTzNXoXCsXbfzXLCwt1a/IIPpTXzRn8V1a0tZta6km05a0O7GgDR6Cwa
	 2rC4Q1fnqpeGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E288FEE4FE
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231329360.24413.9313309446244701617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66366c5a8ab7a8e99e8c92f1f0e62121b55bf8f6257b8205070bc4dcd8210a5
Date: Sat, 28 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772313293
