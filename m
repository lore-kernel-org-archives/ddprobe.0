Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F58A282F12
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786584634; cv=none; b=hLlZip5rE7nm7dzsPJZ7C/0tqKkq08gbqkSit7iLBtZtiwglZ6XjCVbFSm4MW9RZCFxm90a4rAH7GOds43vpyjhte9Nx718AH2tI/nqnJLXQ+wnG3hwOLFdi5rtBFpcL/RiEyI1EOs3fnAux6mdG1Nu+HrX2xkSkkYHAkCehoJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786584634; c=relaxed/simple;
	bh=kB/izmBM8fq6DIfagi9VYVDNuUiV+AXyh81Bb3eJstU=;
	h=To:Subject:From:Message-Id:Date; b=uuQ4vgcAM7IY1Pey6k+cmNrjnS8FFPAKvcDpJf4kiuCGOa3qQT/MdCVM7BC3cIDVBUnFBerwzEun97QsOYGAiPEJ/qlXz4hBwNmyWxZPGRdoDETqWSi9RHAJBnBgy3/+b4ajnnIxj4egdVqpzbKy7QVlZacWV80m9/yKr0BXNL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abvxIZX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abvxIZX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C971EC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786584633;
	bh=kB/izmBM8fq6DIfagi9VYVDNuUiV+AXyh81Bb3eJstU=;
	h=To:Subject:From:Date:From;
	b=abvxIZX5lV0lnJpnfUp6b7Uqct9QM61PSMgQCdV71TgMRLPPjgpJjD/fBThEARsIj
	 nR9Nc7vE9N0uIVDDChZR+cecTo/2mTLLdgglWCZ5BaR/Zs9A6+iJIfojmRUttvlDvI
	 kGiVlaRVW/UhSiLMPDFm75RYCyYDe+KpY/w7dXhIORhS7Gtql21/dtqsLpixEEX0fK
	 CvwapF1RFprkF0iCEGhGCVWOkoP2d6Z0bBloRMnA+X3u+fZu3+kFrbX3L1buovzbVk
	 taVtdqpXJpcpBoCMC4al4snvDgliLaN3HvLJsrfqOfs78WV+dymDQNyWiEvi1MSteO
	 IxEb7Etgvgt6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8432C5AD5A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658463368.18962.11358382236045627192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ddde9a2638b2145cb6b9b9cc4a973ed4c3cd3d49e16144cfad88080d8214e0b
Date: Thu, 13 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786584633
