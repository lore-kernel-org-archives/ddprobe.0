Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C57F155322
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760249994; cv=none; b=FWY0bjSE7+pxpfv2SU4UYSVNmWarM4+FzOcAbqsMWc92UlX1qMMwgyOICWzuXZfDbg1eoZCGKQBBZBLd6imyoQIbXCcT2outGQnFE+i5c3qmMBpqroWbnvfgg44avqYUpfmvCR3WP+72by3ml1SWonKGg3J572xpuEfvC0wPsC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760249994; c=relaxed/simple;
	bh=hkbkzCaaRagC84nim05N3umNUYlOS1mUTvM4UYE53A8=;
	h=To:Subject:From:Message-Id:Date; b=HQH61F5DuOQY/BED1yqEEbCwyw7Z2AE0dNHCcxSqmNV93q+7N5eEKVO+eZrToRlh/hxVE+YfAPP6jr7sgm9J2BrgGPCe5waaf3l2Sm0KblDGurGq9f1AQo/rj8B6gGoifpK5r2VTKZCo6HwH0wlnwD2zUOlEsW8UO7qJLh6RjUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cewiYfGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cewiYfGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B8CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760249993;
	bh=hkbkzCaaRagC84nim05N3umNUYlOS1mUTvM4UYE53A8=;
	h=To:Subject:From:Date:From;
	b=cewiYfGnfac/eYj39dmES0neTOtFyVL5Q+XxgjGbHbR/NziZ/21tsBGMvIrJrF9VG
	 4MC0wZaLsAgqC7bZ8LmElTYXbAEkZ6eh9d/oscm4q+CzBbzf5pFk6vXz6L22zEQcDt
	 /thd+8tl+LzK1GEKpz99Xo9MpV3jK2MWc4UWfl820a5+rAQ6pK+qxQzaogDQOsNyW/
	 tXdBSSftJU4FnDc7QLU/2/pfBjAXOta1xcF8e4K+3vXy8gRRI8RlFCCbCkEOqoMqdt
	 8J8p/VuM/jYUhGoEuBzuhlAx5KB64LPgaG5XvKvIJ4M2jmzSHi+o5h1p9aJnDqOOJG
	 1oNhCJObqKKXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE9DCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024999358.27725.16797863504842163344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52799ef4c759e4ad09f82d7c4d8963548826abb04b26f7612dfd7f02ff91a9d0
Date: Sun, 12 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760249993
