Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B82923BCF0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758160794; cv=none; b=NsEzcVbdPDfmiNnnnOQt9yIAolAwInLCMBtIKAO1v3/E50EhkCYnQWlQuSjrF8TWbCKfq9ZS5nFl1gt9WnI3vUk20KKL6UnjLzyNmJdfFRxFpaWsnfueeODDp/2jgEAP1nC7i/2lyM3GPR39cLCSmyLMqdTpSuZVJAOkGemjMD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758160794; c=relaxed/simple;
	bh=OpwDu/A1grDXkTH0UfdhephYR6Qt+M4rfbnQbdMVarM=;
	h=To:Subject:From:Message-Id:Date; b=K+rIBnW6YzjoEE/bvARV6XTdnSzQoaQD7L3pRrdlfqhSnr3Qv4m5XQtnPwsUrLx4yQ6EvEwlfAIHXorEi/iexfCDfUEyqPkbsEVLoTzy6dVk2qbVtkWnLuC5XYJIU0ySIHEkk/VBZTN+BB9BZ0SwIj/uhatzgBrinGGy4aagqdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNf7+qUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNf7+qUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E46CC4CEFA
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758160793;
	bh=OpwDu/A1grDXkTH0UfdhephYR6Qt+M4rfbnQbdMVarM=;
	h=To:Subject:From:Date:From;
	b=rNf7+qUXF7/mZxw75XlN6GM0aI/lW7iAI9K9VNYfPPRTjE1ivbnlfnLySH5Jqtn/e
	 QPQBYAT8CqlSDLNyD5koyhll0puLIiaEw3oq81076WgSfYMFIxp570VduyGGmjQwk9
	 96UWpdrTYyVNonnWrjDjrk5vhMos7oVzTzNYIXAsd9O/7y11zorEH1wk8jZFGgMwN3
	 zjOwd9mbLTakZ/0BqIZOGPh/E4i6AGya7GHK9gLM1twa3lvCqGsFtliDm7eJgR1P9u
	 m2HgHZqJX3OwgqfMDBCBt072a3pkivKGdKBB6d9MbHxEXwAvLT87fzr0Tyy9yQIrww
	 IqxnsjhbrklhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F426CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816079357.23665.16382426448717116809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188f4e2eab34166960a392d2e7cbc3c84bc87ef997147ade470c89a271a2c698
Date: Thu, 18 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758160793
