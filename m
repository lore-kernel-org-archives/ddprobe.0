Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B3741226C
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782979714; cv=none; b=KVnvKUHDiskdQyqaCq8Q5N+Nq740kFPbE/d7NCl/vi7M0+JWSUww9cTVdZjjl4kNXnm23Z8814AO5yQ+rP44BP7bk2Ld8QuAzbAxbXrtoyFED0WCh2cayn8Ra+JWLqGrxYaV/6nxrYJujA6N48eIg/XT20cd1/JF1ukBaM3gc7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782979714; c=relaxed/simple;
	bh=U3ABWRy87+n551/OJBU7wmAR9DUwYifFapXDjsmA4Z4=;
	h=To:Subject:From:Message-Id:Date; b=EMO1Iop/pN/XmXK9WrNpDu1vGdd1I7Jz8nHhXJztMXfujlP/gBQczvfHeyokjecLW73CzklA3lPlIs55yW2c9tzQ+F7yjjm7N+rnhn0XcE9QjcxKVzIEA3YpCXQ8rW44tOttxOBe59FlR73T8Pie1QhMD0h+rM8CYQagcKLkx60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTMSsP+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTMSsP+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA594C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782979713;
	bh=U3ABWRy87+n551/OJBU7wmAR9DUwYifFapXDjsmA4Z4=;
	h=To:Subject:From:Date:From;
	b=hTMSsP+Xl1sArwqg5PSJGAVTFhDr6Zy17gtRTqfXoVxMzvrIecKhWaN77i0Zc2sbn
	 7+dSUv7SOz0lN9Zk/zdYAlyXa1juraZqP9Ag1q8yMiataNs7T7kwN6bhfwJ7ZRT3l0
	 M/bnX+tRd8ASmc4cXk8my/WzKFHlaySh2xX2b9Etg+Uohd46e9sMH+bR7R+4PsaOl6
	 32jk+XlWi8ri8C66K5iew9sSP3uTLHDPq4qyD339Pan2aXlJtNZ5ojdQFKIyomN5Xq
	 pOwJA6A9kwwhoso87jXC3oiTeOrtO0Ue+OnQ0+udsTR0RFXStuGyZ/xTo3VgxJeb0t
	 9W8GT3T3Lm6Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9069C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297971368.1060.6077016460986187057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a14cf8adc90db90e61e9fe4483ae58984fc40806541a5ac2b7ccc54491afd36f
Date: Thu, 02 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782979713
