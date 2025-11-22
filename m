Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205B025392D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763813514; cv=none; b=onqjblBrPwkBia3JXWT0LelH2PJu29CJSlyL5fFw3ODSirbrJBVe9qGF7oskz7ILYhOmhSnoiYX061V7COqCsRob6TmEsHSsdp/F+mHz1MZTUGCvVt6ENdlwv7ENFczwmvDxQ9AC5vqE38h+oEWajxoPAoqba3xPkgaglMxSqLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763813514; c=relaxed/simple;
	bh=xdbr7wOF2r1n3cY6j06pfXiMs8puBUfinJU4GxL7Yu4=;
	h=To:Subject:From:Message-Id:Date; b=Fqra3+f7CVP2O99vC1XcqBXJAXNakyBvCyZenDUud0Kf3+reFVXIWfj6CImXbbokuzM2RnHKLUnGRsBudu/bDniP6yQ0NGIO1doKOaudSFZHD8wBPIXquOG/81jV0PunEkLqGPnfYhupvWG66TltWlY+7jTCLwPlzARyab8qxk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dySEY/jl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dySEY/jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7861C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763813513;
	bh=xdbr7wOF2r1n3cY6j06pfXiMs8puBUfinJU4GxL7Yu4=;
	h=To:Subject:From:Date:From;
	b=dySEY/jllxjg2IMo34CngsNVDd3xkSrihEFD2ZSbUJy6JnE1CbbnJgnRtwfbZm7cj
	 gjse4eRFrCPeg83/rtmrB3m2B0LClwzF/Sqj7xyocFjMU/4OCYSja1xj2zBjLWGYEu
	 Ruo0P1upEk0mGVi237x2GnA/mwqq/21CEMU8Ep0U8sphSO/1OnaL9w9M2b9IcXJtxA
	 YNJaDuI1hTkJkIXdZuLivJhRFnF9IasOxaqBV94ErMzcVygNp4z9lEtJ4W8Bpkwqtb
	 fYNRnyRPQQG9MBQyTuvr7z8uOLbUv9WG210Ds05IyyO1HOkak87szCVv7+yJffSgE5
	 A9kS1K5XR2AYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B05CF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381351358.12286.6948834527633641735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca9a238f88ebac63115fe8ee8dcb218c5f577a01fd43af3bc534a36653b121d
Date: Sat, 22 Nov 2025 12:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763813513
