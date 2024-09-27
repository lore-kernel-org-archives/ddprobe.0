Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6FC139D04
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727402154; cv=none; b=Cg9pAjnY8LN28jSuNK3gIBx6vjCx4wAOnT1deTmZcxQtfAfv2AccX6FChihKLiQIteh27YbSC5aMMZpFkM7uUAYUDkU/am9I7nCoFrS9DL3hlHtHFA64UANOfz0a0+kSOrWnrPlZEMmSchHvHzXQBD5D7yMLWSP7+L2tIu5qDzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727402154; c=relaxed/simple;
	bh=so+K8TeW06DFUwpcZhgqGfuQWTf2oGylPyrIllP3pq4=;
	h=To:Subject:From:Message-Id:Date; b=svLv73cv805+eA1QiVJNhgUGFUTSjTyyjCvJndnVRKmzU0sA+VLGm8m8zj5Bt0TBOub18JPUToZS0AIX39tb+glWiezE02eDAtF3qIg3f39P0E6wFBDEdhQrVkvUgBw/eKhE8EA77SU/b/b5cGEQBasHtLB4Is1bOPLNnlB0r9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdbFxZFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdbFxZFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC22BC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727402153;
	bh=so+K8TeW06DFUwpcZhgqGfuQWTf2oGylPyrIllP3pq4=;
	h=To:Subject:From:Date:From;
	b=NdbFxZFuhzUbYkzni7Bpe7J/v+OhYLR8an2O4wfTkUNvDlRDnZOhSi/3pHqvNkZjS
	 RJGNY9/btxTRzWmrE6ittFOrAe5VHtVBveCZOaoKdQm6gTJvqh/AVSABRAdDPLwf4I
	 ISo8CV9tYeXJG7dzXbQanjQgL/rdrmzjrN5a6ErjKpG5GdW1y+Afl1XJNncyYn4JVS
	 E7x1gqtFMNlzG7bDlY7ZT8MLiAEn6ZpOrdok0ELUy+nb6qDhAHsE8zjbZZppp1x7oO
	 3NIac6TBQtwOehR8aRJeV50JjaM1mh2pdUQ+7L5chlFqUsLhSKplfknoIr+4rRqEXB
	 L1Rp3dNLgW2JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A667DCEBF66
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172740215367.32091.15229639897067198991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94778d3317b8bbc47ec6a23dde1fc70e92b7ee7d219af0999d40cbff3eebd50d
Date: Fri, 27 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727402153
