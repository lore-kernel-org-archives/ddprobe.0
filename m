Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E78635
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 05:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735362354; cv=none; b=VzRVYtAAmOepobPlbm/eneHcVXv+FCv3ijSqYEUQS3p0t04i0enB4MA8P2tWcj1GgEkzXh9L0251XRlJtU8QzuddTXnXXnT6kavM52AhfOW+d9H8SoKlnoqtO6dgCTiAcbOVFWn+RexNzxMJGmj9Djp7XeN/YeK1J8GK5VFoU0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735362354; c=relaxed/simple;
	bh=9G0U1AwuBntEZsJW3VZ7VWthZgfJaqFsWAOM90k3F2k=;
	h=To:Subject:From:Message-Id:Date; b=bU0Gb07s/J46idkCAdw2dPW+giCVTwENQ18aVXo31CJZ1RTsRJDZOfkjP/MJPIgWiSX4CBHlJMUFaGO0yX6RFkWuwUgfA21RQob/b0ZqlogyD7AuX8kYn0Up7uJwSCd/8YTpKWsxjElLARqJkB93yNxCePBbkUmtczUF9YLoQXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUOatWk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUOatWk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A18C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735362353;
	bh=9G0U1AwuBntEZsJW3VZ7VWthZgfJaqFsWAOM90k3F2k=;
	h=To:Subject:From:Date:From;
	b=bUOatWk8dmyoeiWd8wl0SM9i1VMOmGGp7UnlICpL2G9nfQlUjequX4jre5E/bXbcg
	 PpYNQ4f9pE+k4bl+FW5tzH71L0ioYoJrQxMP7UYYmTdAAj23ZP7ZDRb1IWx0Zcq2XL
	 o98tPOrAXGRXOAaDo/BERzgX1dwmgTAdGzEVvmpZDbs9B12HOqsIvwtqxro20UG/xB
	 wuhjqdzYtnPfyKBjkEbrHCnn6d+MIOwzx7W5mq5r5PkL3+pymcDDt03scrV3oU53zn
	 uqrjgBxyBuTMSXc8IUiXszBD0blGfRdREXJtkWUUTXRIwkxSKYhcq1439LEzhWCS3b
	 yeAlexQ76HTMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7061E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173536235366.12960.10967316379301840030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66befd8e3f5d0da7e8fde882398951d5919362c807972304c772294a946925e
Date: Sat, 28 Dec 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735362353
