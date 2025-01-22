Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426D223A9
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737545154; cv=none; b=iL/Bjw0MeaK8JNP5BDvOM3NuRsevhpJAAGB0lZb5AnTtNZ42fwNldq827EB2BBLH4vBUPGghmSEYysmgUk83/SuY67cLJo21LcLOrRahIpRsxCCDzVB1nXiuGKxad+giKdKrt3bqwgEwIDgfsqo312EN85Hf/N5qpEorzOcRzPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737545154; c=relaxed/simple;
	bh=pyh0EpSTc4c9kxfsShirHUW9eugFgI9IMb8NbxodKoU=;
	h=To:Subject:From:Message-Id:Date; b=gSOnjyZAsQQPG7dzgQL76xz0GBg4wmrLlNfyTixG/9gZ+545VScD9787w3lkk/dqhizAAqcfyszFAMFKmRIQL+RP3Qzl9xwBcselAnwsa9SEESmzGn6DGTVancbsOzG3Vr6iX3hTq4D5R6rufkp808pNcmQoKDTB40BgxKxgic0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gL7hl9uQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gL7hl9uQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3582C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737545153;
	bh=pyh0EpSTc4c9kxfsShirHUW9eugFgI9IMb8NbxodKoU=;
	h=To:Subject:From:Date:From;
	b=gL7hl9uQumV+CMW/bNM9ZiQq4ra1Nmjzz52exwKpmbFVfgFRBJD+XM7D7GctptAJX
	 UiZWJoW1j1T+27JTl3mGtJs2YnsnIzTUyRP9Qt14ygKCX+d7cJ5+4urBk92j3lirfh
	 dX3DHpHh9LETOdjLLdiDgi/y5cH/alaci9x6n8C3ZGt9oanVz1iHFVds/uGq63zzlx
	 wcE4uYU9EtB5AfDKbU6vlQZXWyxXku+Ae8BNZ0x6GC8EBK6AxekRo3nkJ7T8daJxdL
	 BrhEz9IQSIsIT1ZxD65WaKQPks2M4PmeLSjt9DbvC4pi3NmrZr+h9Ji1kcWw6v+6qV
	 GX8D6wnEobPWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925B0C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754515359.6987.132054103261129627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7beef537cb9253c891691a04cc22409546813d653051b6498c23096784e8dea7
Date: Wed, 22 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737545153
