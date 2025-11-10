Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34887F50F
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762750794; cv=none; b=evLSyfFoYnf4subzb+KD4ztGpqyUDPBpcR2Sn/fhBcocMB8g4+gIS+/44UCotU0xoUWG0xfBPn6H3v4fQutrPMlaOtejAAB5C3VpqMdx9dbj+dvjbxBNcZkhUhJ3KcduVZAGunh5EJX3chjZLcgU2Zxn4pZQvejtaqNeTAgQkJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762750794; c=relaxed/simple;
	bh=5fyu5+7L9iH7dxaUQuo3Z8zfyFSS6nJwbmjOL84vehs=;
	h=To:Subject:From:Message-Id:Date; b=oxJiFMOEoHTqvnudfN+TMN8kzXdre1fdMPAMSPc0WfQlFS+Q1Tt1LZW2Sl8e1dWJ1jaDSGemE2i1K57NQZpTGFbE21a9P/aPC0uPJdFLdJertLigpM5kopYP7EQMWUde26Y1QQeSk9AJnQEWQewNoCPf13eundJ5AbE8mI2OFoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfrKbsHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfrKbsHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D3CC116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762750793;
	bh=5fyu5+7L9iH7dxaUQuo3Z8zfyFSS6nJwbmjOL84vehs=;
	h=To:Subject:From:Date:From;
	b=bfrKbsHVaVm5ipG3mu1qHpy6rSR8tnUtOzWZrrUvIM8W7d+yoaqlUq0zT1GmMQGjP
	 /EptFqARXaRaw2A9whxOdFOqW1Og6PtV+ymb7ylI8NK2ODEZkAPetR9lbsZ5d32Q8o
	 zU3ngEStOgWeea0QVDO1qp0yui41YJ2ReNIwo8vYicb6LMLAhcSDimjxNejPZoLKy4
	 SiVbsrHYME+FUQFsxe+86jfDcaFBP+1aDmoaN6x43p00UtZbzUcTT9TLqsp9f0NrN8
	 BI22Eywm5EGIIwv2j6szvJr7I1+8Ukq7q8sRJ7kuTxDlF4jxxFvdKDE32hvFbYP2kA
	 8I+70CbmLMnIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9116CCCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275079358.4137.12530688329534317440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d11b6d654127c9ef0c9ecc324992da215d27934d9b4f8a2f8e13d0bbf972913
Date: Mon, 10 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762750793
