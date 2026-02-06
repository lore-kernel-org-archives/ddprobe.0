Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246CB28030E
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770377034; cv=none; b=Exk96DFvRbS1mlP6qsyPjEEtnOdj0zCX2LgZJCa5+NwRE6AohTcA/0aeHNSnUPvjQOy36c66JIUWQ7dYeJb5IclbgpYwotdA1BkRvPfIoLnriOUsppijc6J18zlmmxTlZ0imGkW0ie/U+BrTg3mz6ebgR3BPkdNwLHlKqQ26dYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770377034; c=relaxed/simple;
	bh=sBHPHBcxycAnHq52cz/U+m41YM21C7tXsVgdPBDWJ+U=;
	h=To:Subject:From:Message-Id:Date; b=OGrFMbl4IyxoeW8PIc92n/BExN7p7dlmNGQ8W6fJy7QcnAb3RD3/59G6FQtqrRkmlZZtibuLWVb1lmmK5AJp0Um6q9O4cofYupy93Dh0XskZR0+g/H7vZioicraKNwawr8XAmd6wdjWmrk4sH6AWCoh4sSHhL+3TieqySx6a9rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRw1ksdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRw1ksdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE07CC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770377033;
	bh=sBHPHBcxycAnHq52cz/U+m41YM21C7tXsVgdPBDWJ+U=;
	h=To:Subject:From:Date:From;
	b=bRw1ksdY/OJ3ymEledxTbTXimuMwYVSbBtucvV6Ww0NAlcMRC78Cy2F3HuBcUVY+M
	 iJfSO572xVfSG+erTxjF24i6hEnEmJD2xnTPdo8f2z604zpBSlDMCpAg88Q4SpEisy
	 ILsPiJr9R45z7o5uJA3ENDLKRxBVMBPjjtABt6dQtkCcTln91+VIOp/ts8AFn9sut/
	 8ac3MctMUQZLx6OCcIy/UzuaF8inv8kF9WtTfCeR9gZUVRFyY/ZJQ2tV/O1/pj0oIx
	 OJblFum9Jf2iT8B8enqXDwqiNhUCVSfRFWwLlyoqoERRWgWxtnVCUtNAw8C1LwCM6T
	 tXnSCmeGw1ehA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998AFEE2084
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037703361.21303.6288863702788275103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f76d719b7e25751cd1e5cda44f0e565be6130809660e02fa89ffa62dfeba4b9
Date: Fri, 06 Feb 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770377033
