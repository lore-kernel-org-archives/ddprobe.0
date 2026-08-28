Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2293612EE
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787934634; cv=none; b=fctpv3yYC5DgH0J9oGUyaxsefEUylt6A/SjeDc6+Mp3bxujc8QKaCi8ej95hKNbtOG5Jyxquj8GXgDgVdE2gsthQ3JGOY8s39wQZZ51B3PSf5/4RWVtqOkmLz3rIVYy29qYyACCKtgoIKH3dsgJLIA/t424tyJrmqtpf0S5qD9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787934634; c=relaxed/simple;
	bh=b06cG0dwoYspyu9CYYkcQelZNYXSI4iNKKBg2XFrMrI=;
	h=To:Subject:From:Message-Id:Date; b=GAD1pclitJXCaSnGbgRrEt8U8UzRA+yhdgqLKQlEhmU+H6VfsntkvcbMc45VqWdsqKta1ihD2cxAVnVIcroGlhys0QGk0JSX+LdHiSzFpknFoYhJhdGHvh5KzFnUykFdnZUg0k/2E1L2IBM5Leth+L3w2TAWePygBzT6UDRC17M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l49k/7Zk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l49k/7Zk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2BDC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787934633;
	bh=b06cG0dwoYspyu9CYYkcQelZNYXSI4iNKKBg2XFrMrI=;
	h=To:Subject:From:Date:From;
	b=l49k/7ZknRI1WuzdSc+KHLwiOjtCZhyi9/UMYRjCXXs9/lx79hJ/PANGvYiMjh2Mm
	 /qgx+rePwXjdI294ndWGDaGvBuTkqHaXuouZtcv8M0o40T6UD2cMv1cnDLLSWnar3l
	 ghVt4OlML6BTEw7IiUd7r9LRiWm49fDsQrEEws4n17iG0GaKTW+VRFfPlmxnceVbl5
	 5TX+/7yyyErPpsDxzv4NnqOOEtHFiW8fGsTbwDTW8+7kIB7agJQxX1JTDf0trKCqkw
	 bNS5n/b0/X5Q7N/zASiKgQK8Y9U5cY3zSOXj82s3fGQuRspO8lKOnNimze1WcQG6gV
	 erYnyV0wSFPhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF166C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793463370.6850.16313700004952072962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b54a7cc52089695331fa66f25d6a5fa5ae02ca2da359b2da5262d3a0415b35
Date: Fri, 28 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787934633
