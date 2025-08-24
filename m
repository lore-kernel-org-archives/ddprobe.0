Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21602248F7D
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756042794; cv=none; b=QYTkE42OLNLVmPdMHZ1plGgIgHaZdGus9v298vgAfDHRpAJrxZ8EDS7mOCCPq5hFjlw+lQ4xkaQFL5vqpBmoAdTkBoZ3jeObuzk7RcuwCTvVM27HoIfo94SnSaXvcb38JWey5qkpTDKKWLRhTLFKSMEbZ26oPCqXeHijVHu4IE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756042794; c=relaxed/simple;
	bh=tklZ4UOYIZ1vnIv5rJtIhpKLebOKPbHHqduKg25C+Kw=;
	h=To:Subject:From:Message-Id:Date; b=W5gYteU7/YCcQPaVDh+DjySzlnSpQn28LOGswtRLuEcB//a9DDU+Ob+97SoAVEP9musKAX6sNxurEr1zN4EcDsiRzzH8dFTnjUDtH2U6TGzBQ4ct1f6oW37x8+Qw7nyO3FsafA4r9f25pouakhSZrZJn1fPW2vNDovdeKbQamXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddiN0D8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddiN0D8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFF8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756042793;
	bh=tklZ4UOYIZ1vnIv5rJtIhpKLebOKPbHHqduKg25C+Kw=;
	h=To:Subject:From:Date:From;
	b=ddiN0D8rVe++N7JHpiacPUSLDTBB+jXWyH4zzMCx+haGV0c1CUgyRvLMn7ykzI3Eo
	 5DcQqlFtvtfWzMn74s9wJVlIb7mM9G94YnLseh8h08fQVaDu8VEShQtZct28+/F/fG
	 192PNKtHI4WI14cTtktACwfNI9h3xSofy/0CO7VV1+LxtZ0oqRB3xHBCkpa/iby3w/
	 pSq6uZP4DssMBx0MNKKoA7GtNo2m73RBzJ4wPnyLhLqjXFdy2SWDH30MLCBYeGJ7jF
	 nLP/GhcbY9NIB7jBdhv8pzev3RWDk1yYKNW/75FL74w8iszRxx8++7USNrFKKL/9UW
	 DopJN66WNTB1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8ECA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604279357.23303.2277867599394957327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ec87d6f68e21ca851c50ca561160559ffe162459da154e04b704bb7470ea9c
Date: Sun, 24 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756042793
