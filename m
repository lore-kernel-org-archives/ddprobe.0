Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CA021106
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732538754; cv=none; b=AmIco9sZEHYdaLeCNCxzsC6Z+Ax4ebdAoHK2FDRhH5a4adx75wzKbjHqIlLz9LeCKjVt98XlwdPbYFvmxenBDMFL86V1mJqTKhGZVwf5X27lHTU91uvMMiTHqFZpkSFJqp5ulRca96Fth2+O998oDCpcdt4NNlXfeN56Ki20d1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732538754; c=relaxed/simple;
	bh=fJRATbA6XsFUmPeO3QdvzDZXUi3km3eUGcFWBQcDtSs=;
	h=To:Subject:From:Message-Id:Date; b=ZNt0e7suq+2pyNH10oJwkvUlGOUmMHMCwoBqvjF8dcxl2n1oewbRR5d97HTkqasM531LI3v1FfWAW1q1u1WnemAcVB0FaQnlmW3kuiKjM3qFPSkCFaKBngtUn38kVcwWgeHmrERlu1ZVHyguepff64LFg0/PeMZkmmyeNYwNfSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBCJIG+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBCJIG+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC85BC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732538753;
	bh=fJRATbA6XsFUmPeO3QdvzDZXUi3km3eUGcFWBQcDtSs=;
	h=To:Subject:From:Date:From;
	b=mBCJIG+9eOsIacoaUrFFZWdcVG+9wLsiEBgBSF7Nu3mebNl5TxNbdn3XmLh5md7a3
	 2bNj2FbO138oTl5uSKcRuXFaTK9e8+cW/vkZICd6lnTxDxWUI1BjrodaY5S4DBLYKK
	 KGP5dW3ie6GDuS2ohDUy3NY+eYqFvNGPP/mwzt1ydmKQf8S48Jqn27KtsZr2XtuJfH
	 rXU2C1zIseyN/NfJtiUs6QX0WPNRkUNxVjnBsnoeT4C/v6iwSK/SxNJDQzsVa3inXL
	 oG9yrxPVfaZGgBF1EaSnyY2Auo1n1M0jXaNxW0p6/+C33LZat2gYuawVqJHdmder+v
	 GAIy98ZORdg6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D21D58090
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173253875361.4993.17948101952070096952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eefe2684f1c12d48a2097deaacc215c460c75628e92cff93324bb3ff3393a95
Date: Mon, 25 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732538753
