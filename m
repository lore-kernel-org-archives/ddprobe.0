Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B89E3CBE83
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776161254; cv=none; b=sa/0RJzyvUlv12yEkI2+X7UarTH6tf6aMmZE5Mlg4X7GMExExtr6wmAp+OL7ecOKj4RfppZY33q7EUaCw1Gldm/eiJv9NuvA5Vp5IY8ykUGeBMxOGaDk8Or4K0pxZlZ7Fixa7/6kiXapPC03YtEBhD1O15OakciwVhRop4SDJww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776161254; c=relaxed/simple;
	bh=/4C5+WIyE+QgNGAAoIQV3oENF7xoRE6ZjCmgo2LlVik=;
	h=To:Subject:From:Message-Id:Date; b=jSwOSfVfBblHoG4ySbQOk66OOv4vB7Sry4ApipA2vd1xL4sfX6AevAPVm+Ceu/P4diBrSU6H1BvwYYv7OalbE7y4LZ7/b5iqa6+00cGGkJZUSe1wCRyyK63CwgTxwHcsRfGehjptnlU+68206CRi3xLcEY+g0E9iBF1kpO6rfek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AonkdbNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AonkdbNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD91FC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776161253;
	bh=/4C5+WIyE+QgNGAAoIQV3oENF7xoRE6ZjCmgo2LlVik=;
	h=To:Subject:From:Date:From;
	b=AonkdbNQkwobux69FRBIw5Rn5gbrn9IM+H0SaDY7ZA3XkkdBAmSWky3VXZTFNxN+j
	 hYuw+/Wt8Iie/eCwZU8AltoZgXZXgjphvb0pKytVmBaXpJ5Z35aIC7Mo/L+mo67g3k
	 TfCEtEk5Z+W+tTJEcQoP6Hlt0hll6ysJ2fd6AJGL8+dXLghHU0oW4aMZj74z9dBqPp
	 VrwbxJi/bgtHu2HBWUh3G+0k1jsLF+ePm/SFrM3ZUnHqxlwYTSk1Cx6kTnNVBv+ThT
	 33Ki4fzw68RcgW2BRHttovredfw1Zhy4VHll4FkxMWpWCL4GAf3l3vJu9jYKCH2kFD
	 nzyFGQUjQBjGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF9ED7B96
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616125368.25283.14275215161324620470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db77ed4b7f42ef1a0616c9d09538d0722b854be7b846ef29a01a561647ec41e
Date: Tue, 14 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776161253
