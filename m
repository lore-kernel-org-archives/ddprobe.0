Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426D547208A
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789038034; cv=none; b=s9ZSUEGs5omL547CTboF2lO15dG/m4hcFL19ys4Vh3r5P6m6pE61LYxl6mmpRR4HC6ewmBxK+1Po1xrzxev7NqKylDeqITGuqM2djFYhGCeYD718grukU0mRymKgWtMhOhA73W32RtjReXBbU0rt6oZaLzSDtdXbpkPRd2DDr4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789038034; c=relaxed/simple;
	bh=SES4azu21/snHEW6kCm5DdIhYrUSeGbKyW2r6vLENbA=;
	h=To:Subject:From:Message-Id:Date; b=YDSHInWkWWwGB3q/RQo7DIvcWbBNPZ09DSJq1sXJXnOipH7S+7B78axujFJambnBnnObVoZBo4i86jJEdn7EQPrpt+dbdkZSnvWTUNGkCYg75tiEI08R3jnLAg59l/L1gMCOUBGSV0O/WV8stOLvponkS9d6thR1krqCsl4jUJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdEQxDOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdEQxDOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB7AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789038033;
	bh=SES4azu21/snHEW6kCm5DdIhYrUSeGbKyW2r6vLENbA=;
	h=To:Subject:From:Date:From;
	b=VdEQxDOLo7zyMiHb9LhDiAB7vutt4ecNV9+heZy+lsRBuiSuvixBo/203waq53jdg
	 TB74qaG7IdGEgAskcwNFR9s8b0chtTl1Nci13yD5jdwa6Fn4RjhwPEw/9g/ikna13s
	 BCvJzyjbW9VaKdfUSPjDSsn4UCy4DLGT3GNHcJJnGUdOh5vIcpe0E4nvW8Ylrp228D
	 VQy+0Q2B4mMDlZEk4vNb+uirGsM6XkQRQVPJ8uOsGR+bmobg5L/qHDDMLd+u43/jJ2
	 mrvsiLbbT9yhycdOMdhDFvCX+bom8qkPKC1a+Zorwv1ErAeEjbNvz4MGQp5mZs+0G4
	 Rsy4zyzzlSiCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6B0C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903803369.15081.6070428659023929640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f5263d67b37227d6a77a9d0367c4f19885ae0c6f7caee492112f0c71c7303f
Date: Thu, 10 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789038033
