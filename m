Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7DA2DEA61
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788315034; cv=none; b=aF8r79uNngzdVf9X5+d5bs6bD0MRsaOYu2HblNSp/zdoPKseyRFAy45c3kHkDldHwdWGTlCGKI4Vr2Y57J3nDTP/lILKvV5N40rsT1tZMit5/k5aMsp2WBnGIP3O2HfvU0nQELD9p3PoNhkp9jZRgUolnuclpUlUgIrILAtysPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788315034; c=relaxed/simple;
	bh=zX9dvhlbGbQSfyDdOz3LURvRJ/GjI1d+PTnbQAPPGyQ=;
	h=To:Subject:From:Message-Id:Date; b=GxZ9B+FPzVhPuJK++oANzS7SFZnOt1Za5OWHUUCGm1RQosRE4sEw8KCo4ogl8K+6joAi8JyKc8Jn3MKpl7uThjXrifNxeCGvG33d8rnTbiQXcJ7fNKd76T9eux2/Ql46te0/hhYTv1VkdLLyUD4BfFuCWbN+NbNSpZ8f3v0rmlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5QrBj41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5QrBj41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88DBC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788315033;
	bh=zX9dvhlbGbQSfyDdOz3LURvRJ/GjI1d+PTnbQAPPGyQ=;
	h=To:Subject:From:Date:From;
	b=C5QrBj41ug8ZYLvWjWDJCV8lDrAatgfFBN0wVGOBdPcZ9QX66ARvjnvtY0JKECdv0
	 04zlrzg4Q+icrLxACue3zXtfqipIyyw0y57mY3/zMOJIIeQMhxNFN5bYlBSt901xGW
	 8WbJca2Kf6R+Q28sGzpUnz8GtJme3JrmJYTcIijjiQOlwq7QNoDZPMbcuE5zMtXr65
	 aXaTJVr2IgwDN3XLgFH295Y+/wVt5HL0e9KCUm/CpcfasNBiQtq6jH+FqSg19uJ+JJ
	 igRROL7jwnzgedhZoh1mGyKyaMRmHfbMeltWAj3aeTwf50VjLf1WOs1u6J3GFUKYzq
	 XCDtf2G0EoGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC53C61DD3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831503368.12431.11226875756486275140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 370daa677dce34c1b3154941a90336656821be38b322fb3b304da98cf752ec55
Date: Wed, 02 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788315033
