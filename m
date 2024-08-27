Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FF2197A66
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724744154; cv=none; b=X9HJFzO+G2CHPGnQurp7GXb0XvGFvkVpFowRQ0cJWgU3IT+u/PLCr9Om+3k6Kubg94RaKKnVTCQ5CuIqvM5oBi/47AXBZbUYb8dX8lqAgJlqPRQqblGaK/HeklEk+G4pm5w6c2mizSv0xraUpD6CybdTEK31ZY482boRMdDu+ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724744154; c=relaxed/simple;
	bh=wUZ3R/l2z+uv2i+UyWwcqDyo+3+2/RRFgLKSH4zFdYs=;
	h=To:Subject:From:Message-Id:Date; b=cw9m2v7nKK/zIkpt3zBzgR1lhE7qOhTAkNVlH4wnoXVCRigr1NZrPsEqVHG/rVfW64/1K4woXfJT+lusf3afTNoHxRQg9fim62XCP7Dpdlm+xbmWEQ7XkJY/JkpJC599yDoT37pdCsncAODysW7xHv7jEpcowSCgB8JelI67OcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5We0z+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5We0z+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA18BC4FDEF
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724744153;
	bh=wUZ3R/l2z+uv2i+UyWwcqDyo+3+2/RRFgLKSH4zFdYs=;
	h=To:Subject:From:Date:From;
	b=m5We0z+yMGjRf2cy7ICsGbxwkdst4neIq8Fe9EBloXYdUgV5CnmD70WznLMUf1QIZ
	 PFOqzSqjbB71DjG6X/SPz84J9GIl71J+LLdgUHX1j/bf/ALy4Www7V9hq/HxxQ9Iha
	 Xqnuojp8z6mQbzB8Mzl1/utAPJ+qS+INGsJgJLSpIvZhCnJQQqMrGuB42wTbASW3w2
	 WdCtXlTX/8oIIqrPQxetT3weT1G4UxP+m5yaGggBcmWV+YE1d5L1Yg3z94zzoD6eMh
	 hESwm9bI09o/jiSXCyYsxdHodoz2u70davFt/j895ezCPGGZuAx2siDgOG6zxalbeM
	 jjq0E/LnOAaEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96883C5320E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474415360.32676.14591867210667363463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f831aa09e680981137dc9db43f9613791c13797a25b85a0fe82aee4d58a74c3
Date: Tue, 27 Aug 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724744153
