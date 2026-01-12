Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29959314B72
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768203234; cv=none; b=udqtg62amZSFNEc6l+6zpvwbW66rnl3AB2wCX2BFb9Qh4ZHWF+CImDMw9axbW0CTb4alSNL5iQ06ovbMOOZr8eoJE0q+0JbeyctrKEu5OEDPRkATOn+ph2FekLcv/rg1nUsfQRaXujg/k9SmQO+z6JuAjywVOjf9IraKwqRkRi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768203234; c=relaxed/simple;
	bh=hRWoUMAsC3Vuf5pLomV9vWtdJjvWzJPeyn9Etcybwt8=;
	h=To:Subject:From:Message-Id:Date; b=Gz7TyYFnoG2PDlXa8UEMMOBlAxJO3GnB1F7en3BuxHf8RnC897U8GoDTtLQ98LyRUEFr46p4ctRMOhgRplalb+TZD8MbJ8trRuWScy/rGmbd7vd8JOGMAhdvaaczs1W5tIFREIBW9L8TrIxRqHDiwWzE3bbWO06XjZlR2vNIiu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mew2sMAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mew2sMAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB17C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768203233;
	bh=hRWoUMAsC3Vuf5pLomV9vWtdJjvWzJPeyn9Etcybwt8=;
	h=To:Subject:From:Date:From;
	b=Mew2sMAYsU7TAxQnmpFvV90cwCP2MW7jzQOlABmXeVzFo7btscWkaCceYHjNVSNAj
	 R+Vtlu92aNXyiuKuOUEPmcdS/UgtidI1YQ6hxgDR1kNtgd/jWU8AiSFPyynG0ybXLA
	 LvniJndjg/oMU5+0idCywNSCswXBTCX0PDOIQ75tFSbBSMvf6ROTH4MKSTWVn/RNUd
	 x9vIpT5v6cA3Tje3dIUkaMFzR7lMfx3IVMmJLpKZOpv34XyyU5Ef2qlfwKAikNpHoR
	 zpb+7Z1mtZFzQfo5YEsMa33b09jaGeAch4N/a+QRolfStd3LqO8YvQTtdHXC9VfG1N
	 GhZJyDWWEXvbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB45D25032
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820323358.1578.9871076055397143543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97cc57964554863cae630ae9dec68b61b4c517fa332e1a04f96cf0da6d5449e7
Date: Mon, 12 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768203233
