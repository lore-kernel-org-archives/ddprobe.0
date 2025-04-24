Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B711E5B6A
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745491794; cv=none; b=bLX+muFLpDoFEic2amPBycaMdZb0Yqfr+Jm0tXFheqzPVHrXNBpkrBD8rnBu+N3yp/tkrhiBJTQaFYEQ6zme/i1W6nPNwKBQ+kZGfXT7dWs+jJDSKQg9MGiZvzLVOyispmb1VqH9coziMPV0XzYM5tw++G6zQdmwKfUESSwLHio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745491794; c=relaxed/simple;
	bh=h6YcMYkAbPO1xWgmPpfPaRUvwgJbaiyZBDYSEx119GE=;
	h=To:Subject:From:Message-Id:Date; b=U1qkivCQ1JbDCh9TP23fmmrBqIHFQHkSuoIsQ6FbG3LgLivUDq/SUb3GxeBuVXBayHKfA8nIKEedGwrSmzfACXkdkLJA+8ii1hNHI/003UrjQRi/XAABbEoSb65a7pjzgb4ks6E8D8Xm/vpNjDlFczNqjB4PScJN2eKX5BoQVFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYpuBsfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYpuBsfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1522C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745491793;
	bh=h6YcMYkAbPO1xWgmPpfPaRUvwgJbaiyZBDYSEx119GE=;
	h=To:Subject:From:Date:From;
	b=sYpuBsfmW5u67Y/MzN+7sLwt7GpGiU+iPqhDhb+bFr8xV0TxBKtyUGLFi3RiZpJGd
	 RwIigRPJ3A58KuoPi2JVeTUC0KG7MhKNKJHt5e1IdYeX5XNB/wiXYyqGjLtHfc+rg+
	 wHPquSXRyt0ZXsip8hyRBkgjCQ2bAgj1pTriIHq9tFWcvI3YdjGFPx+TLCjGx95v81
	 LNmYmfXqMTnyw+FsHRx6rbre+Zvi05KmeraFVYh7ZKXH95w1vr6A2N2gLh5di7/hVF
	 KtZD7mI9mrWDhMIZU66oLaZjPjakzhpvf9mAzMs/RY+NLE1L18ZCS9a0ykXSmdJ2+F
	 QB/ldLHjvVCAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90938C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549179358.22648.15528069080914030352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9dfe230c8ccfbb2ae822258f9c4dc11df051141be0497f2f8e73c6e12262446
Date: Thu, 24 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745491793
