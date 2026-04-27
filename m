Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12919269CE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777264054; cv=none; b=HbvW1wfv/Yu03UY9NCAqUfDdMFgzQaD28nGR/bWuSsNTfPwHx4VxRABKxAPkq/gYPWZna4ECHlUS6pZw2II511tN85PQ5adoaPs/+qa6t+fBaGbcNxQhZWe6DqGie/XXers6gFSCltw3TfUZZxfGtIiLq45I71QbsHg75mG3xJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777264054; c=relaxed/simple;
	bh=zSi7zYi9mrW2S4RrSkPxEZj/wKhq9k7SnScy6+N7oUE=;
	h=To:Subject:From:Message-Id:Date; b=TuSM/KpHoCdbh9l9JMu1reABlkgZzWaKPAWyGQhIJXyaQM7v+dUIuV2BZ/SoeaR0hh/vybv18+rQW19/XAOn2ntjuwPE8DAqYdVvBWiZL01esHtHaAZmHOTt6dDQqEYEF/Bm685Y4G5P0wm259EBIHkbUcxXm4fxRWv6DvJgQCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiH391qT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiH391qT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6DEC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777264053;
	bh=zSi7zYi9mrW2S4RrSkPxEZj/wKhq9k7SnScy6+N7oUE=;
	h=To:Subject:From:Date:From;
	b=QiH391qTsmwbZdrH+8EsK5AoTMCfbxW/0rqmiLgkFPp9acrTwIzq8ki+TH+W21PxL
	 9NLAY6LvQgYRMBEDTEenDXx1A9x0nbaMwqY3mnaKNP53ceo7sLtg4uvPH5QIG2CHok
	 GY1/toCH06NBQGVK33qulWpt4LKJlsmZkDZ76ylVyzdxqOKVJURE2G0bn193jOarhY
	 VqX4gb9QSz2NcHq8dj59jFSltprRGTqH0gHohb7ugARkFwEKAQ7Y+pe+tkall0ay15
	 90yDh0avgQgmES2AzpG88hUh65kBPJYBki2+vhzu/0Yyh2IUEsvibSpoj2hRsNtON2
	 QV9hTVwWAuw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A3FF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726405368.10267.1720678232100607044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dce9b27e1e4e86fd872af640c86f8c3124f0cbe0238feaf5218a40d80e37bda
Date: Mon, 27 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777264053
