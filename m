Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20037E555
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771785294; cv=none; b=YLReUTyvAI5crOK5xYbyXYbzUE4gWw64Rg22gisdSVBL8nfD5+qI5UdRoC9zKMLUFlAsZP9QBvYCs89Y5WuWGz+kqYPbCO3v0Qtl8s+p1D2k+QMKlgKnY7DCkRbCUCOJe36VcRxjT5GCAAK8UADDebtLng889X8gNBAhVWcJgMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771785294; c=relaxed/simple;
	bh=lNJ4qK64YpSSKOnigJpdP6pBiZt3paknBzbStoX9XLk=;
	h=To:Subject:From:Message-Id:Date; b=YlTxl3fVOPlNXtGcySOAktS6hkiSVgjpXwB3AO88S/RFNPKtd3tp819HYgsV/DqTuyFAULU9khjecYtgcz2erWbmmaYPemMHMUBRuVuvdj5rhbin7f2jScFggn7RMDec1CPjGAx74Srt8aQYaNR12ycczyCkPCHn4fmmLgpEOkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hotY0GCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hotY0GCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFABC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771785293;
	bh=lNJ4qK64YpSSKOnigJpdP6pBiZt3paknBzbStoX9XLk=;
	h=To:Subject:From:Date:From;
	b=hotY0GCIHLcE29d5FBXLympKEFEk2ER1mPIcWgIlL2hjBHUHz5XcM7YjXsV8UqGVm
	 RfaKz8V1jUATg0XmQR4ipp1dXXfZ4fSVkg/iPbWTG7TSV6t95EcFlAqmpoqWJmYtN1
	 42oT2sc7gNkXW11BbhnuWtsHGgNHy6eV15jomTV727EO+8y5vt0T7JZVOKHrsm2FJw
	 M0m7Nz2UQQkMguiczVaMBaZWxogbHzIPqwpkwK/2WpFvPr7fLiLfoRWw5WFwhP2sdr
	 7Je3f4el6tvVhKOBfLMw9eSh0WL92ziElKopppB6wt71KP+o4NrsaWs/gZ32QRVUhX
	 DOArR5FnSWVMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941C8C636B6
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178529358.10103.10797322366329320123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c56b116e22c9945a31734f73979c207b701ffeb1ce35f11604c07b5a202104
Date: Sun, 22 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771785293
