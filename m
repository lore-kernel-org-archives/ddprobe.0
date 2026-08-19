Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F29379966
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787175634; cv=none; b=mRCK4KUBU7nGnZOsUIJcjg1ROFbV8xWvTWAF/mMxHpgfKxXlvcUM7zhFQwKmAN36uM/c1uflpTBSnMZ4u98MT2yuV3lBvqYQ/ss9bYmqAjXB2lU5rzhjo8ZgxC7S9ITodg5caxTFDO3PqG/6LWMDtp585Ml+Qh0VvbWCSkR8Jxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787175634; c=relaxed/simple;
	bh=q85dTUrO92M0zF8IfnQYGhF3LXd801lXQ1H+U0WMNuw=;
	h=To:Subject:From:Message-Id:Date; b=YjeLDflWzL3CuHGIrL01IyThoQKWxgtgahfHLWgzxiTZxWuUd+TJEhgIouH1lDn8DFYCHHKwZmi1lgTbN7vskQluao1a7nn5RYpVkwgH5hRsdzY+jEm2Hv34H0xs46ut1t0tTXWNdYF8riYhv2nbSfSRBShbRZ7zcMESuUdaeQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJgQl8Sy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJgQl8Sy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEE4DC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787175634;
	bh=q85dTUrO92M0zF8IfnQYGhF3LXd801lXQ1H+U0WMNuw=;
	h=To:Subject:From:Date:From;
	b=aJgQl8SyfuUTirwepMf6SMMzxfpCqN6mcOFoOOgf0LEEHwopDErIUNTVngE3PCNMC
	 7Bn3+egnW+tPYBZQUG8/ZNkCjF4KvWbkAAqwnL8YHgZEoEStQnOWPH4zP3i0GxTpcX
	 vt/UInA9Waqx5ngHtyutMoZz+m7w1lePZhHTc8CqhRdxs7WwR9Aq74Ix+jhSa4QypO
	 dQMuQpRP/RMtJotsQ+xulDS+qVIwyAie4zQEf6Ua7s4ozfEK7WIBJrtcQpkO7T6mz8
	 l0lxZm2r7p+wouqrODpeQiHZHVZbQt88aI53j/WhatZBBSmjYafznyGjHtNXPyvDet
	 /070sPO+BbO7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE89C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717563374.30980.6644895414870309089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b466c40b74a6dc6b6a896c8718d3275d7f473cb78ac46e107e7c176dc2fbc01
Date: Wed, 19 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787175633
