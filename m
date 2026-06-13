Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D3614E2F2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781309194; cv=none; b=Ssn2Y5v4pWzzVQvi6bOOkQkX1OtkHIxhEVF7M9ICciIiRsRpiWyDlL5T69/VLYAOKyI1B/AE3o7yxu+gxhsHRmJ1CQZgm3AN2wzCA44xQM90hIM6b2em5mNhpD0pTt48XhKNBvslYEkrZ13A0miP+ktw6dUKpxg5Vm2w+beiCws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781309194; c=relaxed/simple;
	bh=SyPE3EnLnrRrpCDr5jZjnvKdey8dfuiOy5/AVZrWD0Y=;
	h=To:Subject:From:Message-Id:Date; b=HsF0/sFNGxkT4gDCqj5bkIESIdZU/elTwQD/NyrfhhsByNkg+UeM23WfAEDWo4IMcfU0vIftFhhUEXk+4tnUrDRP3einUAT6O6RQ9Q8/cD+90+EpAvs7SXWD2AQ+X04MuROAv69+xD9FlDzcCQoZJKJNVmLUMi7NKk9EaCKzSs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DknqJbE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DknqJbE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD24AC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781309193;
	bh=SyPE3EnLnrRrpCDr5jZjnvKdey8dfuiOy5/AVZrWD0Y=;
	h=To:Subject:From:Date:From;
	b=DknqJbE5RceYAqA9US+lfpq34RPilrxhXqaLZYL/GvtsoYEQuUJB/QDdpDKUlsWF4
	 utB2oIXp4xfalhddghHPu6zcRzFWXfB+8Rb2s1h1g+Dd1nhH2j4Hs37ba1naQr5cn8
	 0I2akU3ME7Od6iMyWaFkp4hTU8XLN/Hsb1dgnjLcRPraEQiXF0YfJZPX57QpRjBRdT
	 AgbTbSrvhrtoGMNbDOUIqXGxbx+JB0e0Zd5O/VkWISl5u3z/2AQT9pCJ2BGvsz0WXN
	 r/YGhPalu2KtPQW6jlN01Hv9E/T/K2qDmGp0LTJF2lSUzKIjBmGSteIEpxQFw/QNze
	 ZgdoIp8kIFvIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18F6CD98CE
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130919368.10558.8400006542371806217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18506d2022d4b68cd720758fc708c4bc1b8a7bf36b29f40bad29e9b4a9d31e9a
Date: Sat, 13 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781309193
