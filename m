Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE50366DB6
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777738654; cv=none; b=rTMfZG0puyR/x96+A6sOLPZw796JOb3FOkKIpHIcLdugx8eKBrnFqPNxvaw26ogPy1Jy4OLXaXLUDVLs8b/Fn+W+jI0EgLE+DcxZMxnxVfT1LT5UB/4dRdBniS42E5Qe+PIs2ioMwpGslTyPfX1ZQ02ac5yRWTIBIIGFkhpxU/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777738654; c=relaxed/simple;
	bh=bPwXeSaKQn6uWFv0miz++Zf+0emRXwJQrheoAfuV2Do=;
	h=To:Subject:From:Message-Id:Date; b=YPKgfvwB9q08rfmzG2uLj/bjgDhG9ora2bIpolnIRQIKM+6PqgMzewG0EOjdIzBJrApmnA4BChfBPPWx4lS/3+a+wBHgfn0Wh5A2xUPKQrbxB49+BEi95YYEz8j3yanwSbZU72wG2xLp+/D/DiEKS4QVVCCMsmTiWpwcB7UppNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mo5dPZDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mo5dPZDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBB6C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777738653;
	bh=bPwXeSaKQn6uWFv0miz++Zf+0emRXwJQrheoAfuV2Do=;
	h=To:Subject:From:Date:From;
	b=mo5dPZDN/9NrPjCHa+6/7Wrs5BAG96YdsylACWirKQSYAutOaGYqArjbGYTFXOcTD
	 96VW3s1CwIO36HkTeMRv+mTf67yit5+jLsqeuA9pHz2qB2wCUINVdpsggQZIvzCP0N
	 ntoB1qyzl8y8tm1S5xWbp92gnPCqtMmd8IwWKxLLe6pca7rdQSiri1Jk99TJHsYF83
	 Yga/b3Fg1ql7fkwkyYp4W/7iMgR0qM3nWpXaL0zaQrRjicOXIa28/73Ot2+fbetCOP
	 Oe96DmuskK3Z957XVvYmHN0UOIipckhKJqk2WLNBhv+pNna/aSKTH6wiObwPS5/jHZ
	 wPHOfRn/540NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4E0CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773865368.10423.6328940184002456404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434cea3105f27cf42d41c2db6da394240cf8368562eb15f56ddf65ab924a09f5
Date: Sat, 02 May 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777738653
