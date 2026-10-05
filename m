Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BF62DE709
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791183034; cv=none; b=C4z2pWDNcgTb7GzOq3A0i/EKlWy6bfu9Nq0Ac5YEieP4YX/InOLDLRfN5r/MUnx2Uss0nmfkA9l+HVQCIVX8ElSM5m7fe0cN0Y1Ybep3ASrC5x9e7mjqE0G8jQ3SMuXr8n/9SUaDojkWuufy5x40YqG8esVFZjgchWd9E48cHrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791183034; c=relaxed/simple;
	bh=pN8/3v+b0OJIFLn/tmzyZPh3tcT5kIGLu5Zy0AnvwGY=;
	h=To:Subject:From:Message-Id:Date; b=JLSkJPyINJ0xPdMXrJeXHSeFPitGU4iOD1/dDnZNjvOOR1wWRISrznzT4rJKytuVq/tk+AsVvNxMTBm+UMH822GDZEix4qI2q3j4nGQsKV8OXt+oMrTG5NXbefXT42Paf5LkGWQhT1SJYNJXrVIl1TCUMAFqOwnR5fEZ3NoJFPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOwxuUgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOwxuUgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8758C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791183033;
	bh=pN8/3v+b0OJIFLn/tmzyZPh3tcT5kIGLu5Zy0AnvwGY=;
	h=To:Subject:From:Date:From;
	b=gOwxuUgnRJahaY8Tr54cf0gXuyg4SqgsoWQnoL+0o+RVMWEkZbGj0ogIHEXbia8Px
	 ICL+WQZHtcMWqLwUBb0ys2gKQ/jAU1CrCOD4nb07oNx73GI+3Schwxs8VoIeSkHmm6
	 H9R/UVh5bA+HMNtXu4cOglUROMAGSuZzr/KOUZXzb3B5TH2+ndgvCOnsk7z6JvYKtI
	 lnes+E8t0mLjYdxaoqVZBMgh9B8HRjcth9hXWnBiL12gILh6fUt3vjruXhGKDKpbCc
	 lSzaYF1U4GcI/Ms1vjTWYKrzEWFvy38mQn1CG4Dp7DO1hYqzm5oeO+hm9F2cR9eCS9
	 5twTphqzaZB2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB29CCA5FE2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118303369.1597.12940962417763410326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892a5b8ffda4aa058d9803a60e36a97c4040dcbbff074ee0952c15f7d59f3257
Date: Mon, 05 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791183033
