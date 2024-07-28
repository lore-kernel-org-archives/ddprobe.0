Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360B063C
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722146154; cv=none; b=KpGfR4Njyz06iDLi0o5lTHMNguCYavaa7D/535+2hXsdvEIR78/EPvl+TqeeyeMQgpuYeqCcRghYYpy1RIW4rExj2xKKmY1ikGsnoXeY8dTaxZPFpZRHn4K3BGt+oPNKl/lc3FHcSIMDhvrIiTtjHc0TfiU2Q9e6lXg3hHAQyyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722146154; c=relaxed/simple;
	bh=77Uz0MdV3zhr06moY/4IoMmJp2xXe2KZI2w0e6v47ZU=;
	h=To:Subject:From:Message-Id:Date; b=mnhcyKEIr2CLRdN+ozcuYn3zpJaiXUmQ5I50h00UM4U4BCrSwqCsJnyE46cvdrnForL8W5kItIMh8RfTVn4G/2VeLK4MRk4+d5TXD12sTlxD9QqJg/F1PP3DhpEXJIK8QiTgwBlhyTLAidqkKu8NTEfhDZnk/gK2wPsbKROnSfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=somdoROF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="somdoROF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D43C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722146153;
	bh=77Uz0MdV3zhr06moY/4IoMmJp2xXe2KZI2w0e6v47ZU=;
	h=To:Subject:From:Date:From;
	b=somdoROFuVp7Wvtf7BAt2zhjFfYjmgkCy5lQ77m5KHA3K62I97hF8xlbnDZYr5uU6
	 0obit26S4PrvtSvkrbhhxTlJBqEUs46duP09HalA6pMm56gQSeKte7TIyC4uZdNGTO
	 HzMrx0fihcgpNAu76d18GERpzYn1lcHHDLHQxHHKdwUJmG9CxTRtdSWG2Dz84BMZ2d
	 AzUOMLugYbICD+xVt0MHF97EcJ4wW/OQ+Isj/4n7rikHIlPvfP5MR4N1SynZVy2Vj+
	 IlPKUrXA+C+TRvNySMKF8oLrA9KI/aWpVsgfSbEYwSjtQJ8Cs3ivlZCpYbKiIiSA4u
	 1dpR+s/Gdp8kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD6AC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172214615360.26237.17959292203127569586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407df6cdcee4a8d8df88459bfee5e5be9867400efccb80b19502edbe6e9f5c50
Date: Sun, 28 Jul 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722146153
