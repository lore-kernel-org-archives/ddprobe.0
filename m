Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1888010E1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705719497; cv=none; b=bIJqmAmk7ZLYzHpHdfCzCZxk1REpmkvoAkL8J/Y9x70LXLMfPPdu1RBZxi0OgPwrDnxmuS5DGh2aeNPpmU2fWEi8sq6neC7vKDX9EIawwBJ437woi6b+snAQBQ+yDZIVH5G5WmbJa9IMAGupvcSb6DVT55IaVunVKdVyVrAkyBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705719497; c=relaxed/simple;
	bh=JFF+8b5h8WDCfaSrsNEd+IrxxsfIuN/gsthUHWtXjuc=;
	h=To:Subject:From:Message-Id:Date; b=JpcCeJWZllbMAg+FP5ExugIru8kRGigzv/gTymyK4MV0lfNMCnawesN15obQWyr43+AS3jSFLWM3Asgj5b1lRJ0AVCDlwpKKDeIVAwJEBYixsR1blvHQ0vr6TZDic08Qk5UKMGMolLhpvWKaWo+Y5mkb1+C0v5ichbym4W6zvPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpgCknBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpgCknBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E25C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705719496;
	bh=JFF+8b5h8WDCfaSrsNEd+IrxxsfIuN/gsthUHWtXjuc=;
	h=To:Subject:From:Date:From;
	b=NpgCknBa+PtQ/EQqF/W+A3nWGuMuSmjDSdVlU0zB/WrBQmLtg8EPc/MddziATyo+G
	 Ocx9RdcJvop3O4WWb2QZtKE1JezTWfcPAD1MKdb03TWik+j//0FKG1WsAWLyGgd+7z
	 3NdAr7TnRqx2PJbjz9Cq8R/heY0tF/39O3x8/Z8WUX3YCLN+I90ipCZbYHw/14EJxM
	 S7OFnyTvN+3zE+9SRq1x6JzD1OQHFw5cDO9CPv6FzJAUYjSf1zTgxe8SL/Zv/osceo
	 XAvforLC6mvggzVZB8jBuSlkF1BZ6J/NOLvY/4f7arc/pTUNAB12vCvi/dw8XDoZp1
	 A9aWvSbhlWQ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E61AC4725D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170571949636.5293.14509473853408920959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a576564ab9a7e659cacc101ba97e2fd1d02023010756509c4fe7173011e186
Date: Sat, 20 Jan 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705719496
