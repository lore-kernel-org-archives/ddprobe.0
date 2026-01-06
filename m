Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224BA3A1E63
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767678234; cv=none; b=TLgzni8Vyq/ld3g1ifwTx2JjQdAmJ41s/2oOSmaD4m0f0AnYBwJwOzJZz5ipECIA+93RbEmSRvw9fkUoyWzUQG6TOgdJvFCPHOuF8T2+LCMHJUKUK12z+Q4NRsgGRTZ/CmHJnigSnxedB56kfxSy+sakH5+xBEH9ajfCp93z7MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767678234; c=relaxed/simple;
	bh=AL1grf5v11np51zUO76UDAjegTglN4x9KSQvPxlwzRM=;
	h=To:Subject:From:Message-Id:Date; b=b98oLkkI42tRjTUt412CpY2HgXkRcw3R2VXA+v2Xm96ZmTl3T0Cd+5k4EWEFGizhFWn+fueXbo3CwLUVqSXPTI9iXeHNGSeZqb4WCfjVHjsKtGWun36FFcV2fzBAbRxCu/kPUtsZY6Q2a80N1SzLzox/M1B7C20WwgqxevO67qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlVEQYRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlVEQYRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FEAC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767678233;
	bh=AL1grf5v11np51zUO76UDAjegTglN4x9KSQvPxlwzRM=;
	h=To:Subject:From:Date:From;
	b=RlVEQYRfB4NU9OwJOr1pca0nKBMhCL1B1AYhjIrwdf1yuj4Seq689fyF+DzZt5u0A
	 uKBufsEOFyNfiTvFe0XlK/Wng+MA3Gjzp1o95lBz8xQsROO8FZLECiQz2kM1VdJqSp
	 4SaD/V/FpjQBql/f/tO7emywcCWhHLA9JGchmXG9AKq8AMTbSN+BkayVKEsVGcOdJf
	 pDbowftmNQwRogsnCm4lFEjKLZlggXXe5UDGbdeM5UJt3QQu1aI99jSYGQP19uzqU+
	 u+0zNKf5+P4ld654Md9Yo4ejNaAkDBnCY31y8sQNC/lReeIjgw4vDgCHc/NRkTlOMl
	 m7lFsWd/aRbag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A5CCD0421
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767823358.3072.16158977909059585569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77dec9713f0289a9381f76e7f4a61aae06059d53dab63e0346c0964db76ae4b0
Date: Tue, 06 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767678233
