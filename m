Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B4B621
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 22:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717626443; cv=none; b=e7Mv3TbxxqVfq8zA3T9MlcRmd1SMjcnIoqIaiJlP+L51IQZytSSCLAm3q8lzuNuIquQNcuqQtar3qcVTHJpjAMeDlhge4UA1kz+rUeZzlzAo5KwqZxaLmR8IfjbYqJUynXgx/6rn7pDUdb5J8enfjkK4IsJ4L7NB1sT/+x2z3r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717626443; c=relaxed/simple;
	bh=QQFOzLW00A0RBRewQ0/WT3gekQW6X/8mxM8n3iVR/qE=;
	h=To:Subject:From:Message-Id:Date; b=WDB80kzKdBXI1K3R6r4c8COShqsjVZoyTwCHk7D4PolgiCwaH974NBjCFg2coZC8n3jL3gXvfIX1oQa1Hz0OKrRtxF3q1i1iwV8k/CUIp5HDmuUSTR230Q595CJjFYNCyo0juovphplJGuizwDZ0KI4l5Jn/YPZuyEJgfJkklb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sF3LL7T4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sF3LL7T4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC107C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 22:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717626442;
	bh=QQFOzLW00A0RBRewQ0/WT3gekQW6X/8mxM8n3iVR/qE=;
	h=To:Subject:From:Date:From;
	b=sF3LL7T4HW+ftpMCgSS1EObrhW72LPlGOYkaKDLnfAWhxeu4jsFvBRqoybLzrL7+R
	 vOM9+YvNoUpm/vNhw+a8afr5Zk0g5KxdVA6aURq/rZS9kBKNDD4X1WgWA2Wa3ZDuH5
	 NkYFTJM0BvDQxXKlABFn8yGoSPpWJybsuM0jTOG+wfqWwLCB7vMIVl82H+o3/WWS/1
	 f0BzQZwvM9vrvFgje5dHU/hXpL32dK9Rvqq0sStKq9k2oRf2UdkeGfeVVUjEYsL7kA
	 vQlYQTMtmZzM9hph7Tksc9oBL8kavGVYuzKZDseuLSodKp/qdegkIGeMCoqqov3UJG
	 t1kXj+p6oMi2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BDBC27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 22:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171762644279.2759.18440639248134613718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5802d538bbfccb75d4600ff95ed4ca5ec190616b2b810a9f8cf9e8eeb2816d22
Date: Wed, 05 Jun 2024 22:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717626442
