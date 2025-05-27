Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8E82DCC0C
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748355594; cv=none; b=Mktsg7RJV9VaqqzhCtEw33fnJp3UiUs4fOb/BIukuMdZg3FF2PVs0mY79AasaJyui6g6VEvzwshXw5pvSM49QFWe4bGkKPrvt9oitiZLXlZQPKj+HOt5E9aLF5VIwuP0UBZjV94cn0zQkv9OEko+2XoBYohS7q/rp6qYNSGKi8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748355594; c=relaxed/simple;
	bh=5LF4BnAbc+y/INWQBMYlas3wifcnyTJAI8uSke/AA2E=;
	h=To:Subject:From:Message-Id:Date; b=UwGP3XdZG6fyTOS3aIsK1oEMsTzBzymdtUXgdy5Gt/luMvJCsT4HsOtzAFXn0qIMFFHDVhpY0ts+YXqPVMGjG6o589El2p5ItRol8oMKtOfKOOQCDzInsA4Zj4UODx6M6H/TX5plNmKyMHPexTSVbkl2kqMMkCTo2JIX5g+SCHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/BuLfr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/BuLfr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFC3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748355593;
	bh=5LF4BnAbc+y/INWQBMYlas3wifcnyTJAI8uSke/AA2E=;
	h=To:Subject:From:Date:From;
	b=C/BuLfr5NSkUjaCqJ6POh1MVRkw7mScyVymwR8+SdyreM7z797J2c+1TvnRIF4Hzu
	 nRVlbb8RRN/hXW1q6d7e6w2Ybrc9tU2hXUVhzfBaKnrG7eefpEQ3u8Cig2aw1qYGI+
	 eVXkvC85g2oF9SQNAV20i7V0j1LD/xcZeiOeAK38gVHjJaGuM7YkSDX0I4/pC3ohpR
	 L3BYZ4lu1cRo7pE2fl+WiR2T/vw0DcMEOmflPvc/JpRNiMCp/QG46Oya9svWdBNzWa
	 QnA4Mqal/XnuqJkhh5HemEXhOoItmDfSo6uxSh6xowUFE8FH4RcpGgCdDGr6REdr0I
	 H0+KfkUkeUmlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9845AC54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835559359.11095.5502669528277301374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd7745eb5d521606ab0a0f68f033e8442841846ab1638199c5bd1af4c6e5ed3
Date: Tue, 27 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748355593
