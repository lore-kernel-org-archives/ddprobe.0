Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9423FB1B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734666953; cv=none; b=fxErABvX0drUxxGf/TPNoEFG8hj8+QcHt2Zgg/+UUd+9rCVFe8e9nKFUDtzywxleghjiczjz6IleHi7ju5ahZH65zQ8sHEmpz4AGVQlsyMeW3ly5Rba8EqbfVDn90JqhElrHT/IkvQI4IdQkdVbkiPte2oyJdnEgb9De/K7BQlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734666953; c=relaxed/simple;
	bh=hU1j+TN+zepGwNKnxFgb4L9rGL1k9GSYEUWJZpmfHkA=;
	h=To:Subject:From:Message-Id:Date; b=ty+91/DeIUePCfgzHoVUPFWwsmhTe7XuezMEppAqpoi+KDOKETNcns6fZiPhhaf848aEnznuvd4zDJE8vHs17YyGicQzqWRrepT8qtnNewX/C9kyimQCg9QdLrscxdlgF9AYZWvH/YQRbmSWsR4/f9zNgiwjfKQd3ir70EIE8mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/kru8n7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/kru8n7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5D4C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734666953;
	bh=hU1j+TN+zepGwNKnxFgb4L9rGL1k9GSYEUWJZpmfHkA=;
	h=To:Subject:From:Date:From;
	b=r/kru8n7es4bhzZeAAlzvv6ltZqJZk3Q7d43bFbslnOb7QgOGJs5TewmYO51t1tBf
	 EdaR88okj54gmfQhqVdHqfqMWZru+LsUfV0sOS5I7cIzozwBxqmC9XLOzjEKt49baA
	 TboJAzkfY4LY/G+1M2w1T13AfShZbDa4qpBmUJsoxSxo9mgOkB4khvG174Nrwt2JXW
	 EV4UACghJDc710zA/HmFSWFJJAethhMoVK6uBsYL70mCWSTOq0cd+qhNX4nLTxuWdP
	 iuc413TQmjHxKQvbY0ssCQxEeyktWIXenSJNACGlyWRO3nJ+p4h7gz0DvBxPq3AOu7
	 LY6/DV+PWjiwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F186E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173466695357.25961.8535330858694102552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380274a2608272d5d38640e827db1c843a2d1bc3a3c1ee51f238a6b8e90a74ac
Date: Fri, 20 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734666953
