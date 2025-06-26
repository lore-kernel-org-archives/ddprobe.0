Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A29327144A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750934994; cv=none; b=SYHO8Vl8TpSru+k8i//j6nYREptiiC9tInIXYwG2fui1BRIQweXp1VlAzndtI6/wmWnOd/TURo/5f5oQxgYycNfYttc5u8n3gcT4xMXRcZFMi45ByIyOU0ovMxacrG09tbSoA3lvfOVLY90PJDDJ9D3j8BKa+K2Qz/K6I/sW5Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750934994; c=relaxed/simple;
	bh=yu9koVH2DZPhJS6LCvhBCkBwAiLe4i5hyyvzLAxECd0=;
	h=To:Subject:From:Message-Id:Date; b=tggaSdTA+YsvKwUiaJ1QAT+3jZLxA6/WVxNfs89Ikcqcx5Xx5ITMOsTmOYX23aK36YEyqZiQG0k3v6nMQGwpp2hDrU83m1dp2RqTnYydzlLFQw5e1aGVstk8hPRnAdM958atWAjocrWvPOHT1kVhcaSRs1zqv7/Mjx7U1IGV3J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWSTmKvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWSTmKvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC549C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750934993;
	bh=yu9koVH2DZPhJS6LCvhBCkBwAiLe4i5hyyvzLAxECd0=;
	h=To:Subject:From:Date:From;
	b=PWSTmKvjra3ri8BefNr2RkEq3+AzQV6Qmleo+7ow/sPYlhSin6RM3g05WhSX0QYdu
	 kq9IdDlo10qrgzKqVJNjH/xft4EuTd6CJGM6797THR0Rv6IgUgcS1G1J51ZTkfBCJO
	 134IlkkyG4PYmZ8OVwOW/X8qB78PtaSLoMSmeFjXy1M7nXCQ28Foj/KXvRxjnNz/PH
	 wAmAtIvKChswKuGxbjNsZki9uDIIu6cXIZnL9JGjNp6ER/+tUFVb8pTfW4mJUMFKPM
	 satEW75WLlBC65BHgzbu8jP/8MKhQBZ4ZQU805nCLPK9JOOp10K9oMPM1lFkh3KzpV
	 IVeaZHVgm9/ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ED9C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093499361.5313.16589584143277256260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 857a9bfb0f0c1e8ddbd9ed8d5bab5158ba0c95a26790a019f59c678025c358a1
Date: Thu, 26 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750934993
