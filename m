Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CB169D05
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 12:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714305743; cv=none; b=O7ayifaTho/Dp0+Ip+VZu1ogf5jPprvHO9BBE+GA4tMEc5ls1uxUD7yW47l7WJCss4vnv67dQm2sqsLumcXE9m0IDFU3aF4NWWLPjOGa0dGjdLEcSYG1czi4fu43falsnPC5cSsrnJ85JM0kUm28hNbA/6WIXtMgJCNoJwYsjyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714305743; c=relaxed/simple;
	bh=vZRr+5tgukm8WtAj82YJ8FPNWCvVbpvJHEngAPlIki0=;
	h=To:Subject:From:Message-Id:Date; b=AzOaT3XovFlvh3t9Q+9NxlargOy4ta0jWDYfTpWs9R5BRq9QBY1oH8yDMFkt+jaC0q8hh0FEPOTuSJPsVmCI0HJqlCfgSX/azNwUrcf7XPUN/FQJPKbnrHp2kgpNpGMGkdXCyfjZ/1NuxbZHG+OD4f8rT7vFU1FmfRzPFki/vuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wj6hVxRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wj6hVxRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCADC4AF17
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714305742;
	bh=vZRr+5tgukm8WtAj82YJ8FPNWCvVbpvJHEngAPlIki0=;
	h=To:Subject:From:Date:From;
	b=Wj6hVxRmNSnBDFZRS0kIpDrY76Iz3m7QjK7DOFiiJXc+TDX06IEdtjxPdcC+kyuSE
	 T5PMrDzcTZyBgsmksQkUM7PSf73UHjE9fG/Bclr+6GU8X17sbnGkdF5V99mqMu3RLv
	 Bs5H0MSgD2YZaIBTDQpweQ2kf6geGHFdrTOOEIFoi8blj6OX6sqPXMyUJ7e8yp6Q0v
	 OHSyaPSeSFlnt/YPY1Zfw6WNI6OPGGti+iOSOEW0yKq71/2Nb4yEXlG3rMWSe6urk7
	 tDkh8qKP7Mgvnfrkb9KICTnLntxlWw3po2XzxtneJ9OT3XZ2Q09IDfczA+Cvo/LgX9
	 ohucYPoqQw5Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4DDC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171430574275.21858.7381457451389158973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3646d2b2a6860b29f051c69636a87000ca266903788cbbe8ba413276eb1d4dd6
Date: Sun, 28 Apr 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714305742
