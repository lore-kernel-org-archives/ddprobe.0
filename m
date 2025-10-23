Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D34C26ED41
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761190197; cv=none; b=ISEvr2Vm8X369Bi2z8Ml0NWhC5xHulcds7+Pbm2tUuerJGdwKR2ZOKREyRpQ9pdRwi6ImcgLa0FK3rNr0y6ItsUEkWt+DJznw5qSUlQ8/QxzG1ViEa6E40nKzQ7CRHPXeMnlNPmcof99d+/DirxGQx2FEAR/aNdAj5WDZOfZyTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761190197; c=relaxed/simple;
	bh=CuIy2mgrZ74qeHPI2nvVI/9uWMu8R+N4wtuwParphBo=;
	h=To:Subject:From:Message-Id:Date; b=mwBFzVVBLvTCa4HXhUaur/BmKM5dRFGarc1BzRnr5rGpymeQmdFWb/PFjIqNXwKRSbYhaZnb2Rn+UE/yCNS23I7J6Y9utjRwFCqjK/pb9o+JciW9nDJ3tmF3ge8bXg+pV1J64fRLrroeV/CClcGzGKgRQ59UKhTxT/DhEocHV9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJMpoiOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJMpoiOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DFCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761190193;
	bh=CuIy2mgrZ74qeHPI2nvVI/9uWMu8R+N4wtuwParphBo=;
	h=To:Subject:From:Date:From;
	b=dJMpoiOgbb+8vf+TdjYsXj4vnpAFwy3W1ub4RKBMwOdD4tXU/Z7LCB/xvddj2C7ew
	 VxKTvO5aN5/7LP5dIbY9FFXQAZADANwsAaElpZyxTzQzdIvFowm054qgjdmKrHtud3
	 P7XWX0X6tMclcu8jCSvOwPFWBPJV5AX2oa0PKiRzVLJQIsLzt7QTS2CDh0fPyzLVoX
	 OFOxp1Gam3yZiPgfnLqSo5QrwamJjGDYozBHD4jovhrGf7pp2Aj8pwANdPUOh92UHQ
	 551RuB+iycL2V82ZzrR7Xwo4HQxAi83l4sWn4HcMJcFkxmqHS/+MpTYvZsFZsyInmf
	 nVbTOSYQgCXLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEABCCF9E0
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119019358.16288.5209161759178168560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7a4a2a016bced2db1eea0f725d97653ec929c76c82d7f9cc18d7c5d103d160
Date: Thu, 23 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761190193
