Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFB72DA760
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768230233; cv=none; b=rkuODYLsm4jzUy4AAbh7Cwj1utYnkMxNc21gPMKzMBW63bHqOuwuCxdJf85fHWNJwyGhitIHmjsTnpb/CiMLICi8AjxHd6JZG1lfcE7uaDGgJclizn5eu7qIenuQkOVf8nVGT8PFP/cJGhs648cc1aV1y2jBFXpgpkEZPeGiGiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768230233; c=relaxed/simple;
	bh=bSr6OMD8a2Rx2VHFVp2GplQhcCfLSaTC1dYSEi2X2as=;
	h=To:Subject:From:Message-Id:Date; b=SvAMZhQYdyC34xX52O89hN/394hVY99nw0r5GaeDOfKjFAFEgwPMY9pXg6e/rREmYG+kaRj0N9+hm5Xamh8etYtxJNbLs+5eLJ7e6DOkhb5C9ixQt91DLzlcMcGJ/K4AugCdxqtdXSU+p4vluTAciYSCfSXA5aJeB1+ydpSJ7aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQBmWGnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQBmWGnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44C8C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768230233;
	bh=bSr6OMD8a2Rx2VHFVp2GplQhcCfLSaTC1dYSEi2X2as=;
	h=To:Subject:From:Date:From;
	b=PQBmWGnAFNa9+IkK6V09uXIFXkbwq0IsQVXTYu77Rmv/xertst6MUCmCEwKUSxBms
	 l4KZ7Sfzwo86OEH/ZSiz2uB/0alvTFt8Y6Th4iQSd8Zb75lITKx7Dd3bYGPLLFdc0G
	 rw9c7J6ScAnk1v741z5MlguIh6FA6U+lgU+0uZdUsSNzJxQNXi4MyIW5BO7d51F+R6
	 ciuGpTsQNF/le4UcoCzAYTqHrmdbaIEUvoM7NR7JRTJnrRu/GM6VXftF6/lKdCLkth
	 HIcWZy+F1OZZuqwBm5GwRT1i94MRD9jw1F8k9/27V4GcSlaTDWSII3dRyVnjIIEmTu
	 D6PEu7I0hew/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934C0C9EC97
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823023359.31474.13653065718462663360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d28c987e85971a610ec0a8af6100db7fa9a1ee9522564db9f7de0e56b601868
Date: Mon, 12 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768230233
