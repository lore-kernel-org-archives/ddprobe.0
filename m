Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECF337E2F7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770655433; cv=none; b=TaFkd5KzEYiLP/MfOofYVklZt63KMQ9oDVAsdeA553w85s4yvu0ehE5+2CNFNF8NXGhU/NcpeA3c3OZO0mR049gPyIkMxi+jAiqu86ri2nzPLEFGwHm1wdbCxvQWSna9xyPwc7Ct4r3Boj3GbAHw86qXxK7RjRODxVYSLDMTy8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770655433; c=relaxed/simple;
	bh=HEvfmdx2jdAB4i6haBgMDocoot3cufRJ+jH5gFdctdY=;
	h=To:Subject:From:Message-Id:Date; b=AdFngvbdcMkZTD3yxBDZVi0xZzXYCvDnBD8fBWdGNFxCnESZH6eu0PvyoNDJCCIwVYYRYFpj9zsbS69qn2uhwPXTI73YbgyMlhKnm0waKwKPt/5WAcpQMw5zozMo5GRh+k9sHSlwBuwSdv9tA2tZiaatFT//vjz+x2FaclkWSE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnw0a8tq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnw0a8tq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1967C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770655433;
	bh=HEvfmdx2jdAB4i6haBgMDocoot3cufRJ+jH5gFdctdY=;
	h=To:Subject:From:Date:From;
	b=nnw0a8tq6DDwhsj5GhXZmrE7kdKUF57Nbbe0/CmM0h8+WmoDjZaZZfT5qHQhf0Y95
	 2UeeM4f36uHC1TJBp6d9LbNQPB4gZaMcpq3QC4FMH+UTF/K37qRfsP+eQhj89JuUhs
	 To+j4BPhakDn5mwLhSFOcc0YDhFlOr4QDQK7jnt/IL5hQpELjB215/lTpkR4ZUDys3
	 gVqKxnpJFJjzIxWDscWJw0CD4Af6VlFAWMpDmNWv9DIXh2g6RvWonIp1/zSe9gQM6L
	 hJIKDJVNRmSr6wSReXR/JhpFVy57Ic4JhpkxOV+TS7gucWJ3BviwhZgt6rlWkKx+1g
	 tbsTe5utwHPtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B91E81BD3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065543358.7365.17304842919995935045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1beb96a0abfdf66f2dd40375b23cd1963bbafd74e0fe8a1bb33eb5e97f653129
Date: Mon, 09 Feb 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770655433
