Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A92717583
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732374954; cv=none; b=KMciTGELktFijMjmy0ccLV9TfciShUosUvWyLj5qVzZYq4lKDtmZxFgZaJeG07gFUoxEnPhQDXsC23mI8zivfSmU3Ix1tY4vwAftagSnGH1Mn4eko9s2Iu7woHPxcwe8e1s2g7A3KevgCWpwL1znr4alqeGaoamKv2O/U/TYpyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732374954; c=relaxed/simple;
	bh=PjdNZcxhWi+Yj+kj5AsNW5Cd0AHWMuKYdBFVhLekXZg=;
	h=To:Subject:From:Message-Id:Date; b=CiAcbewSXmE+BG/4JRBfAxJHCGqbQEP6seYmoNModNScy5TyQIcGLhwNefd+VVaQW6HIcOO0cNtGbv5PsjtZ2kJ71ydUsDw4WveQLnJ9yAQ1KTgqJUugVlQ5UsfZ1u+gdIZwqIz3/G/Ony7vObRto+pAZDvvcpGDwYIsUT4kjoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ID27kQUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ID27kQUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD379C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732374953;
	bh=PjdNZcxhWi+Yj+kj5AsNW5Cd0AHWMuKYdBFVhLekXZg=;
	h=To:Subject:From:Date:From;
	b=ID27kQUiMgv4i16jbO8C4IBuB8AM/YX/2eFzaIrpTvUx7fTzTPSe45R8kRskehS3M
	 I8YTPcXA14QtaXvkJv1NxTtFRt+0rxnHJMPmpp1zjgQnibPUucyUwxAowxrlWZhw7F
	 okemg0ktwA6Lpc9QUq8VbbUDjF0u0/tLQoNJSZ30tGudyUU8Ncr4q/UUOv2/zRTocL
	 Awv9ep4mYBeXuGuVdKmSw5j+pvEMARSVs+a4ULHkS1B/QrCDmj2v+J8TNlq8WYmDiv
	 YMDZlsLTSGZvqXSZZ9c2b3gUYRSmM7aC1DrpGYdstSlzGYekpX3sOTR67DUPN9uG4u
	 aKgOeOMDhIj2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9733CE6ADDD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173237495358.30532.15953942386406527365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17af2b15dc204618071a00756fa1df35b987d1685e5322ee4b78462cf0392816
Date: Sat, 23 Nov 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732374953
