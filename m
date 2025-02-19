Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405CE1ADC93
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 04:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739941134; cv=none; b=hlHZo/QLw1dv7xpNY+2hwdJMfJoxLZywvgt589uw1BOQzJjDg/P0iPzwP+qJ0eQLuSfuGNsZjbwecYcv1ClsKJGa8u5dy0dNScDtlqFXM6cGUdS7eMOo/iV92FCN8muZoVC3f2s0ixoS7J5K4XhnPZ76XZfs6cJo1TFHiYJOy8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739941134; c=relaxed/simple;
	bh=bVHeqQRrE9EUHVkoa32JNFS0MsjE92cX1gmoqVgNlEE=;
	h=To:Subject:From:Message-Id:Date; b=b09e/DD0AIgvCcEzunh+J/uiadu11wiJ4vjz9Y/r6WkEteOBvO4nY7TkK3nrA8b0gNx17219572+NdbjAzjCzqXyL12of4oBoHVBaLbP0Km4FvX9eCNmGFFAXel9gFkMST8Du1zEF++0fCBa9XTxu1ej/68f83iOpmXZ7qQrzz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5iXx1FC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5iXx1FC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C0DC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 04:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739941133;
	bh=bVHeqQRrE9EUHVkoa32JNFS0MsjE92cX1gmoqVgNlEE=;
	h=To:Subject:From:Date:From;
	b=e5iXx1FChFezVnAj/fUcQRLhWkUEi5g2GzAxu4ynMTKTfCTJya9G+RNEYaOk7dTbc
	 LRY6ChCDJ5kydpTzM5VRe7OcLpNlqYyZ0/2RvRFYyII379WiNSFKk6REAEsm6PL71m
	 PHfVRLV5Pv5qQPcrZnpIt1WCsvrB69cTWogzungn5PtMkgzfXfJJYHOm0X4rOc+NKE
	 N3ERsFox0TbxkTyNjDER36k+ennOkLYdu/dYaS40bKOlAANCoQmARNh2y/5SSR6D5/
	 00HS9ucC05RLUor8Hg7nTxW4hZz12Q8PHywrdalhNfma96YmsnZwfsNq8ER0/0sDnI
	 YkhTx2LCf1kzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D1BC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 04:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173994113366.25587.7351689178908871955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898d5478b1ba94fc415881d7531a0ed7d537035939222f64ca5365d09b36c566
Date: Wed, 19 Feb 2025 04:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739941133
