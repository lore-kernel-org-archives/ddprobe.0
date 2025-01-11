Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F207F28F3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736604954; cv=none; b=GsfgFVN/egl06fMgXSNKN8UCxXg3IQAoZ9zFqAH1i3LYaE0N3D6mUdVqFkKkCM/mb2HghvM2h+BHtpHDseYh1NSfGrKe7/0WhnAoSkGhOBYXDlEMaTCb//w4MaENgEQ/uSeeuRqf1fsGvOsosBSR8vHffbtFk2KuwBaVjzfh4Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736604954; c=relaxed/simple;
	bh=vgAYFOGxzEefrzgMbrLyB1AcdyN8ptkQ97NdDLRKuSg=;
	h=To:Subject:From:Message-Id:Date; b=B83djLsmX2UKKLZjKUNa/AsEGFexsW9MifiwV1zihLz17rPRAz7Vu3A9JKQLKXANINtdDVZlcST0VtucMaSRPhxyTndWMtCT8vZROZwnAsle5du/B1kAU7FQ+lUMIXCACvkIg1crMiJyw/uXfy9HHiDpyamkt5Acxj+4IrP+FZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoVikAM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoVikAM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60ADC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736604953;
	bh=vgAYFOGxzEefrzgMbrLyB1AcdyN8ptkQ97NdDLRKuSg=;
	h=To:Subject:From:Date:From;
	b=IoVikAM/XUFecjJ3xKry5EcXTKGx24SWKQvny3FgKTkB+abSo9AmmAMLbRtfrDIiD
	 LBzb492Z7Ov+ov/jTBNopE3vXMLZlvkO45LME2L6IZblVca2Z0VuKXho8QRIJPc/SP
	 K2aMd1cqC5vEvxkgmcF0pHQQ/4J/27zBZjSLXZh36uUzCrYMuayl9xG6d5jJfwg6mS
	 sXecxVCMHfBV66UfHaT8A0CNR0xnMzRc9MuA5dGWgZYc/Tqi99paV3nDBYwDFoC3D+
	 wo+3ds1tkXV5pnnCH633EK+w9o6h/Ov9u0EwGDpdcUNupWn9GTXfj/Jz2OifUBTxhE
	 pOIpNZtWqg4PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932D5E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660495359.11295.8863326296437420277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a9a5835d6f8ea7b5c510a5b50580e7416101cc1cbdd68e64ad0bad32ae0fb4
Date: Sat, 11 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736604953
