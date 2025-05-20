Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2856928313A
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747766395; cv=none; b=VAPPH2O8JJcCMAWt900H/akXRfAGyBrTpoB0ii9WIjfcQ/iiUPfmuCf5Qz1nNKcwPjkyXv6R58H2fZ44RqgCeKMEJGid8eGBfCgv5uFvjNewFGHypMx4LTP5abaXp5i1XhAGjbcQOANZ/6QmTkmSjWJ5qaBpnBfU3bUu0CAHHjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747766395; c=relaxed/simple;
	bh=TqsDFnivfCnyH5u288U79zYcPXnSb8sQW23W5zNVWb4=;
	h=To:Subject:From:Message-Id:Date; b=Pp6Mt9eaLHJLEmZqCYnNv5AOQ5Z7bKje6WfP60y9FniGFuFAGtT8V4q8TgPfufc1A8UCzvLmLzQcZhXxqwLjSjFRIzfnkuntAy/JOln34GC8JVUL4DwnrP0UWlI+aNFR4eK2tmaHiQafzETJs0gEuPRR+twBg6AXb2blx3WX95o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQRjW1no; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQRjW1no"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94F5AC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747766393;
	bh=TqsDFnivfCnyH5u288U79zYcPXnSb8sQW23W5zNVWb4=;
	h=To:Subject:From:Date:From;
	b=fQRjW1noQfeKXxkJQXMXPgghZLkYNeB2m5tZ31KvFMiMrKj2KjugzKV5nvhayCp6x
	 +EInRV3LcCe+VBt/lKpNpnCTJilju+8ZeCCrkZH3/qTOWgmHHLTdWrkG29MhsAHC6Z
	 rjLJo/AGkxiJol82G6Soh9l/f4+ZAVv97u3bluwVpT0hjvExkZMkFuLlE52b5XnBVR
	 wHHliaygVhn6U4FKdo1SNOAdAlKr9rKg7neyY/3fLczucLwmfRN83pGCEjA7IB11lL
	 X0Z6h6Y+ZY17x+NFguwX+lM/azjXanxaejSjMyBjYSMduZhmGpVIoJyug7vAnhUN4m
	 NDh2DLWXbbg6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E610C54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776639357.27600.1907555896761454758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24bea202649587e6c6a54f301571a78a7034c306a067dd9252c86907dffa0862
Date: Tue, 20 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747766393
