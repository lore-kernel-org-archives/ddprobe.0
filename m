Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7BE22C6DC
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733527554; cv=none; b=gaIyEUOMabNQ0bC2RYmS8HgqlX2V8/+cHObf/JouwCt/Eeun8kGvVYytzA0EmbRisyBGPS5SKvN58XNaoqGss404GCtMvR3n9fWaO12BwENHq7JVgscxTuOuR6Zrh7XkFR0FTUYh/EW6A2JkxeOHsGBqo4ovmsxabvFBPDuSNBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733527554; c=relaxed/simple;
	bh=jcQmX/orsc3CCbZlv84ngAl4swp70fZC3Fkoekqlts0=;
	h=To:Subject:From:Message-Id:Date; b=j2oUygqBCiHP8t4sXimvYQg13r6Tve+3TkZ0B/A5wPWxYBLZj8w62hONSHVhOevHVZq3WSvhktrbvcmRupBjd7g+0IQmNMu/3qoJofsE2yitTi7XIQX6a70R1JyjaFEv+WFN5sfG+vh8010dXEYOEFdex+wLcWgdY0eSHTILhT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyKnq76b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyKnq76b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE637C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733527553;
	bh=jcQmX/orsc3CCbZlv84ngAl4swp70fZC3Fkoekqlts0=;
	h=To:Subject:From:Date:From;
	b=gyKnq76bsrpIgb7iHo40M7PUuUBAs2vPatkv0AfU7I9zUdWGlK46N8GWaIsR6c/o0
	 aQxktoM4wstjBcrndhfn5EHTzq+Qqq4tSvnOd05QNzQ1SGXt4XYQw8qR8AXdkMv+Zj
	 RhKfdBn2tOtZKfxovpzb9XvixUE86QAP8QfJ+bJddus4J8qn9YaeTyaNu+y7HC/nz0
	 37TiFk0P3p0auo3SKcF8I4sU1m3LT20u8htNFSns4iDMrZRBIHXJEn9GzsOONxPMUE
	 SXuTVeaQpv5ovuQMOZU53hu2vNreYUlbwMSEARsh70XOUH6VNaMduXY9Sd+n+UL5Ga
	 wS/GCAwP+kzrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A03AE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352755360.7321.8829243005153701718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97a8f269449769cd8152749e8e30792b811b5aa0a1b14a74e6c818c69caf3e1
Date: Fri, 06 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733527553
