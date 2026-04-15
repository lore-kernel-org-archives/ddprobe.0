Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5B83191C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776223054; cv=none; b=e8+5IA+RkxN+fFCh/v+hJce3i/Wwnp/8o7QcZ/1TOEXm9NEatrv7fwfuQ3UwxNjs96CRFmw23tk0hexze7lxHCsxVaDVGmbxOnS8+Hidv3FwYicOJh43dmpl/gvaazGRdjuV8irZBCWWbEIIZn2ubLakojde/7Qs6QN1Cin8Lg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776223054; c=relaxed/simple;
	bh=LLG7KFcWf6eGtuEMnUBna3f28CMfUw9kB83watRMpgc=;
	h=To:Subject:From:Message-Id:Date; b=AYBoBdRShoBuJdeze6uKYPzWTdSaywx+jG1LGTRFT8+C1hDFtkKlIy7k+vM5Xu3jBdnLtHkrPASND8eZzrhuTOfE1bV636LCksFJ/4rM7rHLRg0ehPh11iXUFP8v9hPai3IqEHyIT1/aZ8Q8j+GJkH1pfNt8yGnlh5kBU9qYAiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pmon7rzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pmon7rzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD126C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776223053;
	bh=LLG7KFcWf6eGtuEMnUBna3f28CMfUw9kB83watRMpgc=;
	h=To:Subject:From:Date:From;
	b=Pmon7rzuGP2fDzYnYPOhTlH2hg52eEIQfvidhJ1QlPxJgMLVZPakF5GRtZpWtAt2w
	 eYmfxHVULjgQdmELIn1Y2z8cj43LdLjPv+sgEoyqDOLtzB1iDz7U6suonLE2PwUxvU
	 xjKuigjoIZqzMtKhy4HkB53iOtNUPOomxaVnUOWwkbOKKisFMLAjpvii4Ap2aSU72E
	 azQx+QjlGooTA+Y2KFh9TdKX+njp6eZyqik7eWiYiVw7X7kgW4uo1+hHQIyYXp6Ewk
	 JLLJfvzVIaDEMidae2dl+bswUUfLRbHDfkpBO6zayyWGcXTvff0lzJpC+HFEuDNCQA
	 Um12Lus/KQgGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E20F9D0CE
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622305368.21787.5153493648014658779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4cdf5c8a24880265a369230dc5406da6acbf578a4d18ea62a7fb9d25d038f7d
Date: Wed, 15 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776223053
