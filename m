Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F43E346A02
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787868634; cv=none; b=ta9EN416QA4I57i2w6imB4II8jMR8qT+u+v2CUATVrqYrMew1BYQdiIYpBln3ERH0anPXHGxfmBaNmdHC6k/R77werZNzTUKtRcFVXq7YB6mJ0zXvuIxxMWSNuW5P12IQVrKLJOfGfifHLoeT480rg/UnA0e7X8lxPiFgxGDnKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787868634; c=relaxed/simple;
	bh=M9d4SoUtxkOhI6mnuWxVDbPRtNorlVy+WBZcGukaqRQ=;
	h=To:Subject:From:Message-Id:Date; b=ctJlfv6DqRJXGFCw1omsrKiiS56FeNvffBwcMHHnOUQU4Dzk+6WvacooxXJkSHw83JnvBLuMk63QG5FZSoHs5Kyvd6utYjGNl2vfkAllKMEyUMcXIQISW1N2LhnbAh+5t9SRJlXml9I3pU5WnkN1pcHdJ84krbiUHy3cKtGHQ3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjQ0nMON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjQ0nMON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ECBC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787868633;
	bh=M9d4SoUtxkOhI6mnuWxVDbPRtNorlVy+WBZcGukaqRQ=;
	h=To:Subject:From:Date:From;
	b=FjQ0nMONaXW+mzJgxQJpQ1L0Qi+37n2AswvPHbvTzSoAPuaIqt3HDT4iLt+OgDxrA
	 7jlwCW9jtqjvL/ufe8/Ww+JEGBp8Z4AA8sK+hIF26OlZIfHi8XvPsJ0whIoQbgP+eZ
	 YHcRfcZuHRE6pMu1KAHdHFeXr+oY2I3hLy+SxWIoLLnPSyGWw/6PD5HY9BPyOS6o87
	 zPbf5fupQu7tpWsq+1Euh1n+zEXhDk+c9ye8bgFujw9PSZFcxUSdb99GryvD3OLawL
	 rQhGzrDvbZAB5pFXbC79lFr/FC0/6mDePRsnrw/h/9fkkumVcrh8fI71f90QbOUimq
	 nBN1FYTUnILQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4D0C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786863369.12456.3271848391596026442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615e5ef393efcf56898d155fe4233447c3485677b898c3e5e78726b84621b31e
Date: Thu, 27 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787868633
