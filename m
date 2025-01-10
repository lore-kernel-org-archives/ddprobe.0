Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227A820FA9E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736525754; cv=none; b=ID4DRKDumIFYwlnMdOjrV6LgZwMo2CrCWtdGzMq5EIafa0uPd8VGOegVGpG1Dn0WRcHh/w5q/FVKGE7Ppy+uCUDyg45jtqKX34xePSQFjCMHfQxYErwAWiHUSufOvxtxQyHh1pOUPaOac7mOj+RTUScx760y4XmDK5Lomn+7z60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736525754; c=relaxed/simple;
	bh=xwjY2BJgndV/2YbyDMA5aJaSBSC6Vj1e7BuFbiL3nCk=;
	h=To:Subject:From:Message-Id:Date; b=pppit/156nSrycej9bGxd9dg2N8EPFBB6J5fZfzKf74r3zfuxrFEejxGSpvMsxzgeFV0CXJ2IXQeTmwuIi0sK+nX2l1N/zQHujtGV8vc2kAl/re0ARERFAPoyItNkY43/d6jEqCJZsEtH2VbsKUx2LKlMhoP7yXw1DXlg0PSDR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1IbeaKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1IbeaKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA36BC4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736525753;
	bh=xwjY2BJgndV/2YbyDMA5aJaSBSC6Vj1e7BuFbiL3nCk=;
	h=To:Subject:From:Date:From;
	b=q1IbeaKHwz2vFLmIXRInL2onxT65HI6AvDGgHCfjee8NuBt2Jh1bfSkcO/jvjaTVJ
	 Ko00JurGVceXiMhzhTl49SspGzegAtCPwB7ukGB1NxhP1CvefyjddeUECqaRDt8sbP
	 GuduCrpxvGEucyqVWFuNeK6NkFEL9BgV+l/vGfmAv2slO1eqx/WsJ/xnHy/OVVze1u
	 K5UvuH0on5uySwllzeNhfb+ytVkyuIzGjd5bi9OzzZbiAT/xChQ+pJBCx2at39kMqF
	 TZU66TZxz/AXIE917yE4Jg3iR2D+y2nmZXjcTik5u4ntjRdFQK9x4v3WKF+Um6kqkk
	 /JLSmZogKxiqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96840E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652575360.27840.640143297359522657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e703357f7bfe50fe16c22bf7b761e9f819104bed5a31651439692715971487e9
Date: Fri, 10 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736525753
