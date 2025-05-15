Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D33CA6B
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747268993; cv=none; b=fHupz9CczAeQtqYYgUpLvfjJGVvdY8ArEX/nyEhObuKphbE/SLd6sCZOMQTD8vTHa68NAhO6hdZn781mSYGsKhbkwG9IsXUYEH1uC1+/uue/Ge8jnm1I0fSFBaxbpvGZ9rNTUeV6ZIQenhc3LU7hsresAj5cCwHwWIlHvcF7pH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747268993; c=relaxed/simple;
	bh=OKfdGQvAcktMc4GmtrDRamSeiryYgFzD9bDaAs1Y68g=;
	h=To:Subject:From:Message-Id:Date; b=KZdQTefzANxit4SllZxyKDe2eietw40Ab5PPFMYCaSN2A9Pi4bE1hyw0A+cWTYUCVioKh6nWaPMLIVN+ptp9K0mnsLYIftRWxCLsxyK2S0XujbPFSavu+Wv6xx16AtxsOdDwu7dNiJJgHyOJNUfYTzcb3yknzRlqxBpJaFJ3ggk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fwkap6RZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fwkap6RZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3C5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747268993;
	bh=OKfdGQvAcktMc4GmtrDRamSeiryYgFzD9bDaAs1Y68g=;
	h=To:Subject:From:Date:From;
	b=Fwkap6RZSt3OO2Pe9yocW2icbEiRYU9Gr7WBQjgxYuhBlKNAPDAJMDwtyBW9swYHL
	 RwjE35KggvTdr5F6TjP/3ZlXvPXroY8xpFLtGNmS4wTq7/sOjw8Su3eBXei0Lhw70j
	 xkeqPgF1EbX8fasRJJ93F+gotLEic+mIGr+FmkLCXaLaqbGyNt/b3O0RuG2S4JJhfL
	 oX1XOi5WJJkZHjKqTbrmxgRM7PBriO1ITM6Cdxw66M2DaCC5B2Gp4RtWk+seAb7yR6
	 pNgk9hRNuoHShNU2yUuEVnI8TBE8i+mvxpXWcirbkaXKh1A2CDAPn/Ld4yrxVpmd7o
	 tSQyZBkufV3zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F194C3ABDA
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726899357.4321.18095519295597637556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03206769bc88c0a089c1258f0599247b50d218206a1961fb35ec02b6c80292bd
Date: Thu, 15 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747268993
