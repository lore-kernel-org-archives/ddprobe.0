Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F126101DE
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742347194; cv=none; b=ZQQn0RL37rJif6uSdrANlTqcfgRjXdTHy+1h5lzIYnq9Lxl4oBZ5RdFb89gD4iBKRxxAnKAp9qW+La0nEJ1BruWw64Zkq/7zumkoh3uMuzxsLbimBcd5SiynxyUZjUurDwMvB7/+jusaWqhI77vvtShAh8BO7vmGmxU+udf0Y44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742347194; c=relaxed/simple;
	bh=puOtXQWMR8sMLZJavtNC1m+Mu6J56z/ieD+z1DnMlV0=;
	h=To:Subject:From:Message-Id:Date; b=b8hYKfuNTmryGcMBNhzy37N6JfxoXmMpQdCkMn4DXhn72686xsQHo3tf3+AAL1b6AazZ3VeOK9hmgXGq/Xy2clfBVmAsP5BM7qC7rpSDWI4wJQGvgLxtsOPndLp4zWJbRH7yvOU7tzuCLxQnSlbVE7nZ5DpyPusAqA1T5dM8bFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HV4i6qoN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HV4i6qoN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC030C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742347193;
	bh=puOtXQWMR8sMLZJavtNC1m+Mu6J56z/ieD+z1DnMlV0=;
	h=To:Subject:From:Date:From;
	b=HV4i6qoNxDv7eKIo9b32O1lgb6G59q1sNDXLYuC1qn7XKTHp6ego3/QT/bYStF/R8
	 YNQ8WSajX3uq125/E4i9RE7JkuIiOVoCs7hED4p75Ujx/i/gb+x8U5emYVFaVYNgxr
	 3hUZ7seDm48GmOR2p0HtEwccjdLyh0tBx2KK5zSEyXWuI7/BWXkRkljtSdhsvIXYMQ
	 smoR3aaXxvCCVw/nDfy44avJd/XayeRuX/wJm5ROxInIUe5r3M4Mi/8WQP3TDwiaX/
	 Fjx0tUfyB+Cu1WwNkULHr1w+LnN5ZNAzGyCJAuOMcR546qQv2iY7eGqbdfMhVBHsGf
	 9RWyH22iu6NrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C43C282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234719361.17082.15943369031464340080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5927f03f6c15807d3c74d3e4a20580d536a197dd97d0fc43a7058249bba04c
Date: Wed, 19 Mar 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742347193
