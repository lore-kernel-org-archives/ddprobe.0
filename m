Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4D7128395
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756526994; cv=none; b=pPHgZQETGNrKlkdQ3wEb/IzRutXbI+SgqzTbsU95YUslkPm1QlpdOwwS3fM4wBztbJM5744HY9ycHa0j8BJqUAGol7jgFqSsejYbdmFLEji2/ED1dfHsWP+Mm2lc0+ezjQ4OrYWd5enOE2GxVcupkMr0qP/ot8rTXVOxlSpTmAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756526994; c=relaxed/simple;
	bh=l2ayPqP+fXm611ledDUorZTW8pnA5+ojuZ+BREUcB/c=;
	h=To:Subject:From:Message-Id:Date; b=NbPInLpt45FJ/kShOgyjP78WPx26fqctJQ7eUcFsunNYCY1D7RRFMfb1R63LZB5bIPuL6anKyzXItQnmes8iT9+KLT6s08Oh99S0TRz7GE7KsbrSIVFyunmS2adoya7g5CmOz4m4IIvtD5rPSwQQwjMX+RsVXCG7LePKOyFNuuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHdw5QXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHdw5QXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BA1C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756526993;
	bh=l2ayPqP+fXm611ledDUorZTW8pnA5+ojuZ+BREUcB/c=;
	h=To:Subject:From:Date:From;
	b=vHdw5QXsf2BT3mecetzwaqP5bJzz/k6S6DPHhKxVUdYJvKoABnxm/JQNOMuct0/RF
	 oqdiHYIqFG0BW6L9kYeLumc66PaLTaiIU4QPT4h1odGfJaGnQI0JKBuO9x8Nrkl8T6
	 TrMBq/h0+Gqh5etWv6PrpuSPN8sS1bvnK5yZqJr1E2jQvBo5hcjJ5VJiEbZM47BFfO
	 r231NQpU5+p4lmlbBpMucEUqIU1qpPMML32Jjo+dAHfh4EC4AgO6nUj0OIXFvFjy8O
	 ohDZvu1zc5JZHExdICD8jhXzc1JVudXZrLkNCr3I+4UAH6q8XjrR8+UTKkZQzYsnef
	 zDF6X0x7b60fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BE0CA0FF9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652699357.24487.2517913547016943086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e0be5053c1dd8ce34b6f460d7d3a80f0bc261d51b232c421bac2374b39e45d
Date: Sat, 30 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756526993
