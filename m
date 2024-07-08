Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467112E3EB
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720424783; cv=none; b=hJW3/T59xBjmAXOeNQ1t90ijrTblDkKkT9rw4dLpp537HoMsnxe/9pen9CO6DuV8Z2hJieDzqXNyHp/a7qnpXLHNmjIsWS8MIbIXI/KXXRhu2ObWxJG8FO4MiV2a2pQ4b5gAYPeufTqyvzMyOj/bRo1zfS63avvORQrGT+nXi4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720424783; c=relaxed/simple;
	bh=W1OgXgWERrLOK2xTx+PNCr9QOTbwYjzKjvrTQoe6Qxk=;
	h=To:Subject:From:Message-Id:Date; b=nYk1gf547pFj+hc1cDBy2QPA2WLVPIM2VZb+ZlHvvh6xk0ksAXuEPMue/OA1Ci7Hipr86z5p6KZqImQ6uqEe/mQU4LCpY9L1R4ylRVZ22wSTKwGZCXVcWQrSB/Vl/O05d1PJWM2tJJ6M8A2jCWYc2Br5cfNYslEFEYTCHmNeUxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWdOQlzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWdOQlzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CE8C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720424782;
	bh=W1OgXgWERrLOK2xTx+PNCr9QOTbwYjzKjvrTQoe6Qxk=;
	h=To:Subject:From:Date:From;
	b=rWdOQlzPvZrBTzGPPuSFkZ7LD/dYm3emlV4SjU3VX+rWLJualtgkArxY4CRi6zVKB
	 OkT8gmxWeiKnfMrMW4FtVncbCn0DxzFa3OAFEvtU1f3Blb25d71rJyTAEF0+JFuIE3
	 g02KvNtHbcZRhkE8Mssz06cim07vyXxFWWwI7O+/0Rw5p8B2cpBnzRZIP/SwPyItjc
	 TKUYeqbN1f4driHHdNX3gVp9P+bi2HhOPz6yfYMczuPnLvMlLntI8930k1pEMFN9ag
	 IBOwhK073yFaz1TrvQ8Qw60ERvxtk+vxuVAQfJEz3edYZTDX8zZ3kkySHyVGlDL3od
	 DBcwEeHMe2Row==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A4BC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042478280.14098.15110661813304830103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c67285d712a5a176b1b2998cadee0dda2001fe07f66b038c9635aaaf1ad19b1
Date: Mon, 08 Jul 2024 07:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720424782
