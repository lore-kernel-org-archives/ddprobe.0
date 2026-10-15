Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762F0522693
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792098634; cv=none; b=dR0WvAMdVAD7c+i0bUCqa4P1CdTw13igIvtQu3BlMTxTIbe895lw6s4lTj6KQRpIpp1gXCO6pml0DpPORSBRMw+FJkZ97ghTsXcE9mZeHbUHiLHUqYGcHeVCvLIA31lBPS0M+Hq+8s68nbVaw6LqFCGVTnQYhx/mEpM4MBVImX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792098634; c=relaxed/simple;
	bh=8PIFc2QkMWjh/7FVwn31gi/ZEuWKEEyIZIsWpOYVGHw=;
	h=To:Subject:From:Message-Id:Date; b=B84WUepmWLwRT25uoooy0Lsbl8mEy+Jocfm0VrwBd7BbuvDX69dsAqTqx0SfxgfbFK5oXFI5PWlg8NpfaWVE0WxzxumAgPxg+RkIN3h2A3VIqcgpAdVnTpKeuCIN3DIj6fObn2OUJyW9/vlZKmFbDiHVQadUFILKZX1ooUweWS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJ10bvSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJ10bvSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA37C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792098633;
	bh=8PIFc2QkMWjh/7FVwn31gi/ZEuWKEEyIZIsWpOYVGHw=;
	h=To:Subject:From:Date:From;
	b=YJ10bvSoDfrcPavsS5i4M9xMMWCCBHuges0cdlBk0SLJXoaBCpxlFouRemuKc9Mxf
	 x6TFenAe5ZbaczMn+Eaa26KjjA1ojgj98XyD5wm/AVCQJVzJ2w/nWa1mdOBFndct7j
	 EwhNpkG9PrAPZnm5WL/zdYZS1A51ZZUf9WH9Upsp6jBhZXdCenInAuoVqllT/LvInU
	 tHRjbB02nEyYaaEYpJY02rYCwSfUW/fdmEA8QPW4d1g7Dbh4tnp2Pr+VXyvlyUi2td
	 SSP3ysy5lKw9lj8+zpfOSqdjOWajMN6WMFnF9LeZ/bVZu11d5Y5IHmGrsFvy0GQBI4
	 OYxNF7wqc+img==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18CFCC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209863370.20349.15947792054539710894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78d29665aaad899cd261ad9aa4d3843653081d8895a2a6c2f8c2dc9f1f5892f
Date: Thu, 15 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792098633
