Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2301F1DD547
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730124354; cv=none; b=u06iQh8XoLlUx8rOcvaBbD4168WJZS6b1t5nH0GiqfSYaZTngwD96omm6A2qWOhjD0P6Gpz6PDYP+4kCC1nuGquftrXyB9gOtvaFUlEla/9ZNJfyFB65s03f5nAj9Sg9TNWNpXUGzx0NAEFV9Z234Y3oh1HGsjZ8MxrMOuz+K8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730124354; c=relaxed/simple;
	bh=NXorlE5CclsdIcF37BEY82gnCiLJNx1cTSeOpveN+zk=;
	h=To:Subject:From:Message-Id:Date; b=kvhdfivrlyCZbn5vHGGJ92qRPNat9vQNfBH8XkVV95Rag4Wzle2P7kUFhYZhqsi1v7vHkq6HIZ8rTsqp69z0NlAvQ+1mGhmQ9ZR7iL0kTHq2vGgPTRJ6BNO01yrFB8jf/lX7kVPFGymUqTg/i5i2xbk8sfbvVdQ4K/UCTWu937U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJm/CloS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJm/CloS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE19DC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730124353;
	bh=NXorlE5CclsdIcF37BEY82gnCiLJNx1cTSeOpveN+zk=;
	h=To:Subject:From:Date:From;
	b=uJm/CloSV76XYVSJS5z8zOTdYZBZB874vJsrnNX/LV+zFSnZ5tIs7rvfCdeM8w23/
	 rl47NKcff4kxbov8sRIiau5noBJNu17I1rEKChd/JwjZdn1Zo3fFL0hSeTrvF/Vig3
	 9x44O08Pw9JgklOil66V3QBHAsfs/BVjyQNXiZ6UVOw6eiG46z+OtbhfkCf0jX7fdx
	 Lq/yQEDLgGDYq1lrwcz4Q7NcRyhDUrWYNawJ8grhqEGe88OHQwt6edhSdIy2MJpI+f
	 IWxVXsLFWRF/18WRQhzHu4JSjyfl/Yp36ON18yPcYO0RCcrHLke1QiKXpU5Q10QJOK
	 LvF5YAVDo1Kmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A11D33986
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173012435359.9672.7613579985611434635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab2a2460ecd31136be4e3330ac6dc1f28d9a4abf25f0c12ecd923aab2d1dc34
Date: Mon, 28 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730124353
