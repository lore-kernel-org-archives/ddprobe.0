Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417C840D585
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782692914; cv=none; b=D/vqAZBcs77AgcBGaALoJtHovbcDZPAYaEPTgW+jAPqQZq8HvVDYp7PqlADCTYXSrdBvcvZH+9rBzdS9+miuAZDFgBiGxRI6VTjfGz4NyCw3pumaT+g3yIK/atZ19Z80pw1x/mVYDJSys1Qt5QmmwapdK1FmfbGIuVPEm6Df1Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782692914; c=relaxed/simple;
	bh=gjhbgp/WfWzMvU06SpDtxnEWb8Ufxo+lk3gLV3iY8SE=;
	h=To:Subject:From:Message-Id:Date; b=RlwVZjJ024uaxccp1caO1dMxizEErebtpud1lwVFx1x/SWYwxwtOOojSVzVw2OQxBGbpeLcu79gNuPV4oH9HYF22FAoMrdKgiF+C475eYGZBZmLy/VbkLmlryA6NLUkdcP1q0AduZ6yfGer+5QmnFu0vUnsak1D7CdpORGAri74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tw4RDO7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw4RDO7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8019C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782692913;
	bh=gjhbgp/WfWzMvU06SpDtxnEWb8Ufxo+lk3gLV3iY8SE=;
	h=To:Subject:From:Date:From;
	b=Tw4RDO7pHBHOTSAWRnH1QAVooIUw3IT6C0lV4E03FnZpAb9sfNuNGTwhWbslR0UTE
	 oR0sOZUTO12aHhLEOxihR2v+hd+KoMsKEPt+G+yocLDwMoiNN1tsB44K6zCXHp8uqv
	 tj2hpNV52KwzYc4pAaptMDyTznxUBcpj+yPSn061qXDLI1zY8WvO31eKRUwd0/Wpte
	 AGXcaguWUiVHbGxPuGnOl4Ta7k+pUoWsDLxYs54YBeGaEktR0hGSEBQQtHqQaweRsd
	 u7yyD5vLsE/XBZRwqXveTPI6vsUG7tuHlr7NdpGkwPXnE4JnpVZVeBdd2il4B+Yg0O
	 KU33nHWcozv5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFDBC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269291368.21340.15386045803566104101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5102517d9b552b2a39224c0a5c4f416c7b13ed32d45448db8f7ddc1ad36640cd
Date: Mon, 29 Jun 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782692913
