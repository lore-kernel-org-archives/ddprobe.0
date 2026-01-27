Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB052DE709
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769553835; cv=none; b=IS/HEk2PQHlCVxHDLO7Qjbxye0zjQWNA7pxdWj2w8aVzclESfd62ttpokiiLFmFR/amTB8iVrM8sX9xC4d6ZANcaORdO7T4+30EdXM5bcV3FHRy14wKK7zOTS7Pu0fgkK5DKE1QzfRhiPsabmNQ7V6IEEw9Vbe66h+BZayw9Jxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769553835; c=relaxed/simple;
	bh=NeLYSTYFj/ZRXStTYFT0Bo9GyYnpa+R1E87+gdPuA0E=;
	h=To:Subject:From:Message-Id:Date; b=ICX4HIJ0TkhTyvZyglINrDoQdTktgPYxkLWhopn0iLrcXz5S26gcWEg17gZjbnOP934FzA4Lc+KESd4NHGUPZQGVH2lxpiWLwbTTzvYH6ZUS5Pu080X73/tW6GWxu/clLoaBdoSn8FsASU8M2+rJIS7ArB92tlvPSJ8iNEZaXUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk3toS9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk3toS9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BE8C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769553834;
	bh=NeLYSTYFj/ZRXStTYFT0Bo9GyYnpa+R1E87+gdPuA0E=;
	h=To:Subject:From:Date:From;
	b=Kk3toS9k7LhYRpFHmAosIQoUFh5UDcLoeIXfCvIHBkpaPQPpQiaC1IGn/Yofdzqhl
	 sxV2lb7Ni41Q87pBYfXHrs1DLDTEtC6o2SFjyGYVK5HIed0KNclVmTQ6aNgmgaik4U
	 ysN1qgXwCibk3hgJY8H/EiR6c2oL9ypRyTTrStxKWCm/7Pq1/NgmjtY6M8nRqoMuNa
	 REjxa2HVjfpmC+Wn0WvaqO9fMj/PMjMsP/dmXEXBqfLvVMUDEFp6R73oa3tjfGZaZQ
	 Hhgv0Rm2AvvUrrUpRNcBfh4po5Rd+fhi1sge2CTCs5nUTptBbhf+G+wIbpcEMdPhyN
	 q2asaJOz78JFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EB7D2FEF4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955383358.3920.11219019730798201375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d187793653f26142f04c504a5ee7e1a4344e260a3389983dbf138fc959d66e
Date: Tue, 27 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769553833
