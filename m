Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D334283CB0
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760049594; cv=none; b=OEPtocb/DUz/AcQoyqzax69UAccXdmB/AZw8FFpYBozyRn/X+r+WqMBHOScYliz6r7SIgtFYpAL8WYYQD3zwmGkNiDzQzfWow/cdmTcH1kNmcT9tCRkB6qMONEbfwq10f5vW1g6iqBtVoinPy7y+CrbdaNBRxtE/8SC872Iz/xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760049594; c=relaxed/simple;
	bh=P2a1hZUaXXLn8sUoTtweRZL+vmYQvnf2C8287xY88vY=;
	h=To:Subject:From:Message-Id:Date; b=sW3slr/o8DAjaM/AWOMdIbqOhbh/Zmxs0kyITUAOrr/yIi0VVOaS11qR8m+jw9dCPqfpfi1Xwdw0ZuNMIqYhq8VI9aZ5qUUxKDMCvso3rX0ujlQigqa8Aog6El9/YBFZxcgXweBKynwSsDI9Od/RiGr+Wb1cHSvmpUJ3FEx5tZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0JcRqt6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0JcRqt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4306C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760049593;
	bh=P2a1hZUaXXLn8sUoTtweRZL+vmYQvnf2C8287xY88vY=;
	h=To:Subject:From:Date:From;
	b=f0JcRqt6LGnpTTlAdKcx47Z0OpuJK810+Vc7VXL85t2oySHhuUeFNyITV6l0UdIgq
	 50JraBZbl1zPRPZEaNw2Rp9WHqGxSTTqsbtGoP0n/SkvcUoZHJMNrfENrivjtfhj9/
	 VaKLOT59A6gQvAmv1LrXnzSmhI1YuBEtAl4Jb+FFzcHjvtXVnhTnu7VcLewKmdYZ5f
	 nZrs/C5TTNvRa4M1rXmdVauw8BD3snD0ju611oZqaKPRl7wfP+YRakHHAcITYu6eYd
	 IFx69Pr7ibGgeiVcS6p6b+bjmyoaJul/nJpv4y6J1PiyBqxFu/f4m/XuglF2Ed47EP
	 BJneAcD2Yp2sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C8CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004959358.31415.14176601659012411870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d05fde60736737afdea030c6755d79acfffba9da0d639a5ceeb69f08f00cc0
Date: Thu, 09 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760049593
