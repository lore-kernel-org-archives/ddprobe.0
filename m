Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EBF248F64
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777243054; cv=none; b=g0iZxgZ8DdFxoq8grXLq8BklxLW4lYoVa/6uQVQxdzWshWRIJryahYOoN9gyPSLnLFsTbdEqd6O2l0xvtjzWlxM6TdTUnIqg4uX9hQ1DSKmeb5OwdkJWWP3RTQB63AXJznW6+NbBpgUnSKCtXcnXOBuWUwcaHuRC8skcS6z/osQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777243054; c=relaxed/simple;
	bh=b2eK3VMVDAH6dneeNXf26utPhq9seZYbfD7iHOFC+gg=;
	h=To:Subject:From:Message-Id:Date; b=qLWc6m2BRDyUzvb8hUXS3rTf6G1j8nxypSl8HDlE5yrdArwSkOYJgSNSGOIirP/EdBBdMIl3El9tRlHH/GMZvSLohbW6Exs0JxDLSbHpdFyulqgv2XVEdxlUAUHl+/2U99M6BmPcnwsecDAiYxgngYZFpJ16QjoVmvxd7GvJ8tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOsKrIXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOsKrIXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EAEC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777243053;
	bh=b2eK3VMVDAH6dneeNXf26utPhq9seZYbfD7iHOFC+gg=;
	h=To:Subject:From:Date:From;
	b=oOsKrIXtFMzOaH9eMN0BWTQEXwQVTa2ox1lqrhJEp3e8gERe5E+ULEYHGy4gxBxsh
	 42+Lu/DQqj7aaUkl5fy7wG/0CQfY2RD7qAlkj+i256FPcDHT650SrEavkRUeo57jhS
	 ybfC3W0Vk8Z+2c04pvuD6RL3xeA7k90Bs8ml1cj+rp4UWUj0nXGnQOn5FhMr/OjLL5
	 XZjFNZVOcbH1Ame+S34S7j8pPZF18YKcqyc87+iZp4bekGwFrr4qt8Q6Ol8X5a367S
	 a38UFo1P0udlu15QYZBtze0KlRaJdbmpu34fAszPo/VS2ksmwJ45H99KqEsB9h0CTf
	 eQmLn2G+t0YnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7593FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724305369.30159.13511835928403402419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330ae556f1976ffc99d361d146fc0b914aab8f3ba4799a22adf03d5ca1d8dc8f
Date: Sun, 26 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777243053
