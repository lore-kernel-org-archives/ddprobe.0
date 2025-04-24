Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC6A215173
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745491194; cv=none; b=jZDTy1dzRUDmz3BWHu6ecfV4Y58ZvHH7S0f8BHvvflGPicoJ2MmY9PZpuHzPHR43JfIUwNlGdGwGLfdx7ds+4eGzRgT1Zy1TZdS+kWPy5jNgItuvT1bnuCw7dUbm6RMSI34UwTBleiKov5OCTcVwxAAMv42yzWcJ8BgCjLVL/ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745491194; c=relaxed/simple;
	bh=pGayA5bKbDKatNw6ARHyiN2FKBYLZeFGXm8k+wqczyo=;
	h=To:Subject:From:Message-Id:Date; b=Bg98IgUqZP7y64csiGFmEiHjk2xnAB+ASN+6NfZQqbkVG5yEMd1xcMaMHW4HC0Y2CETmyjLycHKkxYW1HATzAIWTU3XqGEpfHrx8J1HLnfh3bEVvamUiPP4aaSFTYh5khL3ily+0LrD49T0AcTQiJ6/jwE0mKuIVujsONoDX//E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyNBOpwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyNBOpwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D06CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745491193;
	bh=pGayA5bKbDKatNw6ARHyiN2FKBYLZeFGXm8k+wqczyo=;
	h=To:Subject:From:Date:From;
	b=QyNBOpwSKN9jXCuv2aAF5aM+LVZw4NWn/78NFz53JTB6J7f8DNBVb3jgdbykrGa3V
	 4sZKv343Y094GVaiBm2Czkv/Ufle+hOaVz2tAUNndIQyjSmy5uCiwqEu6NycOFODv6
	 3fbmgsZo5Z4zr075BRVlkVHP9U7kwMwDyTg2wXB6vtO6i0P7GmzUJqRTl9V+alFu7R
	 FIRxTvhpoW3k9lpciVncyXzxTVkXYM1Yrx0QFkkwkoqCnzT7n5kAsSsaqWWE5hjSQC
	 92QKqReEZcvqprNQPzv0JophMj/NVTphSD2RHqqo6+s67OtP18zpTyhMWRc3m6aJQy
	 fjdtQuNrYwkAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE14C369D1
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549119357.20811.9538671377282183641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b503953ad43a4d44d0c11c9a3137d0fe65da1b4600d4be3c1bcc547728be1fc4
Date: Thu, 24 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745491193
