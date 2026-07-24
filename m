Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC9C47DF8D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784937034; cv=none; b=o/SgvAxws4xmEc9X1JAPMSvIc2Xl2k96hXQj83/g39WquMGGzbTb9zgy2nUa6TR+em1a6f8gCDi78/JXMK+UiTs0ha8mgxCNnmoSWWfEYiDcsjSFOH3wJWbFkYlCbW4kFyiHfqs9izmOPtIsM6poF11bS5cntgWqR6UNB7qERlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784937034; c=relaxed/simple;
	bh=Sg7Nhah6gwlwaloHXPBuNVCOHrUfOc4wdCZMuESWPr8=;
	h=To:Subject:From:Message-Id:Date; b=HEgSJUs0wbkWeTvaWc/03htVH0QQaSJyK8RyDsbfMe9hjaw5ROfdGikTeOl3tP/mCHuxnRhz5BQk5JfiABV9DFlM78f2kUdVtwQqgNeVUSTZ+VcAo2k7fjtfRYA4LZRNTG/NRVns7Ach16WulPQ9hvcdsAdc1EWsEi7mPYHCmBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoS3R/GG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoS3R/GG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E3CC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784937033;
	bh=Sg7Nhah6gwlwaloHXPBuNVCOHrUfOc4wdCZMuESWPr8=;
	h=To:Subject:From:Date:From;
	b=SoS3R/GG86ewsYsxL3/TKUb93mvfQA3PzOe1pw9qj+mRg5U61nV0rTzOXjyulYtL8
	 m37fy3pVv4SCN/b+jDHxxbMcyg+VxlYINBeanleDGC2yNZqdcQwEPnLyCOWO9/e1ba
	 01dVeiM7D7FKNcdNIGTtm7E4ouDweb4Ax+TNK1mEbcCS2lGvxBQJTNiLbOXXgt0Uwf
	 8S0iRLE79t0QPXncjpF+88dtxTkuEYI1JGtjLDPqtjWD8aiVC4g5VelQkkiRDvFVvX
	 5RYaLWt/Sb/TFPSDXWw7+GMSifp5idoNm7gO//KfDSOQeMeiY9kFX9oQpzouMzrNjQ
	 8I0+gJxG9Y1EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE61DC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493703368.24959.12230232152475916711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317658120cf843465b758908137b13fb86ebfff62f0f1c8be848d291b38d8cc2
Date: Fri, 24 Jul 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784937033
