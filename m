Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE35B1FE451
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790956834; cv=none; b=KO8DjpScc61vDwuP8nrAhT3spJ3XoRCfI+0bWQcbQNxc1AHgxDPfB42gihF0zWthIfnPefNETHNG8bfU4+WlXciP0l3o5wm6ix6AAbm3nXOWhEYy+qle8ir9nbeM7pUBZN5Dk6M+i8xg+Bq6bpeBkKE8hH1k5U30+KSlCkbee4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790956834; c=relaxed/simple;
	bh=UnOCasu1DEGijHS7KA5XW7v0eYr4wUvP39wEH5ZvSsg=;
	h=To:Subject:From:Message-Id:Date; b=muCpqulsk4LLTfThhQN6c6V1lPzc9f9AflDEkY8OTS+BKnNROejMUmxiQRjEZ4b5vrPrETMMWhhBG9SLg+tHg3C2YsN5nGOR91Oj2n8dYPfqP96iwIeMO15Rdjv9NgYuM8qpNnB4lvzE7F9JIcawNHUUdrGcTQocs67E2uXtv04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdGdnbI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdGdnbI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D425DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790956833;
	bh=UnOCasu1DEGijHS7KA5XW7v0eYr4wUvP39wEH5ZvSsg=;
	h=To:Subject:From:Date:From;
	b=kdGdnbI7f/3jPP4nCZxN+Zqm1p76skcTYhByiyet8kpEmmARgvzEeiLbeMf2QhrKQ
	 0D7n0a47ygmSml2aDPB1jppAcFySCwSYbwUZeIW70GMrGhv/YEtPaZyUcUECGj3Bw0
	 6OnQIyoh0PhceiZr965xasdxlEsGNQ52YnVSsnUD6DUtJID2YnKDmloO5fJ0q8v8O5
	 MjKV6sV9ZkYQGsQqeZpjj/FWEVxVcYu3JbWISf/YKtFybOAyzdXR9Tg0LUIuWSQ7BM
	 lHGcfZ7F/MOzUnn2NJUL7zvhaUL5HejAP8W0kj0AaW9DPbbMaU14lFjig5XAcuR4w0
	 MGrLzO3wa8jFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EE6CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095683371.10657.3208855130619650641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e30b80d6743f31ddd252d858650a40b3c7e04dd72da3e6ccbfed3c0b764fe99
Date: Fri, 02 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790956833
