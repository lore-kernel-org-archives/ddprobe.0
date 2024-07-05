Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B7914601C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720168523; cv=none; b=iF8XdRCB89z+ODouOtmurtEoLcVInx8P9qHIQrqTu4pygLZo1ovr+W3lAXWLdxZDStTotPsUH+8aHkLieMBX/8k/u0y5GS1xE4q4wqM48UBy3ThPasJO93okSyEGAGzMBViYLsn/DVy4M3baIl5vq1YuY6LYzrSlkzmbK+JRlmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720168523; c=relaxed/simple;
	bh=Xiid0x2XBMgyGdiaV5NY6nXW+KZmsr1ytW7fFymnbGU=;
	h=To:Subject:From:Message-Id:Date; b=AvEoFD2fmJUV6uKSnIFxDraTUrYRsJHCXryv4P2KvKtqnyg0J6vgk4+wXy/V9utmSMJ7AVHwyIfsyAAziHEk2yEvDzRoRWKCBCdHnt6bo/U1aSkovTDpxFfh7ZXnSpcn264c9ACbVgZSbkdytUFE+Qy41k0ng4pG8qqhjmMKl/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARIfya6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARIfya6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5605C4AF07
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720168522;
	bh=Xiid0x2XBMgyGdiaV5NY6nXW+KZmsr1ytW7fFymnbGU=;
	h=To:Subject:From:Date:From;
	b=ARIfya6NTQ2l3ABl3VDbFEw5+akM7YEYb6rqEuAtPMaiDBA6OC3AVzZzIFMI0zlJv
	 jobPkP4wPLUD2LNoLjVqtzaSLSvd5XHTNAQQUF6dAN6u6IfgFrQLh98OTvkoxz2iPw
	 lBhIzAAnjQupqjP+ImVZyUGWJXyJQAJqL2Ng66Qip7+f3QhqnOTpRq0sV4J3xMQDY3
	 FIUDVGQwxaqNUE09cY23raERXOOzil5auyppzTojjKvWl/YBE/5DQhG3xhUt7f68XP
	 m+QCsEI066SiEn5aJqli7X/8WQjGWQWFDEYVahjF+LlBY6nvER82R+JwEasLZmZ7Lp
	 I1hyFk736hVeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0114C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172016852277.1402.2377530275703082170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86bc72974ad110b610f76b1cb903c592f8d244b535a3d19389cd357c533dbf27
Date: Fri, 05 Jul 2024 08:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720168522
