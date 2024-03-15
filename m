Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBBA2524DC
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710530297; cv=none; b=oljw3e7IbyUWRXjLEWr5tvy/NYAC/jFIFmHfrJLJ3lIg0tvDvOjMn0knjLEKlNl5hAkAHNqgeVWYf+xivnBWlhQu2r+j3aKEMHzdQMPBp+vqMe0oQW4/QF/I357eTQ12nwIZKG6oVW9uwgEW/9JdWh+lY1j4RLBNDJznzi1VoAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710530297; c=relaxed/simple;
	bh=M5/0dhBAGRjxMzqoIizaE3SdEILZ95piNJKppEbnCuI=;
	h=To:Subject:From:Message-Id:Date; b=jlaAKAm6gh+zsgTRXkjQEYdSKeVlTf+iSThmWqPLrAXY7d/x3uD2gE72fs3xlf8MspuLjUOBs6O/SNeWzyEs9rd8ItWqE3k4EIp7WsZBPSZYRG+l1B+Y09BQpTPmp7TWoM4gMLlle/grh1Q5UOZnICMTyxWeMe5dd+OH2AIVoqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uK5LJZ8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uK5LJZ8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76978C43141
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710530296;
	bh=M5/0dhBAGRjxMzqoIizaE3SdEILZ95piNJKppEbnCuI=;
	h=To:Subject:From:Date:From;
	b=uK5LJZ8/WmCu6TjOs63gHakzz7U/AEjnczZalbwaoJy+G293nbz+ex/lnje1FIWn2
	 R5eEq8a17OmsckTE0fkt127qwZkLHpCD2kCqYv/oJasleZEQPApDVUIkwiFgnIniU4
	 eRAXepKf6tDGpYB/+lqb6A0jDE3GRx+trrx1fTBTR+6OPv8mg8MHOKRTAk/yiTTcid
	 N0LHFjQEpPjKB4vDWEv68OeWvoCfE31QXoiCg4snY3Qex169/LVfri2nAu+lczXfCn
	 T+dmQOxWXjAcUyPRuyl1/GVQJuh//XfgvGQ2+R21SwTEXnSxE0qG6iIPyvhvflsxTV
	 kLCoGN57sEE6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D49C54E67
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171053029640.28512.15756244617098192981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47eae7f9130f34d83531885830a06cde68e47fa965cfaba992f6b837d612604c
Date: Fri, 15 Mar 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710530296
