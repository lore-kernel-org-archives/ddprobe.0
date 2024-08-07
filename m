Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119911E6735
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723034154; cv=none; b=XBkZER33k8P1wfABV1xXOh/YaVlmhugxK7J7BnzhgNhHJM70vN5QuXpzsv0Isk+TlMsS0WVxRRvrJ65gviKTyVwCBZV5Ij6gnXSeANYIOcrN05pYilWPw3DSz2ncVmVDH4zMDuDid4dq8icqaj/9bp2fLiKWJdtAM5dphjO+3T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723034154; c=relaxed/simple;
	bh=jUpGnarP3Xjj7I5fH4/TP/oyjlNn5SkRhpXWzDUofZQ=;
	h=To:Subject:From:Message-Id:Date; b=FLBbIQnPShGEXvqYztnUsDrc9gDkNFHDvTVEr24KFVj3LU5o3cGh1KWI2D1K2hW0HLIPXN4faJTeKm9sQUlxPDynO6Cjf8cpiamicUC4zxSoQa4pKKukrhwB/KDXdCHpKEmitPglwjjdeM3nZS/wQtedSk0okstjqeJvRLce32o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHYJ2/TI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHYJ2/TI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC543C4AF0E
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723034153;
	bh=jUpGnarP3Xjj7I5fH4/TP/oyjlNn5SkRhpXWzDUofZQ=;
	h=To:Subject:From:Date:From;
	b=XHYJ2/TIFKy9iRzDgqKHwiH4WCNtdOyDiJBw4g7n2lwpX4GvwWHDoW+h5sKMrspmn
	 HRCYvjNzVwpQfzRy9MtFOzCLqhSzpZ1RlWKQn6hK8vR/5qLzteG3pfUfiPNkSPdNVx
	 FebjNOr2tGEe9cZvAF20NJCwt+z0pdKIAigB5O1Xr99Nc/wFJMMV4ptoh+VKBUCA/U
	 D0vBExg97/0b9fiolzTeCqpbFYVEheZ4GMFejtLp98Z7IL7eYcJosbVN5rwI3/rTZy
	 oiaLLn+H4+IDkyhRltP+jtiDkFlGT4zKwTJoJPKc06FDnVUK1Z1HxkZzOk/3AxS+3F
	 IV5R4IUmSrO2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A72C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172303415359.15622.15420041126984721736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f733bd7072339a96ee13226eba0704c8fe82a25a56c6d4a98a8cf871ad74029
Date: Wed, 07 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723034153
