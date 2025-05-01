Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D506202F7B
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746112194; cv=none; b=NO7sdMGX04tPGGrFoUjCF5/QsfiuELVrk4or7YyyoqBjqW4C9/a+HpQ2zgNTbxgs4OKieWsJf9n8mUHTfP4yQSFlXnUZqragMG9S54f4m7Ljcn2lb7gKqaIOhAMJhuZymxjHmimSO0VNcO51RmVCDsgb+WKBf+ImZnJ/MxttGbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746112194; c=relaxed/simple;
	bh=egs28yI/OQZhnMKAH/LrTu0MEWFjH+PPCn+mvzdq36I=;
	h=To:Subject:From:Message-Id:Date; b=fvHvSjKJhoSUxyuYaQeHUuq542Hfx6z3gzlv2J4EeSnfqQ/J38kb6Bk2I77CIXZYRDokc0XnWxSBCyMpuYQzITS8Lc4ksniVaEHm/4Z2l/G3g8jGgfh7e3JRKSL6FReCqSge4YrW8OYe9XWJzJHsk0cj50edflw5qRpSJYvspog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLsKqkm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLsKqkm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C593C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746112193;
	bh=egs28yI/OQZhnMKAH/LrTu0MEWFjH+PPCn+mvzdq36I=;
	h=To:Subject:From:Date:From;
	b=pLsKqkm9Oql/Q1Yy2hJoInimtybRjiuhgZUskMOO+/X9VDlPsGDebnXmgbt7EbYbu
	 vNrI1IAkkTifGtV6f7c+bNTR4pZsBBrU5lkfgQt29hOtVPZEJTc7+EQ/UBFaC6nhvB
	 Mi5Dwydm2sJe8RiRtQEkJqWd9I/xp2XPdFX/UuOMVMGmY053BPsZiS1QmA9gS2JRbW
	 IJJBJKCKkWCJcAjy32mUPZCkir1B1VhA8R6Q7fn3iYtYz37+5dtWEwDVNZvDEP9IAf
	 188kbHHAdlKITBTWnHit5Us1xUN8MMDs46W1UMTrlKsR+yqM4KpP9n+Gj6LxEmABpW
	 DBlF2mlQebaXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5EEC3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611219357.11802.8201330227610776017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d75708c4722e293da59d07a2458f396e15a922c50a9604dca0909f59338a78
Date: Thu, 01 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746112193
