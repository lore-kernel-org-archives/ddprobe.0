Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD33021744D
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731448553; cv=none; b=GSEdagnWWX6z4fPBRByJxLKxyWhAyA2rRUsxI/HHcdo8YTfqZflFTqOs2Lohb4toSENGDn1w/gkAkNL6+IxGuBTToCB4fazzp6CQHdcgozIMrvFc55YXk2WSoBPo1U8OpWjGW7IAmUS24qxJsW6myc/p5V0gcq/fTWeyHfp2nec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731448553; c=relaxed/simple;
	bh=tYrwVdWKmQGvNuonBZMVmy2f5Agk5DLNv/CYMfIirnM=;
	h=To:Subject:From:Message-Id:Date; b=JeAtyQeoyg68uEWHEngiECuXe/erLYfI34xnA4lryI07gJ314okzdR7/UUcmdoeVlQZbM4mk071c/9HXRrrNEquglFkfnKZkRsqzel37qNzBM1Akrb1cOWwvzfVd8xbj4QFQVR+fEk20D5pMDp9Qm0IWJB5gzTz9PUMc+EpLnB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxCcYrL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxCcYrL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A580BC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731448553;
	bh=tYrwVdWKmQGvNuonBZMVmy2f5Agk5DLNv/CYMfIirnM=;
	h=To:Subject:From:Date:From;
	b=sxCcYrL5FShJJUBccR2WhBNgEecRcT9oc4BsZiT+FLbeCg9TMfxFqJmHl25uQS1QE
	 JYUT103g6WEAjNijlv74muYtXbflghySAGCQWSH9JyOHdHWGGxVbMd37XwbTWPu76Q
	 YOlVW0RsQo8eEzJg+HK7RBtUdP3lo3yOLizjWIU9h8urDj9yKxuZa05hZ/BYT7U+kS
	 zl/vxTzcefY/uCWSmqN3yg/ZeSI2Ots56C0NO2N753FRC5I+VlsC2E3EMuzL+WvcZv
	 uWxWGGpmJt0RLjVEofFjtMssHho+G6CMEdlf1xaFvV9Fp3futcde6cVG3aA6l2n/h6
	 wiV7AGIbg2Cww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95205D597AA
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173144855359.9000.17310052699406642455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91ec097cf3bfd8617691cc2e5f11db9d71233e923bf2aad4f9b3b3c5234cddd
Date: Tue, 12 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731448553
