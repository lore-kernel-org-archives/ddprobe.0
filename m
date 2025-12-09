Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB93266B6B
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765321374; cv=none; b=T02ktLbxLsNevYUzSaMb5sHmu7l/Ay5txUBnIguVQUSnbNkCRb6blRwf2NRVuwxYpJ86ynUlF+XpWY5mbTSsqGrpRhixoaMJvqkvVTvun9O/eXn5ubwfAVoYDS6K50ggeEkzo3UJj6vtP1h+Yw2oex8uQO2NXIvs/Z+CzuTLe1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765321374; c=relaxed/simple;
	bh=d/ZKYInD1EYp71+N1gPLVhDay0f60JKbc0xVz7ugfQw=;
	h=To:Subject:From:Message-Id:Date; b=fFNVtHQfKqIdybnNVyymF2m3zw0rMGZnFh8KcVZ/X3m9qv1vU+qebbhfZutpifvuwUW+xHNbq6Febu6ECL74EH+AvHnXS0QjPcbX3DtgkjO/f9Q/5+hGPychFawEWSrUbmjmvGDPqniFMcTPanSm3ZBRn9/qoByGFcU648NWqrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVcfNIcc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVcfNIcc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CCBC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765321373;
	bh=d/ZKYInD1EYp71+N1gPLVhDay0f60JKbc0xVz7ugfQw=;
	h=To:Subject:From:Date:From;
	b=VVcfNIccIHG8w9YXa4IU2fB2wJK9Es1bBcc9wUMVJmPz4HXQxFnkrvZwBJH444AWb
	 CidoD6R5nnTKVUT3Y2Yv1DZ8D4keqPIn56XchXDn/4z+1SDoedwrezaMUzpi4zWwUN
	 +2i8TGmfn4zmV9ExgcQF4UaMyA6RcqC/rfC/WQgTuh7B93aDx48lxhoKS8lvgZoGSJ
	 3UVjVAG5sy59EXyAkTtkTV4ErO8qxXl2R8yRNr77sMZezE9QRPvBKOjfIluMei+R7e
	 5qxxbAyUwBVXV+CDGhwDSjlJytL+o7DwAbFizlVXFNbwHXtRjKLPg56yBH1yI1shb0
	 19IEN7DJBvfSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95250D3B9A4
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532137358.15769.14505263814972581924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4564220010af87ab9c7b1f760172edf7f8cf04e7d023f0258ecf7c0d5398b5a2
Date: Tue, 09 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765321373
