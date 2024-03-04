Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62101E4A2
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709595497; cv=none; b=Cemdvd1pvOwLK35c8gd6P3Ya86qr13SSuLOdrgtYnjQnXNxKsevF9p0hsRI91I72Fbvz7QhWnhYQ35rDS7b8NmQkPmZU0iQ/BjSDHJc3Dpi11I0kQgxLA6XXn+1W29x0Q3GzN0lfL0R7ex5ieJIyfRRF4dm4mt+IMMlPU6UECjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709595497; c=relaxed/simple;
	bh=Sa+cnS/2izcOyW8Oddjc3qcXmxMRubY8yJFer3pzK1w=;
	h=To:Subject:From:Message-Id:Date; b=GqD7ZrPxU1u4g2nifu4puMaAAVvPA1zQsTFB3YbFYsei2P3qFvHssDYz8pVtgPdthrpUYtq2MhAi+Fb/dP2f3Q4iQKOgIzDtItW+QdGJzx728em8IUxXyqedDt8oMT4+p+qL9ZooWim67Qk6zbB8zENGMpMyMdU5erLHCFxCW6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XoDtDz5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XoDtDz5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C49C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709595496;
	bh=Sa+cnS/2izcOyW8Oddjc3qcXmxMRubY8yJFer3pzK1w=;
	h=To:Subject:From:Date:From;
	b=XoDtDz5lOsEXz3F7T29asbMz1Xle8ptqGk9bzBQObjjTy1eA6h9p+ettea6MP5Ooc
	 GaxPDkQh52+dJZH1lmhhWrtF37fwwXBiJhgWzSr3JSn1tHRLcRmymsZbegbHkmtGvm
	 nyjuDMLH27vTqtbOWAYIFuD00JFNL4iOZrUxaoHXT8V5IDaXRoDug0QDWPytlIPrXX
	 DMTcAipHGh5KlagEAVThmvymBKbHDyuMo+7p+pv8J5uYjayNFNgIvd5MmXzR8W8HPJ
	 FlzytDg8jyhfTiNeV9MsEgeMJEQpJM/dPTsdYJ78GnUSVtssiEpDoUkvSdH9nVEpo5
	 Eo5tM3mPSxSRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB6FC54E4A
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170959549643.16085.18190912081243526366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c20480b618ffcc390f082d95cec5a2c4b82366a1296dd91cd02541314e24465
Date: Mon, 04 Mar 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709595496
