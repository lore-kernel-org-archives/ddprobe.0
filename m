Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E097260F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777826254; cv=none; b=feyeN2cQA1eWakhQqYhnJ8VWCymrJdaHE1ISHI4bJfR+/SFmEDd5FhsuK/YEI5aeACtgv6PWxge7CHRweWgBNXLZZjEkvQVCP2Z86ABKa82oQm0MsBBhXpl9YWtMMYB3MTRHb3GvKITkbiR+3ytfPLDYmKl8Ix42f76HbBUQXfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777826254; c=relaxed/simple;
	bh=XlcxSVm5bnWPfm5KyqcJdojDKv+q1wqtldytERfkmBg=;
	h=To:Subject:From:Message-Id:Date; b=PVTa5bCLAeYpyCuz1Ya/smxMd04nyOFyjzTU/bjagCh4iPFyW9qlidzeJDf9skGL4mFglDfRtX3k/Rlh03JB7C/FwaWm5MDDbf0G0kz0uZsiPE0OLQXZBB3atbvy4Z78YDctizLe8jYEx5ej9FqIkNdZUnf2SlzOKx6wuE81OCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TW03kdCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TW03kdCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC65AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777826253;
	bh=XlcxSVm5bnWPfm5KyqcJdojDKv+q1wqtldytERfkmBg=;
	h=To:Subject:From:Date:From;
	b=TW03kdCt2ui0WubnyYBubXK82tKhkaeb71MpExzgvzGa0QiMhfj7wIBpOV3Lz79jC
	 fB4yw2VRnVKBq1iXBPLDcmrCrUnlX2Tc0re5sC66ljZ+dg+A3ZtCAbO36hb/5rnb8J
	 ILVcelH9kkb7vgMPlRzD72yeUv54bfBc99DYyzFZSegUBCbINLX31kMCiEsliJd5c1
	 y/fb2+UhXySmPNwuQaVo0xqNtNF9XhxaQCvM1HdN1e4g88S4AxRzAxxA9B/XMIs947
	 P1XX4bUFUA/SmbT9TYKU4jlaKM5y81vRqWLyYWkZOzZM947c9+THF28eGVaNcpxhvk
	 O8tP8VN78JBjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB315FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782625369.21393.18126205373654770798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23b75b0c59a325b5640631ea9a6235fa7a7ddd8f45dd09f80f851622356d5a6
Date: Sun, 03 May 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777826253
