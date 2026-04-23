Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246E22868A9
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776923254; cv=none; b=nFBAHz7FRz/cLM0AlTC1xCh8/1fB6GSE0dpEcXkbphDT++1Q1nKcqn9mRc4dw4WotMiLjPNkZKz2B8Ry7KTxjvnpelX7D1U5InTVz/ZNOs/zPxFQHi8J5adPMNfsi/kGz+kFXTbr6qwHSEEIMHYJdaxFutySw2NzmR1peC1GIfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776923254; c=relaxed/simple;
	bh=DOgh78KbCM8Dspm/zzxX26Ct2vWFaSMOWkzxqa/klYo=;
	h=To:Subject:From:Message-Id:Date; b=LT4QldeoHphf6lZa/dynMRfCd6ONjO5oTNPerDthqyTIsoE9XSEX9V3lDiXXOFmpv0/EqukCkfGTMwktd48HGtcC7lT9uJgScimq/Zg63B1Ioiee3s2adq4JP8aQy0XDm42JxrnRXJ35LjYwSRTe6lqiy7fDJTOlUyGP6EyMsPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbL2iSQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbL2iSQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09CBC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776923253;
	bh=DOgh78KbCM8Dspm/zzxX26Ct2vWFaSMOWkzxqa/klYo=;
	h=To:Subject:From:Date:From;
	b=AbL2iSQNv397nawvDmm6LaOc0obcRv3kmc7HSf+4MA1QHwGUSiVcDYnhbgQKI90n5
	 nRJQ0yP6Cvcukt872mWZdbr/bKMFMiz3QJFByjTr/zz5WoHgd3ykhaaNsYZbXPSPE4
	 zVgjgxixsPIpvAqhk/tnpv2fvEwj85bUAsO+8tCs5zh8V0IyoVKEKXpBdRILckK1az
	 NK3GVWzuiy7/Ru1qigvv/YraJw7ROvILHEMHYIKmf4DN5DHHk7Dgp5uZ2E+gj6FV1c
	 b2LYT0PNu/CZQlfbqB0lE9oQFoc+hoOv9CkOFLXecIIg6E1KuGmgvZ5wcw/El0ylaK
	 hpFGFN+Xj0FWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE327FAD40D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692325370.7065.9168336511497264864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3585c70713232a5ad26a66ae5ce66e7f4623668a6d4f327ff59018e4bcd0aa8a
Date: Thu, 23 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776923253
