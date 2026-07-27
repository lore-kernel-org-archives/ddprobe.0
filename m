Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2556042BE99
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785175834; cv=none; b=QarGMI+i3Vfs8FpJzBu33QU0MraTUwWCr3Grz60KvnqfywRyBCH7GOn8C5oMqMfAaugtMEuSzyvGgawsO0qM3Kzo54niEjc9zVmdRZ1fhtqHZmbL9lOIW/4vLjJZFUTNlHa4fPxOkk/5mLdG2DFl3YpgVkVIL4U54PxFa2AGWqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785175834; c=relaxed/simple;
	bh=/2V1SeQz1hpt8yj6AdHqzC2bH2g3yAgUcF0pOiLNQds=;
	h=To:Subject:From:Message-Id:Date; b=Nie32W3pGcNYEIE9ngrUBUwhtAA0bNNeaQk02fTlZfv7OvVTjcw53h/1lDcV9uuJjQf8fbbVjLEnL4G2uCvW3teVgEco+qmYSWoNm31c/xLuuwdGA+EH8hFbaa7KPnPJ9dSdIbVyyaEC9KYRQJMyQ8L4+JTt39no7uvv48cUqP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCeKBl4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCeKBl4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0708C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785175833;
	bh=/2V1SeQz1hpt8yj6AdHqzC2bH2g3yAgUcF0pOiLNQds=;
	h=To:Subject:From:Date:From;
	b=mCeKBl4snnpvuC0SeC9BVSr3fIyaEBnjZqMh9Y3RYeV5ppUDsXhISTxJu5beWFv0l
	 v0SVZPI9QIz4jF77PKgul0dIxR1TQ23aP3QBDh7AHzfjkDZ/DqSrnnrMBdWAayTL7j
	 jASPmDha/9qmygs7+LfqwxARSOPAzp5G7XL4XMXQ5FvrD62q4zqdNikItaDV+0oO9l
	 Cl/bW2VJ5AO6Yp2Uqb+iks1KX4fIxZHFe2/beVF285xPsbZdChiyoNe+nEr8DYV1XP
	 Tiw+wnmz7wPaiC2b7/Qjdhn4KxUbhRVURpv/ErWhl4yoIAaRFgKskFuco5ZubKPw+d
	 5qGVyS86aKvTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6FAC53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517583369.28703.174850562163449520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14da7715640ca5bb1e302107c1efc0803a65d8e838a156edd23e74f76357b553
Date: Mon, 27 Jul 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785175833
