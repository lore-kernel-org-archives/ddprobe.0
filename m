Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31654EEA9
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740323935; cv=none; b=fV1eKkEXUAZWwIIECV7V/jmadF6jwo9NMkf3XYKlRSApUKewSxrtW2XzHwyPfdatK8Qt7FJR8JesD/y0KuDvivg0kpvnY21BKp8H/IqqiS5wuWXh3inMaas6UvdRJeEjH64+VjXXzr6+X02b6LHA+YF2eVvPnyLdXPkXoKg8IrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740323935; c=relaxed/simple;
	bh=8Dczm163YMlERe73Bhu4pEyZl6g33VpRQ6F15YgX5fk=;
	h=To:Subject:From:Message-Id:Date; b=C1wNl+4LkCcL6V0OUtw7GfZrz0SNVeDX1I9kyKEmyt52zcayjmTxMgg2hZrprRO4WOxX/9bItnkSiziXmYJ3QYu0Cw/PoWKDUB2+qy+QkLzbO+PhW3JHS2mxUrCjyw7kkWXBf0XqDrtJFq6jwVOOnW0fw09tIINyqlxtKdF8xHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lo89mk5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lo89mk5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D8EC4CEE6
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740323933;
	bh=8Dczm163YMlERe73Bhu4pEyZl6g33VpRQ6F15YgX5fk=;
	h=To:Subject:From:Date:From;
	b=Lo89mk5+T6rrCX1K5I4at36A4HoOVIAUTKlpSTtJcoLgXWECNRn8u7kdsU65zClmS
	 4q+28l/3YNv8gey95jYvGXhc7iZ151YCu8eMpSeqf4rCh6Lq4lyOsmjhOaC9BAMtai
	 sydyzWcl+efcw+zJW2C6AIvH0XQYX83u8t7WMGoKoMq1A3+q2g1jk5M1IIieMWxMIG
	 NThZ/4WhufvV85Rc9qHJEB6Uvht2zjc+c5qe8KQ2Jj5cKkQyIWFJ7cGnmJ+jV0UnPx
	 SXm0gSI/hLS6EajjBCVkm2iEyKtp7lKGEgQbYpCrWdeWNBDZ0eI+isz/HCfkvqe14z
	 ZegaLmuRMse8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A0C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 15:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174032393358.3236.4723215430177539122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd21c3923ca429c667747b4994ccd714e2e089e3e4c70c46c800f76f7f18fa2f
Date: Sun, 23 Feb 2025 15:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740323933
