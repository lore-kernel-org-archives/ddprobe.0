Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044E61DED49
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760023794; cv=none; b=WaoMsmGnNXDYV925RVpyu/HL/6rOXGUfQ+K21s3K24A49gAP4eKSg61Fmo98nKdmoaz6u/NlgGGKFm7l13q7JFDHGJggLQtWuP9jRY5rsjdoSUuoOSvTIe86JS+NGHF1GMpMx7NPiAUeO64N7Qv3kYWyC2+jdlvOfKGMWAOl/BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760023794; c=relaxed/simple;
	bh=hLRS/eOSSL93RsklUA7HHS/TqHCcq0Y5QHv2fvMiplo=;
	h=To:Subject:From:Message-Id:Date; b=Q25bidCj0yD3943YhdBtw5hCj+5zm7X0EGgSzx9d6jeyOokfju5R0DaiwzrB9RE6cUe3fSPExl5cdcwSpaeb7h5i1ECpR2agNDOIgNijLKGAPREqf+Q77l7wGfeUYu7327BDwfUlIeE5Pfcf17IRlcpbwSMDbm6Z6k/kFPkc3s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoY08dKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoY08dKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22DAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760023793;
	bh=hLRS/eOSSL93RsklUA7HHS/TqHCcq0Y5QHv2fvMiplo=;
	h=To:Subject:From:Date:From;
	b=ZoY08dKV3fgHP+XdEEy3MO5xJ2yEVPswxcytExW/pCvC9R8TY2hm+RobciqjExYBN
	 Lwo/m321+7O2DrArLt8Eo2NsymK6QUrw7j9Em4OFwpUvPReyLo6Vx2P3L480tZNSns
	 ou3Sn14jYtfmTMENoBG/+RiHQ1W0G55usRmy3YMymGEsmMpenTonb+eO6v2QMWYLLi
	 qzEPTsnF3/Yfv13Zl5j7Hs/DGhEQcBuuiVKSQ74lFf7UXl+8srHSvsS1XNc+HmbPSy
	 9Tq6GT0OnFTDjFEi6HVtSW1A+oWK+k/b6x/cqA3zt/DWASNiAQgpaDmlHLJ10T+W2m
	 pY6IgIyIA6a2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064FCCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002379358.32618.10429710895785975640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8619350c5c540a697428d4358a9f24c0dc9da619a23cf7ee2fd16793d600cc48
Date: Thu, 09 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760023793
