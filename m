Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2F62D879E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782440854; cv=none; b=tYjKY3/pc2/sMflJIqeRzMC46/AA1Q8X1ixSBQ+MuN/pcd1kC7TK3RnMELSlKr/eD50sny+2nbgf4/7x8lVgCaXqkk/jckYmkL6TwNWIHtt0X04hvBfFNerG0njjPoNDB4X/YzBSBdo51UQ5xC4bpSNAvilEqgyF+V8YYsCejW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782440854; c=relaxed/simple;
	bh=mvYwIJXL9YW0u0/aP2HbxJ2hDNEK3CwrcXuBAihkEjQ=;
	h=To:Subject:From:Message-Id:Date; b=nTQuqim1dVThoApTBVBiP+F+WKstD4ae4JXd1EaiNg92DxvPXZ4Lig0OvasYB7RruxLI0z7NtX3+7TyhbV+5UsV7g/nowO1+HuUUL5efO3NADaxTL50Q72h6uPrB2dUhQS6Fsfrp09vG75z6j0NUn0opEGQJlkfbC16gLizM0hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGiFOWCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGiFOWCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A93C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782440853;
	bh=mvYwIJXL9YW0u0/aP2HbxJ2hDNEK3CwrcXuBAihkEjQ=;
	h=To:Subject:From:Date:From;
	b=mGiFOWCAZY9Cglh2t/q36SA8EqWc4/HE3HNX+q0xULd7MNO2BEzbm0uZW+R3hbwOT
	 aA4xg/yXi3AbyCEfFYoqTWK8dC9NXXFwj2wUrdIGT+ADN3RsjDaV0tW2Oa9jOnfusz
	 dvkPoucHQZqaryUugL6QxjN4IXJrAAjDbeElJEouLghaJH9bc9xOvPDI03WxLFQUlJ
	 d+FdhG03ToyCiEMktCLcw9Gxzhz4ZXi7+Coe6PlYeqRYCwnpJmeqh9AJ9G/rEKYXRP
	 JzupqsPVUn1mqviSKiGRhRXuNaR81B1IPdHJLVX4gLd8KfRmm8I10ssL5CGdVSbTcE
	 D22I9ANp74fJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BD9CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244085368.29090.12727323904626661008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134de2609ce9241daa5d358546fd38ab4e7f0f87a30c88f89be5e3ae84959472
Date: Fri, 26 Jun 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782440853
