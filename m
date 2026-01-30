Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203842E54CC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769774634; cv=none; b=RlKmMS12XHqeADiREwfZVOAlXJdWfVcVePFaxh4HuvIgx+5H3sPnNzmQ58cPzxWe7NuijLDhLk5BR2aqy5+IDzMAXijxGD409x9cok10FKqgByAejz0Kb7kB7UvMPjKTm48h5hrXljT9f97F7JYXYUOPUV/pG97FkGdJEH0vgkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769774634; c=relaxed/simple;
	bh=k+BB0EqydH91e1K+m0Hb0YmOMtjmtY044dYm6+YYF0I=;
	h=To:Subject:From:Message-Id:Date; b=P4hKKITOhAV2/jK1omJn2CWd9ZYDVgHAYTsOOK5j5qRS+d6hCEeqolyvjk/BQoVa+5XcuAlSaLJMiT8UXcsaQWY8dxge5xB2kCCrcFIiAthGdWjEujYJEcyqLNoeQC327TLojUgx3AbBONX8LR2ZzJ1g3aGoKmO1w9xM+RiV0GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIlFY1v2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIlFY1v2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A54C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769774633;
	bh=k+BB0EqydH91e1K+m0Hb0YmOMtjmtY044dYm6+YYF0I=;
	h=To:Subject:From:Date:From;
	b=TIlFY1v2Wh9lc7Ch41y27bDF5hkVb5R2JuyzHrU7AKu+1MEF4gPOlGS+Z/6t8l7eB
	 qozPo5pBxyyadgKKxvUCd4BPk00gOljjnSjTcGMoooshKJ0H8Lnqs6PMgWjUOzXTjy
	 pHNlcdDoYzkuCWqNR9WRT6M+15qC0Thv7Ym3DauOugpSBXg/s0nnO3pOXoN0vmxdSR
	 zKDOZ0rLaNblSfbr/C/P82fAHNyd1o7PKEk4WX91sM1w1T7DtRWtfBYwwhqJz+cO7A
	 4olFLV3wIIqYB9CyH9a2rlJZaajiDU2dJPjESBlcbXl1iZtVBje3rhWrUEdNBq6Jf8
	 d1ZXPKD50n9GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92319E6BF06
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977463358.15215.7591662775315588258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36499aca482cd25fcefa2cfc264ed7f4082fb99c42b53e03238d472c51507aaa
Date: Fri, 30 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769774633
