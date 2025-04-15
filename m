Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE0D29A3F8
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744756794; cv=none; b=SGkRbdqVMfr2md44hzgWoRhy3ebA29emnYkHblh7BuFq+I309RzLDFFjiYuBhW745ULUQ28b/BnvWyHy1ruLzoPNLGbuQkFiVlHIp+182lbRs+0Wg5ct6ju+XrPLZrt8ueZhk88SyBYpqwQyPuaa1Z/QRxpGO9DUvfOEdxodzew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744756794; c=relaxed/simple;
	bh=lpuqTsvl9TFVRzOL7E+amrBqzOUsdknpgj3rSPHNcjw=;
	h=To:Subject:From:Message-Id:Date; b=AKGP8ZdsMaQ01txMtSJDDu+laeUO33E3+3O/E3mNZFMftlJRmpEa/SwgDXk5ETdkBXeJQ7fjT8fRjOnkqdRsSDKMrjpsrApo6inkdK++CgGFgHfJWzkGiIJWKTHPoMDaeWWGorkNbeLSGkmwY/10q4OhyDurngGa/VGLGXeKl44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWpuXx1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWpuXx1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56E7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744756793;
	bh=lpuqTsvl9TFVRzOL7E+amrBqzOUsdknpgj3rSPHNcjw=;
	h=To:Subject:From:Date:From;
	b=EWpuXx1cUwES4lBS5WUSMw7mABNzQYsfigReCjWhZ5u498MJNBZnGyYAIZEZGH07L
	 WP2HQTApmbA6VTMfBBdzSA3xrwTxJiPU/R9fUyRFPnKgESUjfvCtHlC53KNfS5gbJi
	 tLGvZdXdjIf+ZHBHpHNOKa0Obq5fEafMYLLJlfAZE7mJArbBhUH27iwxCSJW17IQY1
	 pOTM49haonNlAbVUU2pn9iY38ZNI4V6pJYBLVv+cJ8Unc02zJa/holIkM7/QBi0DoL
	 5k2Efxz/M8GaUnXP2pNkyWsPhDLwUAbSVRAJMAkIIqupNfR6crDZJDcBy9mE8+hkNp
	 Wk9B/sp3w5RBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD0EC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475679361.8732.4922050268668344076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12da02e6ce4e464aa225d419fa8853b0cdb8778db43652249b8af5f9b4088449
Date: Tue, 15 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744756793
