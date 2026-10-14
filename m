Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92E173F20F0
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791994234; cv=none; b=HxAqR1prh6JXLebVVAmHn34hvxeNmgtKn+1HDPl3r5AlWRZdg7rPTtkKfHKL36aSnBT5Hk3R/JFdCOVlPr27rCvC+YlY0bqeOAXShLOgurH/YiPOpLA+mw9fGDBtPiP7IMKFJTzZvHOntRLsW5LWvK/EhFyvo46Zhc9C+8eE3CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791994234; c=relaxed/simple;
	bh=d+xdWFU0oMtjqQNkrTyqvMfOdvYbOuoeCmbjlzxvrFw=;
	h=To:Subject:From:Message-Id:Date; b=F9hxqFtwPUBDma0V2357U1lx294CIKIWneIwfKABxoRmbklI6WTlVMX2ZwUio7XfNnTR7VLII762satSpSdwRDLlcpPFVcneR/OHD8yYFOywEyRm5Gic0T3Vl13DjucxYjVCZvXmeUToWT4g5ppVYPL2IdENdKbs6nmlMSBVyuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+uNxSdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+uNxSdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D32C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791994233;
	bh=d+xdWFU0oMtjqQNkrTyqvMfOdvYbOuoeCmbjlzxvrFw=;
	h=To:Subject:From:Date:From;
	b=g+uNxSdQnvlQHxGC7Xye+qxBzp61NAXyM7PFJfvk5xO366T13qdq6rVEVGx7nW0An
	 +sNbIfde+rZnMA4pOF6zIB6Dn7CsDXHHD26aktGboPm7PIkP1gAgVO3Z0voR5XN22Q
	 2yhPkPyORCxlQ7fDFbAjkaLi0amUcYgBN9Kf7V6jb1+PQqPnbfpjSc6+qt6NJtqG6R
	 04HaaKw3Dwfn2HwBVbvt+pVByrd0XwGxi8EIH+PPqowQitKliBaZnGMnziRMqNWQIi
	 YMrOIzrrgXfk3f0IItIfS3RNGXiag+RREun/EyamN/7OUuXEvmECE/r3W1nMmFstDU
	 1KO3YXv50K0Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1736CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199423369.11503.437735622406360051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f1aad747b4b6b08b73c7229ac3b898469a9244af2341329c97b1b98ea8feba
Date: Wed, 14 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791994233
