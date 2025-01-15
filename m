Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D23232440
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 05:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736917554; cv=none; b=PSPQcect+j9Xqi11fUzmpK9Vn0xlHM+uz+HRbfB8Eqw52OtRBWj4C3wc+Egb2ZI/FHzzKyg1JCtXsVs0j/v0FstrAr/3xdL4gV++l3wHZZ3fcTUqVQk/u5tYkG1IMKewEmNwoAC3JfIEbqGZgty56Ue4JiQUwmOYYVokxhsEjcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736917554; c=relaxed/simple;
	bh=cOvrccHMrzH6hI0zk6XZHNXoO/At6JpjNQEqjTAP7Y8=;
	h=To:Subject:From:Message-Id:Date; b=OlTqr/gJln1X2gu27QWeCFcXe08jJAi73xKKP4DgAx7fot/xl01YNfLwBLrWVGFB5/SYT5T/fHL4mSZzn3u9tS13JcM1GGwvulgVvuAeV9SsDyE1KNlWrSvZ/t1POwZMUp8GccvDhuxyOWDsEcMPql/y2OJvhmZRqpjCCInhLzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6b+XMQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6b+XMQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB85C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736917553;
	bh=cOvrccHMrzH6hI0zk6XZHNXoO/At6JpjNQEqjTAP7Y8=;
	h=To:Subject:From:Date:From;
	b=h6b+XMQU3OBpyN2GMfGdLiirgTOSKtKM57nSq0RVmNI24QpVyOANBIOFIr6cBLv4J
	 mHCki6E+UxNMcSJbMlt1BXXUWYhDuUdPH680D02yek7uYlQanI7LTPgM5hoSmId/z8
	 BsFoTJ6YRbWcgqm23/8/enlVFHXOvOyiBhGbJCsF+zrS0gqHsFT2G8wbeAPPWVANdk
	 j32KiOSPVxsSp6qdsm4MmAvxgwOIshCuG2ilGYZjF1tqHgZf303OaKTBIMycQ9r2Ap
	 vu9TOyhufExh0CwIzrBAdPqD5I4J0ATNZ17ShUrrhV5h0Fi75+NWPsPjyrFIHYh++D
	 Dph+XL/yz7vYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B668EC02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173691755364.12498.13351394752853132470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56e04cffea2b1f565902de7ceee4a97dcac08f0562147997f5e893a9ed9f9d3
Date: Wed, 15 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736917553
