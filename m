Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222BA3A8FEC
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768895034; cv=none; b=ogHidblqKdXACeXAT2F8wbyd26cRQdUiqdxTZOYjnZVWtMieK71/V8koBaD+o4/Bh1HwMXn7CLIFJZ/KKcCuYsJzluDZhBmJ2YoRPUIDu/GYVqPfgZwH7Xv0jylQ9VbLv+GuSICHYt7nI4090QbVlMl+1sgIdMpv1Ng33OIe0Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768895034; c=relaxed/simple;
	bh=EfzzS8DiB3OQ5wim+YPYjHzea332jNkxmRbT6KceHOk=;
	h=To:Subject:From:Message-Id:Date; b=JCLJn0E5DMnn8bXMkTPHuIkMG7fC7ER2Aqefek8m0dct0uYDKuNmlbKzvm2amYAh3ruOobpPVm1HCx5fqzJyBKIcnHovfrwDp6Q7olX/9DJ2Z2VKBC+RryoRV5FtvOv/xFBO2zO9Jd8Buw3aUrLQKsgWAsz5fO4CkY5F4iTlofA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZ3PHecC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZ3PHecC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2943C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768895033;
	bh=EfzzS8DiB3OQ5wim+YPYjHzea332jNkxmRbT6KceHOk=;
	h=To:Subject:From:Date:From;
	b=dZ3PHecCuObJj0sDu3VG50FvBZ1Czhs7I0apc20Li8NurpVQq3JpJ6ouCcLV2nCfo
	 sPOgNhMoPO0kDtnyGFogShV4e9GdKIkYh1DUTsEHubee92PDhnMoRbZlHQC+TW0jZ9
	 dvPXlkBv+lbRrPOLSlIXBQoJKhbFDlt9tA2xAZYPDKRaLbfl7UixLTJ3z5tgekkO5Y
	 ak/DnogKTf9ijwfOjjjGMCsk70Vlm/5zz8Noxf3fFlG517zAoRnWZv2hLHrEHgf4bQ
	 bixuE8VSvuYQzsJSJplAqd8ZU+J/NXUN82kdAegi57mn5YK7IUAVhpqt7qcfPYhfif
	 xikG4lpGt1iRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9007CD2ECF9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889503358.27730.13372050646084736181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87294f5adcaef13963783f654190b211509b8d0b750fd7ab6675349ad95a007b
Date: Tue, 20 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768895033
