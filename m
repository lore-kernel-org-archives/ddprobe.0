Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE8619A285
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718631503; cv=none; b=ULH6BGpbWZR5VZX3B3HbDpjzbxsCQGuBdfLAYqi6U/yuMgZOvXGPAeyjzbh4Nh1aLFKaQh5Oqa6fyHP1FOggrY5GXiLCCKzuQdKql6jDhYuCQxYeZvlVIxb/0CVn9k6zt0dfSWAk+DalWp9y2Oq25y8po6mG7COr2HYlp5HJU5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718631503; c=relaxed/simple;
	bh=rHb4gktPXuhFMgSqsgLkYsJi6SeRljwMYN8zIrJIO/Q=;
	h=To:Subject:From:Message-Id:Date; b=MPwYylvf0umxj5duJ6F0cQ1QcBn+UmxpvKNf6ag9poTHSaObo8/WWDl2JEIKMFiUZnGan2gr4k0jCwx0CFhNFnpgGE4DAskPxlp5e5doltY36KoBcIsDy534pHakKgSJcNJ5vI9NkpsJEI/YDEIgxYWDzMvDHAVs4of9fL9p9KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+G0FFJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+G0FFJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D3EC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718631502;
	bh=rHb4gktPXuhFMgSqsgLkYsJi6SeRljwMYN8zIrJIO/Q=;
	h=To:Subject:From:Date:From;
	b=E+G0FFJ8UeHw/mTLJXqn5wOxEshEEYSoOLiV3zSv0phtj98NFChwTUyjH7hr3nwvF
	 jzo0jB0Cym0RrJ868urQCw+nMrYYrqAbbXywCr/RGiIcpctGi4oUeijNEDUVwAMfNg
	 AWEgfVObAbFfgaLutbVf4ABZZvC6oK0cgwW398t3F5xoyExOSnZ5iljgiXjK0lBGu/
	 Tfbqo4vURMrSrxAT7MWcQSM/Tf2ZQNX3RpZ+B2SL7NhW6EUK+xzSrtgMmYAzqBc7o+
	 Qatg5RjAs3B/+OC0CzvCW3zL0eJpMyFoDT+8sXO5JT5nqP4Sgc2jYvSx9BpW6NpZj5
	 justfk0QwOIhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB202C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863150281.15342.6706913743568480269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5966cc129b6e5ee22da3f485cb539246e7d7bc62e85ab0d967a09f750230fd70
Date: Mon, 17 Jun 2024 13:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718631502
