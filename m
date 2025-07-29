Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355F4156CA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753817994; cv=none; b=kGX3+s+2zoP/dDume2/mBiXyJKYqiAUKKxdH0WDbyOE2/Ldev99OsOD9gij7tsxMiWfmMg0ZglHjzqOX4AJDCBBqgPommK0zBpmXgZPPk/EjdawOCy+Ei3WBZDr2EoSrlhToLaGWXA/+2k58dv1NETL+y+mLtZYxPNtlEmgL69s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753817994; c=relaxed/simple;
	bh=9M2JUsTt0Nz1q3Mt7tcSD9cpWVT6pkG5uS7hYDKViCc=;
	h=To:Subject:From:Message-Id:Date; b=ftguX4BWSbGXCpuaRvUlZTvWfmn6f5rF+IqGGwMYo4pBW6PQEp3KcBtYYGGnqQ+qj2WLrS4dPhD/xURP7D9EMQS6YvqYsDWKJBO6u450WVDGeo9fTUHrng977S3EUlle1Hi5jvH1qraKlFoT1UC4N4jKfl4ZCskSer6kDSFn6bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOQGcpkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOQGcpkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ADBC4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753817993;
	bh=9M2JUsTt0Nz1q3Mt7tcSD9cpWVT6pkG5uS7hYDKViCc=;
	h=To:Subject:From:Date:From;
	b=YOQGcpklUTLami/ipWz1eYC0hGouJAfR4JYS50h3Xr+TJZUs8dsjgSq+lPdswZ2qo
	 MAPSYkE+WwuJEB1jTmwVYKmNzIHERskhZMSHfbYNxgHnxDizLeC/vwB9mgSa1ytFH1
	 71mDTWY3rTij3uHB7lWlSKyPpNlXqdtn2Bgl8jASnocy5VB3kS1XA9k0dy2SKv5Yil
	 DtJ39sDNnednlvLSmhIR2lkofTd1LsVjo+MjaSa9lrXFMByoiU75AZbQyNFipOf4/4
	 kqImFthVLgCX633ofCQekmw/+uWe/bfrIRxyeSqL0g0zNibIS6oqkQBdSXv/1lkv8V
	 PuX1nRbgGaSOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95010C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381799360.27913.10246616621183608364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29acd02b14fa7e41c58fa6c16f27d11e106dd9b3e739fd2ce74c48521b9b6ebf
Date: Tue, 29 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753817993
