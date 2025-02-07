Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C33A1547CA
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738946154; cv=none; b=r+ugAsAo0wFDtPVmUsPM53dbQ4xh/c71fY9ZGcwtW1nZYx2HSQEgRRclj88XIJfLQZ8PNfrTwj7JyzyKaJJvE7rwg6at6Oymr5+eM8WDVnVT2XukIY1+ojn+HB2MPfQRE4oEJtR1eqMvzOzxrkShuUo0XY54CZUnBsQAy7FZOYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738946154; c=relaxed/simple;
	bh=TpW13I1Ui1exNVvEEwlhF+R9NHG1KWW25C2luNAa4Z0=;
	h=To:Subject:From:Message-Id:Date; b=b9Pcn7BcJVhd68RW57HbzlM+e/SUst3iMfiUNsg+Ajmf7mey1a957FRUnMrbtHufnNcAH6wW9/MGJvhIcWCRpLuIYNFgUERu31xvEU2UslxVwg0bdP6d8HHxpG+d+4yHsixsI0Ofa/Z2kTSlbV/w2sk6PECgskuAwWZirHITcVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t46W0oQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t46W0oQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB953C4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738946153;
	bh=TpW13I1Ui1exNVvEEwlhF+R9NHG1KWW25C2luNAa4Z0=;
	h=To:Subject:From:Date:From;
	b=t46W0oQ6MfrxL5OKlANI0yesDDYs9F4/KT3tyKHBsXuRv5MlOKkgs+ycmYVwx/kjo
	 hjc55Q6W1PvH1EDOk5DRzd0BKv0Roxvj2bJmBCEKBr3+FRNsYyIFaUrte9UFcAEViW
	 dOR3bPxCNATJqAtmQSUHFAZ7+em9g8hrrADpWKEsNjRsuNZCq2jphskVg/GK8cwSEp
	 W1x2P4c+F8rkyfNAljjQ+/eMLTH0IkhemRxc5XW6i7VRVUiH+U+RwC1rbjlG5RPmyl
	 72HrHx3yl64Z6aigVNQT4Lv2Cbe3YpkG+Cqi74TtGFMnB93wkwuBtlCyFIfrSkZpX1
	 DSoGNOHExAUKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97503C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894615360.20335.11357185593832818440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e036065d1010d2952297f3eb806c7c3cd6a4ecefdaf1c3b2d05ad039ab2c949d
Date: Fri, 07 Feb 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738946153
