Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2EE25392A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775905654; cv=none; b=ItteLfVCTGBhJBnblqq1Dw47Bnq5towkJPlK/BcH1DL+X+VusHcmyKXVlfRrqhR0AS51pu3fqAHvjvNDqLjK2dBIB99quKHzbkL3h9yBRKbR3RRslcW0l3Z5sn42ke/rNWaLk/1aB9ZU4cl9FVUgCfWqSjFhIf3mVGelW05wKjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775905654; c=relaxed/simple;
	bh=JpFem5HZpPiP6eDMovvxpLT6LDzj/vK5iOwJN9VFLdM=;
	h=To:Subject:From:Message-Id:Date; b=gPuO08ZMb0IAedy5I77tJxmge5D/NE5h1IKPDqrJ7HGE+cYMVVmQRUShR4Gt92FeDMTFjMg1dA9Mz/uaP9qTHoNlS05OmEzenl+fvdF1LJtHUiVSLkE6LAKPalQ7iC5bYeMgcxcW2D3LclAOx6pspuR5ychLTT0tlF6+5GoGZLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+fphAge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+fphAge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA81C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775905653;
	bh=JpFem5HZpPiP6eDMovvxpLT6LDzj/vK5iOwJN9VFLdM=;
	h=To:Subject:From:Date:From;
	b=d+fphAgeSav2Kydz6PmROC+mo1jBb6cElepee+LgFD+iVonmh2cwn+age9MGuwuTk
	 82gv7whA3YDjofQPEHvntJ0xiEPf0O/e+SX9YHJspFuJ7ubYan/14ThFIzFqiYaFPz
	 PfuZ/6hylytFUGKT4mUWF0r9vecg1GV5KuuT7BWgt5lgsqvWcygxoWrXQV8eUF404w
	 eNincoMCiqU9sP1GmtRgxmuSoUdgEXt9GgmsxhMVymeZjfCtO42/g606jVOGImbxCB
	 XFyPzHthci4fDjOCW8pJ5zwv0xb4WIteQk8jD04pvsxtpZLzQh/tyxj9/KpzlEqIAq
	 onuJhPZTO25CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9287F3ED44
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590565368.11723.18150600963501618139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fa9017c690e94ce88ccd545a8597f25dc71577fb6460ec69f7a7e7db55ee9b
Date: Sat, 11 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775905653
