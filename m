Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26645184E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764453174; cv=none; b=LMUaxkd8R4R16kfMbYoRa9eJXSa2A0OUc+33f78lBCBd7cLhNULXDT2fgR7lCB/eYgbRv29wAPUszwryFbVM06wB0IcMp3yZQpcw9GxqFqi+NRiQlnTwlFGGIGqJ3pvEc7EbDcmyKeXthbMtB2q1u7kHJ6u5/PhLTfZqIGNcTts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764453174; c=relaxed/simple;
	bh=Ph2I3ZhQNdoJb3VhcP3xpToEx25G3KTZOk8EdCzXp/k=;
	h=To:Subject:From:Message-Id:Date; b=TfqLLNehVdmHd00a2XWV7RaMkfETRc3AxdC9w9lzGpBB5cE6ryOSVkwTeiwMYzwalWLSt330unyfveFNB7sbFDC5ul+L6uxxlqv2O6Gv3wgtGFuQB3sfLvGSxujhhpZkZhSDpOhgoqzwlVCUvS9O8mabEwJ58JhsKGc9KzJVSgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+c0B+SC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+c0B+SC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE86C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764453173;
	bh=Ph2I3ZhQNdoJb3VhcP3xpToEx25G3KTZOk8EdCzXp/k=;
	h=To:Subject:From:Date:From;
	b=t+c0B+SCVd2nHGMWs3PRuGm7Oa/LXViqZR1LTqsvxAC8tyfvCeVY9mYnRJgNyvtcj
	 yMwC0W61Or7/RRlew7tpjKDiGYKEWAf/ODddW1xmM38aat/BDffh2upNUfd16HWOI/
	 88cZa5zUhg3PAX/IZhRRsUvOU7kBE2klAQQB2IUTPu3Zc4vO81TKhYQFuhKSr3ZTec
	 FMieI8BqfygrZyNz1fo9G6mLxD51v+5/kSKqgsBx1V003WzRDfmwTK0QjDNl0KaXxb
	 ckuGD406orLOXlSENX6heQkVinUBEcCekbgD5ZCCdHJUCMUv5tpFJrXWV3IjoAb4n4
	 PBXeM9AgJL5NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E3CD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445317359.13892.15491179043171600746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d9b5e2ea7041530f5b7fbc6f753b6c6bee88fac876d326dc0bcbba497d54b1
Date: Sat, 29 Nov 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764453173
