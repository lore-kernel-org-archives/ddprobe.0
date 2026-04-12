Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9591A6838
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775952454; cv=none; b=lJ55rT3nCcvR5gbsop0fWsOyylLjYpE9HwdIgGVCXgDSA8x3aUC+HHIQz2wiasWiD5kXuglju0CL1v+MovmblB/Mx2/9BlskdgNxs3b2lZOAOIDAs7Uyp8AMLSIrpeUPHkRQ7QUVZJCngQ3zEsPkn6ZXLzruOXHndNkwf8tYVqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775952454; c=relaxed/simple;
	bh=dlOZZ7JcKtMg8WPZWXALpzQcnh8sxMuqboC5p8tYC20=;
	h=To:Subject:From:Message-Id:Date; b=IdgNqToW9v2z+E3gjFmfztQUhEwO7bNve1Ja7PrQt0sFZeqilY7aztJ2rhMVdaHprRltbVsR+78/3W7YU+Zb34CTwRziO4daUhja190V46Bo/z//2Ji8NBcrqUjoWN8/aBvXWflrv1qvNmmQHQ2uN5F4tsM/zILC/1WFYJlyA2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kS3Ex+S0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kS3Ex+S0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F79C116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775952453;
	bh=dlOZZ7JcKtMg8WPZWXALpzQcnh8sxMuqboC5p8tYC20=;
	h=To:Subject:From:Date:From;
	b=kS3Ex+S0JKFdbMD5YWW84w8H7M7Tn6OyQi+4YsrQdICh2sEFpD8fnYe5scgnj2rUh
	 oFlnyvKeTPcUUzU2CkeJezrC54kq+GNfTdDYc69CA670JtP2fDjijr5bZbT8KRBnjO
	 3fAEWwAzeGmfmsFmzTuJ/pti86fc6lqtCrmQKsHpoduUDKiIvqlXLKrdK7eDODYvQY
	 8nZ52ZCRgGPKiNTGjZY4YeB8QFn1emVOPrpggcTYEtJv6hQoK2jgy0YoNIhdxoaMuz
	 VjPaCPNYlvXz8c9liX1pONC9dV2LbCKrjHLlF1XYY6Jvhkv0qI0NE371fPfaIiAXwp
	 nnuWjXylxtznQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0449F3ED67
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595245368.7853.11402810752357235941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d65728d8907d5391627ee33da5efc5afd456b65d15a1da5ba3e13c92a7e7b1
Date: Sun, 12 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775952453
