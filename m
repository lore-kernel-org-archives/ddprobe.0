Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5181411FF
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716400403; cv=none; b=eSe3FXBQZZYH4cyyPBLbMmtKSDdhpTqTHRSn6yDtjyLMaqSHvHqQMDEHJeEv1aAQ9wLivTGEpKTlkro+4gTmnOXWpcDGr3KmDGLQKS1TBtyHtOBAqSrcsgU3CG/ALBOPIkC6xVdZYpRSIzT95FBZ49SGnntDx4foCdyk7dVYx0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716400403; c=relaxed/simple;
	bh=mlOFL4Sji2xUzMeLRuYijWe6uBlzcDzwXfu5FBLXDNA=;
	h=To:Subject:From:Message-Id:Date; b=W+1AR7Zd4cwM1Bmmu6GCEG82U5/QPcHrBLvp2BZLvh2sykzD29RouTqDL3EVdUvyaQeUGhgAn3l9NGCnFTUfi1L7xn2gVX7HxRYq1482MxYb8BBscWgOMCCyCfcUCUT8mQSH7XOneWRQwqYDtkz8AuP66ma7q+PMJbGP19UwPrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQtp+8Ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQtp+8Ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FE8C3277B
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716400402;
	bh=mlOFL4Sji2xUzMeLRuYijWe6uBlzcDzwXfu5FBLXDNA=;
	h=To:Subject:From:Date:From;
	b=cQtp+8AxcrhP9/OcQptGSF7HVS0NTao8sn8WR5Exl3Vc83XtlM9A3owTy9y3Y2I4x
	 mPewmEkeuKIRybb8xTbHfAItcEgA8pJQoGuav19a4v7ZOxjQnHKCbIsCoJgb7JgI2T
	 axhCm8nJE6G0jglKFG87sSUOuxrE5atod8EQRfrqC9Ksz75sUW+bA+GDnr1j6JqR6S
	 bdlz9T8xrL6N1PheFIqKUu1cf9TkAdxRx4rtWxWukp2MiBp/xK3Xi1TFSImi1o7mOL
	 +ihkp9ZHKdwdTj1ReBSJrn/8WmESjDGnzQtabKgIEabEgepu5so+hYVcAnt0KIr265
	 Hz3Myzu4hKbJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C293AC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171640040278.18961.9382559399748881992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0fe772362ffb9c19513c5fd64807f0d8c7d6c966c49d080acdd08fba24a179
Date: Wed, 22 May 2024 17:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716400402
