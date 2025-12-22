Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A123101C5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766436834; cv=none; b=k1lFAC+9QOwN/rzVBllcr7N/EefTRWbTfwIGHPKGkwNzAT9n9IK4KWKNfYElp+iTV8aUM0d/nnK8AtUM7DuTWoCSA02kIyTeYKy9w8msRqquolwkh1SbU3/FyhlaQbLCSdV485ytPhWL6qIFVPvoKeW6ZcYRo2NSerKs0v2ObJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766436834; c=relaxed/simple;
	bh=kG1ABKNsM6eeXrPYjQrY8bgRcthMlipuNpR03A4Lxeo=;
	h=To:Subject:From:Message-Id:Date; b=Zc/QFe6l+KeYCFSzLFkQaJHZ7mO1FCYzW2eZk+EggHpTtvxM5S86hmgk6kuYo1PAHHkLYv/P3aj6giJR4ofgYa+9Ns+G4uI/pU4Hk1iFcoys928MB5Fn+vtEIMRjhiNI7W/ipiz31MvjOTbtTXX/xyEaGmrQ5PcXBMO+FQuyduM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I97IqPEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I97IqPEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A059BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766436833;
	bh=kG1ABKNsM6eeXrPYjQrY8bgRcthMlipuNpR03A4Lxeo=;
	h=To:Subject:From:Date:From;
	b=I97IqPEI8ccHK0/9abx3mCBe8zR8pcTDmcsnlPwZXz2PrFawxp89+4s7opgcC8uXE
	 2SgixFVqtHNdXKxk14gXlx+W1lYJEfkUWmcFZAA6CXrBrzpXmbLM3DtucKmcaU3Jxv
	 KBuSninyediXcWT+9ZzokBkxjwziWcBZat0b75c2kBuFLj9+t4j9fFxmi48EzAXdJe
	 OlWkCsfV+mOUXFGiwmbct7Db2faoCCZNPNQKlH+ArvbJHK7cbo1FOyta1qak+cUtXx
	 Rk+fxqJmBtqB/N4wP7jJVPg0+EgmFEtlF+EvBSuQx6A9PPJTiB9G9z9nxl0FQfLxrF
	 rHb0mgWNuOm9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9261FE6ADF9
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643683357.11512.14571565871174507346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10169e0e2471c7d36bf4e98dc441a3171878a88152c0e64b2fb7a1bfcfc59779
Date: Mon, 22 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766436833
