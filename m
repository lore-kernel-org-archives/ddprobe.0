Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FAE26AAAB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773503694; cv=none; b=dbTjVP/rqOtfEniFb4grfvlv2VMraY4mzcATVconEoqu01qa6fVGsbidu3/CSuem3+mPr3BRFSdj88v7uZbR3FftmKMBxRrpDurKPpl2EfiOpfbgn0ADRRZZ1hZ3l46DcNG8WYcMij62qrVLrxorNKSmyJhmgb57DQUKgnBn3lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773503694; c=relaxed/simple;
	bh=ROwKMtLmOOda6lnHdODJkAxspbR+2OOk3N5E+fVMIS8=;
	h=To:Subject:From:Message-Id:Date; b=O96t/fndn0ja4AvHQCMdAfE3bKXap4I4vIaEfis30Lmovs779AWXJPZFjPBQtD2Bty+Gvhb9VeDN8N9lbP2Ui4ZJjK+eT07Z+wqn/GSUJbAy7+96Ko8rZz8xuF3wVNz1K/gKp9F5tCQihgoASt3+L0k1sHCfS6jpTD/EK5SusGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJQm81kp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJQm81kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EFFC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773503693;
	bh=ROwKMtLmOOda6lnHdODJkAxspbR+2OOk3N5E+fVMIS8=;
	h=To:Subject:From:Date:From;
	b=tJQm81kpb4Y/I7cx55Zbbts8rZlEtPTjv7/oXnhOcF3Zuo2CkjqBA3tPH9pA8rO0/
	 NBE/YxbQ+CgyCQdcrO2iw8ZhfGWQJq+lyjsb+QaDeuWXo5mXkaLpcyGvZeyxMVSt82
	 kjezqScFdilO3zAGXoFBFhucqI0D5RhS/+9TZciW8J9v8DwjOCkqMT7EVwGFp2/IZL
	 FSlgI5mCgGj6vqTudfMG3RBAdKdLTuyLPU7AJjoORCcmEAseAraTGNHuXgk/ytLJl9
	 Ldmw2LcJtuyHDniiksADL8UFOsTfbkGGGqUFjdlpGijU36d3xzJOcwLef2MRccVDJ1
	 T6OW7H0HZIYZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A8A10706E4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350369357.15557.13232750482593133317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef17a883b98b6b67c03fe85cabe728954a6024b315523046739c20b15fe8885d
Date: Sat, 14 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773503693
