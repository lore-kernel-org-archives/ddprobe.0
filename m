Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6F52F6162
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761161994; cv=none; b=dqRq75g7Ayuj8mtrwmm59EJBMTAhZrBOLHYI1SehkMoWRpQHajXrTfSGZsNhSDnIn8VzV5q0V1Tc/uTIG44Ra/YyHgC67/0rVtJa5pKYjGjWV6rUG1sSmePfcCEEQMiQ3+3FxxtUJdqgn1PmuDsvFEo0FRREw9dRmqQqmbqPbp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761161994; c=relaxed/simple;
	bh=TWQJVnXQw12dSk7UKqftW1cDd173S0dzEz9nHgJD4r4=;
	h=To:Subject:From:Message-Id:Date; b=P6p3IboV09ESew0mvQ8s3IZjA8p4GUTdmReidWRwnp/aemKHU08t3QKaG3Yn0TruzPqOinICQoMkU3NY2XOaG/ah2ZQjHOwEbFkX8MD4FRoVCItauu6tZxTGBENxCgrWfuJeM3+rShqB6KdwpLp0sM/dXEKRooe07SmYbuTcPUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOJOJvkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOJOJvkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09CEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761161993;
	bh=TWQJVnXQw12dSk7UKqftW1cDd173S0dzEz9nHgJD4r4=;
	h=To:Subject:From:Date:From;
	b=VOJOJvkznyWsDZYE+xHSyZPYnAg7AP1to4tAFDl+rwpAm5jF+TptuS43hPn2ARSKj
	 ma6ZljzGmwA/FQLS7i0S2+O1o7+VPqLotMsYz3I75vzOJ+oWAvDkkQLG9TTIsSxqQm
	 JC0bqyPQUDnUUwCfrPrcyLo1TTx39Ce4mR1I3nXbB9WC+eITpfRF78zvebjrkrI3uw
	 8aEs59SywLFd5RXftKfjjkDZD+tISm0aaU0oiQz4XyKqK4JQovHFmeM+doPZY2gO9K
	 MO/xbZOPfzcrNWwKZcOPFZudiOU7tf4ldq6J0hdZfZSbVqF9ouWa3/Gz6QKVgyaExw
	 pfxnr8G2+F8sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F471CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116199357.11517.17135184011273297099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cda2c9cdbab56db8fbaac3d1fc85f88a4a64bf6766b1fe78c02fa7fba262062
Date: Wed, 22 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761161993
