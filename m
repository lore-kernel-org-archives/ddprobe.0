Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1605F155C87
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767342834; cv=none; b=m9FKCwH37rzDxzqJRyxHtfm2XyWBZ2c/UUVI5amGT0kw7XzPTBWrzJDNVYkA1bmetgk/0KvceSa84cIDD1BDFWKku9gRKlzIHtF1xfN2xM/o3XfuZb2AAR4gYxYRJNQOPuwkp8YYs3RUywMsMQuOpgUR/aSnW0FsjfHEOUMl/vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767342834; c=relaxed/simple;
	bh=ACDrcAhac179tO7vtVboskCDSYO5ISXeAsIaskNbPdI=;
	h=To:Subject:From:Message-Id:Date; b=mt+P5HvB9X2HqJac01Txl6AeuxdH3oTQ60D/WfTFVB/wNW+38OREtCJg/Ay72xYOFdYyl5NG8glCvKTTMjTExxc/4PqUWeJPZS9TNDyHrVNJ5xOmWLxKt87c9iBdFGn8AZtFVGiVypeY3oC2VIg43TT0RTNdJmXtT7VoqUCTK3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8/cnqQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8/cnqQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4990C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767342833;
	bh=ACDrcAhac179tO7vtVboskCDSYO5ISXeAsIaskNbPdI=;
	h=To:Subject:From:Date:From;
	b=p8/cnqQVGfyzOrcSkQVcG0byrej3htcz6GPQ4UeTi+Zc+CrDECKd5P5zHhLgM3UAb
	 JZo5rSoUuhKzOcvyhplvE62vwK1cD0wq92S5gzDZlREPFnUIWH18iozeZlI4og+96K
	 PP6Cs/v8m5DFmCiq+icLteyA+UesbTtpK9EVwFjENJCNNGxj+2+/mWpzduTAKjeh08
	 nceA4q2DlP7wKb1YTVH9TBQjmhk8mPLGQILiO5lKSj0u0qdVG7C+gkYgbofqQXpxDc
	 mZocaf/45mUd6NyNSCSdrLmgc2PMPBc8w8XhHatTlCXS8cAW00MohVXdnGrLz4uhcN
	 C7jF0TzGHB2Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9313EE9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734283358.14568.2167131088108651291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81efaae7181bdbb488994f99d4c620b52d9b583e02b6cea8ed19030ec5886d08
Date: Fri, 02 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767342833
