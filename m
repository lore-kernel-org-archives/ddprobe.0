Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FD53DE43F
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785912634; cv=none; b=KBDIPzm5XmYpkOqS82cj6lNZy2PLi0UJzf9zjQl9KDwz3e13un9KS8lhuAAS4MhzrFrEZC5Jded9xcgROU/QnF0sb0SNCr+KHXM0/NY1XD6yuHX2bxmxCSNhRYfA1b1eDNaxxKmfo3fLWhAMeHzdhyQD0mPdKMa2pHTrKoBHsfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785912634; c=relaxed/simple;
	bh=wHpfNr9ZKzoBUqiG0gRIP1IEeLZTFahK47GDO1xiats=;
	h=To:Subject:From:Message-Id:Date; b=Z6P/YJ1W3chPS6EFdXagcrHChuVNizZD9sPzyYxL0WUGiSz70XDVnq90visNlqxGp4uO19izM9WW11qr7G59Zor5iR5JJZmsBA/owfx3NP+LeMZtGRua7DlAkytGDskCQ7o6d1LPvHG6lfXHAeD33/L6kuGbekbFlhHZwlIgir0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ry904kmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ry904kmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF0DC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785912633;
	bh=wHpfNr9ZKzoBUqiG0gRIP1IEeLZTFahK47GDO1xiats=;
	h=To:Subject:From:Date:From;
	b=Ry904kmFUcIKtnwFQWk5qm9sZaFJEbrgxKc3xvO96ETXUvPL0z3t/MZ3/QWN+tUau
	 tnBoXSExuFgIszYFQE0/2Vr8l7+404TY5fuxxOStQ6Hetr2WwNxcfdx1PvbBROyVX+
	 FeFH/zB9qfcsdc2hRvzebEbZyBFDIifB7QfQHgfmg+MCJSuJC3T1niCLf2qH2XoaXv
	 5/QQNisodIOS3jwMkjs/bMYQL+VKuEUdN4/tFYH2UE+ywQI7BCiGFJmJP/FnuTtSRN
	 wbY5IUx96QELPgR8LsGAykktoug5fDruHem0mdabvP2aUCxEF7E9BPDPpZ3GKmmabe
	 1DdYhS3QmdEiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA90C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591263369.1385.3794978965170870881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab3cc48b526f76a6205291bc73de225badbac91bf240f590cadab0eb0cf4320d
Date: Wed, 05 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785912633
