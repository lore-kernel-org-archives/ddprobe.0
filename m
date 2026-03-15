Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7BC1A683E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773558294; cv=none; b=kwMkMYIynYaw/C0Vwtcj1YNI2YtoozQTaAW4+sl8GbONo087YZcUgGh816ngQ9LxqaVU5K61dwDRtEOYEzZWCj+qxn6tWMsbH/auyOrV4kT4zWz4xs8W+PPnUPm8CIws2pWh3LZ8LME/DF39iwOfyzl03ESVHwzDSf2TDr/KXxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773558294; c=relaxed/simple;
	bh=4Fl26UqB5bOHaRBs+6UUbdZDSb1BvEjQYvhbV6J+C/Q=;
	h=To:Subject:From:Message-Id:Date; b=BoI7QTNwVJ6YolrfEKVZQfbbhiA4bz2t33eUuIyMLTzlj3Bqet4mVq/yjbbYmGcn+ZMDnKmBIXuF8jjWYQgE8AuDMRp6GmgqnRmvEkgRnftw7qp4ZxKgg8iOo6keKAF4BXaC+dedgz/MihnKYfLgxdMe6ET60imU+D9ueuK42gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXDwRvPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXDwRvPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5913C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773558293;
	bh=4Fl26UqB5bOHaRBs+6UUbdZDSb1BvEjQYvhbV6J+C/Q=;
	h=To:Subject:From:Date:From;
	b=HXDwRvPdJEG8a4DM4XhOq/K7S+SrgZHNc88wSyL+xfAoGbA7Jc+XFkH3FOM5f6C1T
	 hfr0s4Nr47k1g/fQRvpXHf13lW4qxvuNcXUt8vWdIuSSheycpHYPtdEQ0PRZB7wuXf
	 HXcDrRsRx/bDv6ZtdLX7Ob+FRartet41rb5TdsyPUSEpG3q0BXvTgeVsOkKfWy1pLM
	 Hs8Vl1d/4GpHGRuqA+4KA2rRvzPMSl8dbGsJ73m47QBhpnn3tmOpipZR4w7QwcvBhR
	 I7qeipcF7bI9RY/bBBuTHWkYghrC2ZkryE67YnEV9SLxBwedXkLxnVcsi+yyOCxt4+
	 MiKnYJGnW1O3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9760DD58B0E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355829358.22549.13500000576548254061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c89905bf7f9e61f1d981aac4cfe7938354b992d30f7f85250d13184dd331c2b
Date: Sun, 15 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773558293
