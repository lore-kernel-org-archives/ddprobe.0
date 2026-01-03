Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CFB1E89C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767468834; cv=none; b=TP/1r/N6DTKqrro7y43E9MlBQ+7i3xv/eHYbZmuGgbWy52yXq6dIh5A2mOCKvXgvokMnN+FvLZcu61ZKcGIotwLVzrCn3CKap3M0h1trDxqOGsWQ8kMhdhEw6JT8Y+TQu6ArfaYPxvB84qi1TBk+sPtTsWHZED8PVouqJsuvZvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767468834; c=relaxed/simple;
	bh=avZ/4DbdDui+EyrNWBDjzaG1IBdY07CBHqTWuhIagxw=;
	h=To:Subject:From:Message-Id:Date; b=NfI6Wdgcaysq9XtoexlmZSNinmPgq+U/hxN5i+KFnNtNQ+50NwWfwBVvnKOFyAliScHXFTa9pk6KMFWJPObD8eSLP4zP/DOywIraIo16cOJVs9buQ9/IArF59NtGp36hYbIKsozY+usUI4Hw/q0QCnru4urryx5bghrT9w/BDyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ohebjfwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ohebjfwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4427C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767468833;
	bh=avZ/4DbdDui+EyrNWBDjzaG1IBdY07CBHqTWuhIagxw=;
	h=To:Subject:From:Date:From;
	b=OhebjfwmjLlaLtHFpLbiaEH4emQ7Uh9wO3NXEFmTOChyEiVnMxOOCuYL2He6PnOfV
	 F6QR28LVH7wA7QU4BxzW49+d/ViV+n9cxgoY/IHLB7JGkvwjSF7Z8BfwMi5UigCpgo
	 12GsGeXkjM4momVpUbF8PIB3JXhY1EKN99a6wylssUtZyoHFcuZqpRDjP2DdsH8cLl
	 lCVbf8dUN6/dpPRBz53Dm31PFEhV/v89XMW5F0dpb5yyXh1GwD1NMHqX3VTRRKGFMt
	 uYf6UpveWJCqgJxHD8xWjot3XhfT2ATLemH+vvYP1xEtvg2CgtkBpqPZt8Y9NcH+L3
	 ows0EAjFQtbuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A1CFC6182
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746883358.5304.11928043428749602877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f29c807c6666f003ed6de20b57c4a96a6e35fc6922774a068611ed7c8b57738
Date: Sat, 03 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767468833
