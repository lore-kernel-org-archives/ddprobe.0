Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2392F10E5
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750474194; cv=none; b=T1RLLAJsbEhoB3j3wi0Nae3rb2YXfiq5uraikda87gzWGV7+X3ZrXg+ckWqRyLR+09WOWmkE8LUVKfYlnTv73fJo1F1CjkTMm1pt4bX320p20HWm06MHiLLE/A0MH29fNjNIuz6jpz4Wsjb2O5Xgpo44HGduC+eczeiZ50mSZIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750474194; c=relaxed/simple;
	bh=C4UxLvscCbtuW1H7JuTBIxQKQEH9/ZCQiAIOPmBOwBY=;
	h=To:Subject:From:Message-Id:Date; b=qhCYUgu0mJsYwqnbxSzR7NjaQNXQ8+Mnx98xeDJmQkb1/AztijH4zTaodW4qf/W7ImSqDx2t2gILtvJfOKfiAXRtnBBpzMu34HoM2ajawMCS189ZLUZIyJAah1ve08rGXPHrku6sYKu/WSndA/YGFku2VIRAQqCCIcBcvGyVVh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEr+sooe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEr+sooe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DCEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750474193;
	bh=C4UxLvscCbtuW1H7JuTBIxQKQEH9/ZCQiAIOPmBOwBY=;
	h=To:Subject:From:Date:From;
	b=QEr+sooeNcFSNDR1Rddh5R2jIRDVe4H2mqS7lVuEQqPyuaappL3MVaJ4UCBkcK2x2
	 Lm0wWSTpQp/ZxtuGp9ZHdw3qjtR7EHK+uhToXiyOJPo9txXMHtoxv5jy2YMinMQ5jZ
	 /2qrXD4N3av+mQ5sUQcFA+otCavKWiuSOOLUNRZ8j+JBmEc2lwhgWTKkqvwCulW7Ik
	 SmOkn24cMtLe5yFS0nuXG4e0S+h+mvnL11ks+UKALT3Z3X4GzXfl3oFbqPl+LyR5Zk
	 aWPRlX8QDCJR8RDuGek7WhcCR2lMkKfhM/o7eAsIUDPohXcj7fNRN582HVE6+zZ2Yd
	 NF11e0Vez4ItQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948AEC7115B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047419357.11505.11396351486538234045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b8e2d33acc899ab697b6424cbeabc7f84ae958db2cd156d958f58c3ea882a7
Date: Sat, 21 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750474193
