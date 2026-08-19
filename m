Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCEF9494815
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787161834; cv=none; b=EUkvJV3xKqjxwA+vIGxEQR/Cs2Mkfpbg9fGpRrZX0ZmGMvj9rKMviFNpsouJFCI4EK1GaLiKpNJzHvxFw/s/AneMj2kwRIIv4LAr9gb7ik5FUK7MRuMJDPeKlbDn+0oQwAOCGPX0YFUOrRgIxVYRjcmpOg14wrk1nLuYANXfdmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787161834; c=relaxed/simple;
	bh=biQEHAEUd2gcj7SO8x/wfYaFonX3/5iVBfVss+i1ovo=;
	h=To:Subject:From:Message-Id:Date; b=sHymMrG1Ha+6FgU+Yj9BWf9WPRpuv6Ko5zuRfBP+G/dsN2ukSbLZUYrCezWlJKw0jWWfktW11jPVN0+s84ZL4Ur/E4UE0e3DDRA0iVUEBr5TnTaDA3MvdBUI72iQLHRTdQ11LnPu/KNNymQFZ6ipHb3zZ0B4bro5RU5OaoEFJ+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmJyk6wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmJyk6wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47D2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787161833;
	bh=biQEHAEUd2gcj7SO8x/wfYaFonX3/5iVBfVss+i1ovo=;
	h=To:Subject:From:Date:From;
	b=MmJyk6wt48hWRzZaZ18VpGMxEXy0i8ZTSn3tZzQVpl88ZY8Uuf+JrDHNsavF/fFj2
	 lGgRFw+uAoCgOP+/KZc66rZdgi4fQ0AkwRTu8RP/VNSoYMH6AfABABfdJ+JoLyPQx6
	 his3CXSvTdt7DZapXb20g/egRPKmOcwXrqL4S/wDCRCfUKQOpUJoPqSYT8yiR1AJtN
	 pS1Ig0ORYuOuKLft7xWOfv9mmEuLu99Qbz/+1UHDEqV287tSY9oHB+JiG3OJotfz9x
	 IZMyb+ujid5O0FV/nDYSb9E/+v+ckyAyfqCVvGn9+3qU3jXvpRSA+6uIzhRX1TOWOe
	 fFPygrS2nS+yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FFAC5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716183374.2770.17756035706780824461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b7cee2ab7829a46e028ca68351336c7127b05a4a2dd31da53cf23292a82c2c
Date: Wed, 19 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787161833
