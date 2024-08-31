Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1488475
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725078954; cv=none; b=mB0VAQlhHShF9wMGjvhiTq6rSsscvsftVE2mWbfwCIOONuNxDHZBYkHpGo5wpJ3w1CqLigqPEDFYoEZWnyw0P8fmsDPLgHs7b/acjp44VqUYuWs3CxArZFM1RA/tnXqMR3agknib5+2g+D249Z1AlwH8Y4tkATggeQv1NPUxdmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725078954; c=relaxed/simple;
	bh=J4j3qkxLrkP9tr32yYqh32iC2zKaDSIrSpACtBG3Koo=;
	h=To:Subject:From:Message-Id:Date; b=PbObqJLv3oIu/kSHpnFKrR6r2kkidV2lAj8zJRejvVe8bpY3gJymht3sdWUKDFHIB1XN7yIJ2luMcOQMIF2hH8hthWF9zp+5OCd/EwYjCNMxSBh7Kl/Z2BfVVETiMdtnS/T1E8pIy6WHw2XvaJan5IQcYd7I/mpC8d1usB5LRRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoLF6f7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoLF6f7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4C9C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725078953;
	bh=J4j3qkxLrkP9tr32yYqh32iC2zKaDSIrSpACtBG3Koo=;
	h=To:Subject:From:Date:From;
	b=SoLF6f7Y5xtT47XeHAt+NjWv8aE2dFPFnJXN346frJg61VVT4ciKBNWF+QngYlsZ+
	 Yx46hBfuSjEfgbjf8hBW2Xplmc9FKOS7ipsc7oycewx65WTfpsnaVB9O92/RfnsbQX
	 JGoKV9GIv0ONcIoLwJkPS6Lzo+O+1RcWgm/EYHgfDlK5/WkVCe2Mb/IqQV6mRDtZmH
	 z5fyqHtGuNbMgVruZDWnQjmySb2k+xovB2rBKM3qugh+yWuIoIspkkBwj98GGay7+B
	 TzdcRsMDjOv2AHCYjpdELvUOmiCXzHmtoScDD8bRouiglD65EV+UXTYl0LCRaRoyZa
	 kA9SH6r0cV1kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97366CD1293
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172507895358.17408.11242450410743626704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af69426b9b0c021e5cadb1dbed0058c9955fa1fa897c9b587e780f91fc8f616d
Date: Sat, 31 Aug 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725078953
