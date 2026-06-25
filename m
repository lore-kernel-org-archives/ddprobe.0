Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF172EEE6C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782364654; cv=none; b=IUrphVcnMpZamtgopK5c4c15WHJDK1An6bXXf5Y7N82Ikvvx2KHNlMJ9Ek962YD3M8I4nEJDcrSKoAEar7J8lthQj2ruwtEBnHRp1T6m95VVuYkVyuxq6EEs67Z9f8sQCX5DTg1fy83STaKL3+uH7JesZwMgyjd/eclEYHW7sSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782364654; c=relaxed/simple;
	bh=INZ5BhGLYLqR5xiajD1PWyKPHgbpsskrx2UbjI4gE48=;
	h=To:Subject:From:Message-Id:Date; b=mktqhbcGPGm8hd6XYOt9TGPLhTNx//vBYcNI/sH1mRLxt7r3pwQjEFpDT6Mj98kjcXwue2xQzyoxJCN+/Rq4I2I6tBHXcVl/GPrUFBToTDaPKf9d31i2zLs6DpvWZcIhr0VutbclaIMdMNrU/eh7a4ksVi0Zq9kv/jWc4Lq+npQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSzGKli5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSzGKli5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E0AC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782364653;
	bh=INZ5BhGLYLqR5xiajD1PWyKPHgbpsskrx2UbjI4gE48=;
	h=To:Subject:From:Date:From;
	b=jSzGKli5kSSNX9BqkLI3bo7HreFVQouKmpKSGkGO+c7FDWrfdrWLZGI2ZcuG7uiiP
	 ILiXuicvqFCXxFP63B94iSPPDzMjTE5py7moaKxP3FSD9FEgEhbI9O5thKdVAQZrcP
	 ekRgNnd92DRxzQj+h3mjnxWt8gihgUOJjo2Q/eeLxHTRaEeS6zw0PmpikcQdvsypx/
	 vt+fHaiYOJPSlgpVyKOTxIevsJes8xFksO9l0Jjxet0moqMyzGFJBsutZ9b2FGMqls
	 cAz5oPrWWYf16cgWmMql123F1Vr6N1+VJyO2iwE4IIx94PFWQ5CyGP7H9LkwnlY4B9
	 Wul1M8Wsi0ijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B082CCDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236465368.19879.1184110894574094381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b97c15a167d86e1e870ba0ad51c158e2efebab70eefbb58e0b3bf6812fca39
Date: Thu, 25 Jun 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782364653
