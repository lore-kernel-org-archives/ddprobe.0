Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3292635AC17
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783705714; cv=none; b=f9s/n2LKFWwyxmGqGvDyQmlC1zzXS3e+NOHQjpG/vTMynWC8nI5MzYPIcolaDvRLbpyMJOMyuS+DII/IkP1sWvUL88rzS72H6K/HI8BCiowqq/s0jgz2nfNMBfMudvaX6KDOl+ujrOYXX8mevx1Vrw/vgiPDA4BaLmGYwNUKmG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783705714; c=relaxed/simple;
	bh=gc0CdBPEtgOhiDXsDnEnq2TMuYQOZquVgRIZSwJCDmY=;
	h=To:Subject:From:Message-Id:Date; b=I788KKr7SOQgB0c0wGhrF1p2+pq8iTY5h0/sfLRRcOCdcUuSOFH8ZElMwgil5nQs2h6clBP30bf73QUVM7d7ZhqPb97PqLJNNdySsbN2LzGQ0zHgwXDRkH4jDaI5IzBV8YAskC1P0zBaf8OoMBaAquthGWzEJd0nDgVPPgUngg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUimNO8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUimNO8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAA3C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783705713;
	bh=gc0CdBPEtgOhiDXsDnEnq2TMuYQOZquVgRIZSwJCDmY=;
	h=To:Subject:From:Date:From;
	b=AUimNO8YHSWZEW49DdgjxUEtIAyyu/UfwyuuFEsNsq7c5DsENrluZVsqVmZFmOXbl
	 1UknfECz8J2JJt9T8jxbsiAsQTyTbejR4TIZhxE4voJfccMwJfAKJxr2IR1qh0/xeh
	 iBNMKjJWDlSy2I/pAdFAYTZamsgMhpI+hsjybSk4i3jO7H2ChJHiRqAQzdBhsCaICp
	 TTgKVzrc2O6t74aPyNjyy0ctjOZxUwI9cSTIiJC5v2FVAQKdLLheQIinF4+bvsfGvs
	 xkBEqPfPUC2ZIjcvhAH5p7HQw9aSwe7QO/A01RL1+vWi+TOsM8eCNuXOCOuzXDuMSd
	 MrhzWYOi3xwMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A888BC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370571368.7610.11283477674377212229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca5393c152fca9982ae9b98f2f6ce4bd9d852dc17a26c98e197bf958e9926d08
Date: Fri, 10 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783705713
