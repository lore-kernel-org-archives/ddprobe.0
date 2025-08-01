Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3245619F13F
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754053794; cv=none; b=RxTJGZeHrG/yrYl3eDimGQZJ02CXwPgEa/hnV3G1JXjS81R9n52ECwqF//SST2fY1xEnyTmW0upKQrdCn8nDhXXKQ/ciGge4WNKwlZMGROVO64lLJuR3L+Z1if1grf4PvcTgV7/PIOGi54nBvn6guU5GnSnhWxtD1w/5sBYg20Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754053794; c=relaxed/simple;
	bh=cSGKrZJtWrvngp/IsjStFB9yxyOaZkdWAnNT6R6ONcg=;
	h=To:Subject:From:Message-Id:Date; b=bFbgdas/pwUGSxxXn+p6RaH9O2SwhLQTJ4u3obhkCXbaMs4f5L6v/pvnMSls1xjzY0ZLftqWYIJYM1S6Hr7mjQ8lZGbEhY2CWjYJu4q0aCV5r/i2f/FtFToK+xuZ7BC2EbAXdWkuHjFIlmMsUkHCkPLJ/8H4am1JXXp7bhjJRN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXF0Yeat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXF0Yeat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5138C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754053793;
	bh=cSGKrZJtWrvngp/IsjStFB9yxyOaZkdWAnNT6R6ONcg=;
	h=To:Subject:From:Date:From;
	b=LXF0YeattbaiHbpcJj7WNumvfhtbfQU0CMdO5MFxT6/PXiDGfy/EAeG7XYCtKGaOC
	 MFCXnjFUHWx/hxhi2tA5n43Da1p82hCs5sbthh9j/R2C21xEzq8OO7pzuozQNME7/p
	 SUm43X0n8CHNjOIis8HG9COKF7WWtyxb2xF8AKjwqRz8SMm5cMvQB382JAKFMUHUgy
	 yrNT4l7w9kRDIuLPB6RaHiyiyed+s/gnspZEl0UBZyjc+tO2jwt0hm9s/gBgtbXz3V
	 jdG9qAG8rDAy+PbTl3+iJyu6oP3MwkY6rBwJZQatSuSWFjp2e5e83J+Gi7PRVwREpU
	 p261EjCCOt/7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92251C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405379357.4258.13858590816768326292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0866ce64f07cb84d0a8fe020d332592d7ca10b9091daf6084a1ca2adf5c53ce3
Date: Fri, 01 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754053793
