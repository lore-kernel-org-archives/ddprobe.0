Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5494A8467
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738283754; cv=none; b=HH6IxOxutNj3DXBNF7mJ4Wm8l6dJ3/G086vcWsJWtfoPe2UY/eZrOc5zIb/PNPf1Dxvevpnb58S74m0w0vM+t/xmpuf9M4vlOy7ii+MNmK1E+DFL1XyZTC31aJnR7+EzQq/NxxmbH+QgeNcNHxMXJ10BZWq7oVNmPkh9JyBr3OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738283754; c=relaxed/simple;
	bh=egFbco+OkPoXHsoR6nPMgy7+/shEL4kUPRTWvUluUyw=;
	h=To:Subject:From:Message-Id:Date; b=PaxlxQd0WPTDcCnTsACoeiu7s1TZUEYHc1ND/oeu3Mcxnv7UwqagZoLHkyQMeesJ2fhNVW0xK4WpX38NBiTJDYjbuxRm3he5yzo92fhLIwnqRDfxCL9TDRbw5hwBeFPouxCDStSFHnjKIj1ZfJElEew1bWGqCUk0YyA9h4WIS94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDCVOxQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDCVOxQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD3EC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738283753;
	bh=egFbco+OkPoXHsoR6nPMgy7+/shEL4kUPRTWvUluUyw=;
	h=To:Subject:From:Date:From;
	b=HDCVOxQeXXOsMhIfLohvwEw8vWtLP6qGuI2aYlSGnlGBMNnZ5yLsvgp1a2/XIKG0r
	 S951a4m187EuAJIKIEWYTMkdxlnactIoWYtup/Ig0MDxZzl8IsWYJ4Ky0yvwIoJRoQ
	 AjQ5wiYDiyYa11ddlFY0Nm/cG57qTG7AgX/N0wtXJnNLbTT7u9Bvhv03HGq9ypzWYb
	 oNlNzjaMsDmYAIAf3rULDJxK394DfutB+Q5ST6iiqYT0CSrg2TB+R9E6uD7g2+Je/H
	 eWRAc1SgM3uAZ76QX1vqzEDiH44G/h0q05P5P4mqBJRjiAIKMPcivtxDZbvEkjVuGT
	 3Ob5afbHP6tUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66A6C0218A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173828375364.28929.1885471918442789227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c43947a5beb7022de8cdb1a005e5350aeac92108ae4631234d0906067f4644
Date: Fri, 31 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738283753
