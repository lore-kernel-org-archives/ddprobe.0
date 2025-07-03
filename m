Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2207D1C68A6
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751575194; cv=none; b=Ie8IuT3ZOfcfncZ4BepCEmzV6oGouPqYxrt6HMvfwtqfqIX6A+Yzq2BnO3ujfbkfavL0n1HFkLdqNgnwE2nxh2oRBkkvCS4ddgRC4fnLJCywjlHJB1yTm5ZxqUdLIiZL0XIEhGZS8KYxBtaP46lpAPBKdbKsYEfZtaYmBll88EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751575194; c=relaxed/simple;
	bh=mS21jU9JrviqvEeYCJrR3pDOP0oSdzsM+O+zna6L/qo=;
	h=To:Subject:From:Message-Id:Date; b=DC9RGaNUH8cjArWm/DbkSo5zkuRby+DMA09WtA4804ooGM6TBUOV4Jh4F1ZA0iS6c/Q9LajaHfAx93q2E7w9DGDNgjLw3fSo6IgRphxp0oMWMxt7h7mKFBsExsfAYNH45cc8zBiS52yhN8Qtivlxi7vYw7iwoxYEzTeLoTFn96k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjiBAFxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjiBAFxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0776C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751575193;
	bh=mS21jU9JrviqvEeYCJrR3pDOP0oSdzsM+O+zna6L/qo=;
	h=To:Subject:From:Date:From;
	b=BjiBAFxeqmo21y5f8SFWf2xb2Yc2PGvD1U1A6Sa/IK/n8/+LqCkleOt1nCuReAjlD
	 X+E3xQup0QMgWJEc56aL64RqmDwWpCkzLW8gH1QF9Q9pP/MOaJYWMYgswNlosJMNwn
	 ehgz5tK0kf0wmj6bqYQPCrj7ypJF9HiHtN5p7xNMz66d9PK3E7/kdnO6zCdy9Xucf6
	 mKORez/afukiVT1Cv5qRiRGLaYqRFa1diT4a+jKzIwXInLwiDK2vzRGlWVPDOcMx5s
	 D7Pop0FSqsvZ7eyh1/B3bnpWxkmn7Ypq5gcrGG6QymoLHqIyBLJCdFNOhiN31lhcPZ
	 ui2J5qJ8IxVXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00BC83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157519357.29428.9960294541625123777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091ad92b173da95f48c43e66ec9627bda07e98154a0dbe570f4fb3f1c60ea823
Date: Thu, 03 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751575193
