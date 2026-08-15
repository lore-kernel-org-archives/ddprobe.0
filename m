Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BE031A56D
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786787435; cv=none; b=dX9gftfNVfijYIgR1JqRpk6Vf4dT2NpT+qQ9z85yhBy75jMOm/Nc+VMPoO7cbtv68xlJ8Bt0Od7ySEit69PTxezNsRU5q4HsNp/Rv6+gw1V5Arwx02K0x9/fNt76Dc0tyjJ9tOD92uxpQFZpukXDTGhj/gc0QLVfX6Yv5R8crXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786787435; c=relaxed/simple;
	bh=vaHH76CoBrCMfnQVsUdYDzFk8mYQnMx8y+xj52Bd1BM=;
	h=To:Subject:From:Message-Id:Date; b=Os5qjCUq2Vinos627y9VBPUJBWlms202geN/OPEIZeYDDi6smPJ1K5E93Fbf3i4FdifWFQn59YIqLz7UvwGA1LRrk7Uh/w75GRLwpQMUCGWZPZdAecUWFaWPBzffyluM5x9xxZzUJ7U0ryr5Sut3NYDkcOnXb3dFcPNV4gmqtz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=me+FeLzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="me+FeLzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5994C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786787433;
	bh=vaHH76CoBrCMfnQVsUdYDzFk8mYQnMx8y+xj52Bd1BM=;
	h=To:Subject:From:Date:From;
	b=me+FeLzWvX93BZHjWShcNocDldj2/YRDwD8iP5O0L8UCfwht6v2oaPrlMZmZ0UvXj
	 ewnFcuUAxvH8zC5dCrmvE6IFjI9EBfW+OYYknQLQJ2DhBa3nsqGFMLX0NCafjfrqZo
	 /wi5J1Kd0WwIqXNrEZePhbVgE4gsZ0r0PKz1CgQof5N8/4K2MhbxhLw+ClhtH30c3S
	 kL3SAUhWITMrarPMRnUBhHoB/60uq/JbeDyxIvohEPuj7Pj3QT8kyzH+I/i1BPAkop
	 UkzQt958aPvcR8c12KeP19QKmDCE5LVEirFiFQ+mQKlL6M/uaxjxH7X8BVHghbxc65
	 co/ajxMJbcxZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA813C5CFDB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678743369.27599.13269616947715198210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b5638a712de27c40038777d8a61f9dc631ca794d772a74a8683ed1d3379109f
Date: Sat, 15 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786787433
