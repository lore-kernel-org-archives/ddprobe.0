Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0D210F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769289834; cv=none; b=SDKHDh08JFVokdHXHCXPc5XsnAGYHFwQq6vXy6mmuX9ZuU9jDt0JQr783mnxOm2z2CENASE/rHBaIicj5eQnBb9p/aewK8xaEH7f5Cy/id9IKGzagzXi9fg71NRq/1lsxJ30nGMnaR+Mi+D1G0hnD/gJwwN4bSXGPFGuk1Ozo88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769289834; c=relaxed/simple;
	bh=IIeccNw0NUz7WZ+Zx0mkYelKP9OKjLRy5XyhoVzaHww=;
	h=To:Subject:From:Message-Id:Date; b=OA3tcxxRBFRxktT7b4tTZZC4wW4iTJVRFNk2hPx2jlrnr8h8q1j10Qw9EKJFkW9LrsJFAXU6OXIMHQ9j/euh66KD/r285pxgW1fEwfivMkPws2tumSN7uQrHvgcyckJIdaTzliojjcpLULT6/tpgqa7vleCKasSRa0PdwKodBcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8vgBgfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8vgBgfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A705DC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769289833;
	bh=IIeccNw0NUz7WZ+Zx0mkYelKP9OKjLRy5XyhoVzaHww=;
	h=To:Subject:From:Date:From;
	b=h8vgBgfzTNdKdtojTOzPazJzmnY9qB0VleVTy9JHoxFKqwIQF9ZCUWZvifMtEn/os
	 jLAfP/rUwz6ulbuWEC/Evw7vWrhAzBSF6qCHEE90FeJ0kD2Ejz1KDd2F9KmVNierMs
	 tN9XjQSkN9ZpbD54PYCEyQfozsW7qfJAm0mmeqsykgVvOwgtreSNsjYIHR3Ia5TT5G
	 uiFYxiY8wbemICuEaamPSBkjBRb3xwojyOqM6y90gn4QYA9yQbawU57MOxHL89Hh2d
	 n0DaY23ejR7KMxcY0M8MRGfA22XNYQYW5BShqXxYcVUGq8MIXvSqkP6C8IBpCgb6sC
	 VeV0ZTLpNAjbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9535DD715F6
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928983357.3282.12676607519262733870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8367b8cf1923ee74ebbca2b3de09e5b88c78bb1a2fe8562a24255333b7275172
Date: Sat, 24 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769289833
