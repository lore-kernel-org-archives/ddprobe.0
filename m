Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9822309A6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736838354; cv=none; b=fm9Irp4frKtM890QsrKF0eQV9EL1dzTxMkxdFJFSgUs5UC9o5YxNXXjDmDHUSvLfKftmFM4f0wkaEyl3t+pEuEfC7iIo0jzH+aKSFICfRUFmnrjT3MjTAp9F9ar/Dr1XyWkqX7NZ8cjhcllDvh6bfDfm5TJq6mzwNZHdgeNJzwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736838354; c=relaxed/simple;
	bh=GCCi2U2VzGjhdW14w2d9Xa3w4O9/23sthaMGBA01HjQ=;
	h=To:Subject:From:Message-Id:Date; b=PYSSm8JVQMMYN/jS29vKw4vSgCy+I6TLoTrLFK+fFHHls8r8sqYZmddRzmzaFj5fHfIYJrMqA5kKPuednaElOm2Ko1jxKaZQAfw3waNRCxaJRU2ixdICF0j96I0arntlqmP7u6pzqRnvrLboL7a2ahJJox2NGRmXtvhds+B19Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/HMz0Rd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/HMz0Rd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D9BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736838353;
	bh=GCCi2U2VzGjhdW14w2d9Xa3w4O9/23sthaMGBA01HjQ=;
	h=To:Subject:From:Date:From;
	b=Z/HMz0RdXzJHksHGeuiQfljVZ72/I+fvTifUiV09aiCroy1NewNFr1M4se0zsaaHu
	 ja154OrAADQkeoYGZPEl4MVuXpAwW3oz4hrzQCeRe6+m+F4N0OA2+2Hbe/3wDhKrBr
	 eAhfcvI8tSbu5z3panEQh1hQo2aIaVDT0kDmuDMKS10s6UCg9gvaebokMS/XeCQ1pT
	 1rKX8P4ppyzREJJi7TroJy+VHN6NlK5tWDHt0QT5gH368DdxLZyHetT3kXX0/9IMg3
	 AyRUisYSq8Pokl7DNzzuXJqtTHDyWPkTbrLntDAmJKQGRfrXCJ51JL5b20mgXSOxUQ
	 LvlonIzFos7dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9596AC02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173683835360.15685.6384706576146667822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7511096c97f0d55c44157154e1d4ce4c29f4b47c65da2536b1f7b78b556f801f
Date: Tue, 14 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736838353
