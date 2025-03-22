Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC161D63D5
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742633994; cv=none; b=rV5i8qsg7EolXeWflOZ79aNE+J4acCMoQcvmygCwH1KsrncG+cM73/te277WEcEsm3UVGRzv2LjDjphCowrjVU1wEuApufTRdVIdugG+0HF01WNIl+/p/5WVtMU7yRP6krN+V/jOXEOpTMWpcMdXTDzltM3wHD3w2YWZjJSQdWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742633994; c=relaxed/simple;
	bh=AfAYZkkW2vQSbLP3LNmgn1ofc9GhNCeEkyKugvH4Q4o=;
	h=To:Subject:From:Message-Id:Date; b=eJrWc0J6vrdJ1ciS1/PPnRqlP08rttX915Wc6pod77pTpFIJF/0RONPu4u28SNnBUS0M4Vctn6Z6hnDueOh4YoBEyuDSPdggXx6Wm4+wSd8nUNIkkuvnQV6lrRXJucQ9QD1HdWkfaOuNsNdMawyLlU6yS/+bd6L0F2CY8uhlPbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKhTCQ5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKhTCQ5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF333C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742633993;
	bh=AfAYZkkW2vQSbLP3LNmgn1ofc9GhNCeEkyKugvH4Q4o=;
	h=To:Subject:From:Date:From;
	b=CKhTCQ5/QaXOgI/TyERPGf41i8flIcCreBgH4sfsPM4xQhzl4LjWhCt17D3VtUwBN
	 v4oW3lEtfOepRbrNxwl7vQnO75bng2IkYpO4S49xcL4uxAqEHgAhimGQK/8gib0bax
	 qrFdmyglwDOBQ2+Pj6amtcTQs+JKT4HtjxaLvTY0QswOWI68yiOhAgKU80SjXAAfba
	 GBdYNbb2BTFojBPR7/aocoWCykPoobKzI43e9e/pQuvCQjFtInLGhAWkNcprubdioH
	 iC2usF3jWZr5bPCBzNdhe+YB9sTL/Ctjwyq95qLPTSL7miOiNFBqdb+Ejgc2S21qOQ
	 ZH5x5MaDhPXlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97358C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263399360.17770.12731631533178815385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d480acaa58fa7eca35fbe82b470bf62e76580fee9250cbcbdeb92422189a09de
Date: Sat, 22 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742633993
