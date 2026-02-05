Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2052935A950
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770284034; cv=none; b=tPd7pqQ6usYia8/oV8MP30eSnQNnRdb/uMf51Y/r7NuFwhsFpDd3lOc1p6Cy7zazpyAB59NvgblyTGtaCZdsdnJGfew16gzWPSHhGXt1u3fa5xNRL/KAe1WVUTPi5XD4+IEJVAtzz3T+ZgilPV2si8OaeHiQgNtNNSd6ZAprsqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770284034; c=relaxed/simple;
	bh=FdVzKL8MWA5HF45+bvOnDcbfULTuRNf/kYQ7u26MDPs=;
	h=To:Subject:From:Message-Id:Date; b=GYCwBvPCjDtsEZ0A+25zARTjg68GyzuOGruQgEkmsTgzrdcz4UyOz1+/tsDvngvv/zhoofgM/MdfiMVgS1urzpD3I/cx/uFCDkdGD5m4CdyU1ttoxydbUP3UtGuCsBh5JOxVTo0eD92L42nHIPmevWGa+gxflov6dpjfXa7XerE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0nLvt7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0nLvt7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1EEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770284033;
	bh=FdVzKL8MWA5HF45+bvOnDcbfULTuRNf/kYQ7u26MDPs=;
	h=To:Subject:From:Date:From;
	b=L0nLvt7jqc/lMwYG5rBbU+l9eUeGnTxw8/+Zk8E8+gAg3jqmUqt2k7PGSYG/rpb51
	 GVS4O1vnlWkbivKfaiWDUOpzLJ9mHCn13nbExssqJs+22SGOCXzXauq7J9bQZZhWn3
	 wI9uzBi12FP9Wtfi7AGfcgU6HZQ+LXur3peEmv8jpvQ06fSDTDurqR98PkEp2ASrly
	 5jdi2XUa5PeASJTPX3VRJ7MVnhE5oG9yeTUEKE2hqBHfPg/QdXPfkurxziFGg7GBCj
	 z1SkWv8+ODb+LL1GcTdRKqy9jNO19NinhPlsPMgixXCeFaYPBEQjjGcsUOAinNaCNv
	 OEOkaAYHS/BQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98552EC1E83
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028403361.16305.2634885559227914419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad0249d12ff58d63c883ff8ff04054213246757788d339ca4b4a37d4c23dd02
Date: Thu, 05 Feb 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770284033
