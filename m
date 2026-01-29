Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23031E32CF
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769699033; cv=none; b=bPCq+rD4HkHabgUBEjOw7qNT4dMdNj61PvcdxaA8BtTRFky3OGXt0xe3s1uUPxFc90BHxWF1ph3PmszOIf6v6WJFc0VFjYhN19fgeKYLW4CoO0wZFhgaj+3cHw2sau8lbIgqYUmbs0hh0Kf4JWXDyUWBTidXOootAQLI/t4WaTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769699033; c=relaxed/simple;
	bh=i9WHOOXT2RSKjwLsOz4aSU4LsgpCMpqiu+TOnwDdyHU=;
	h=To:Subject:From:Message-Id:Date; b=jxCzs9qRb5sN/ezzZad5jpH04Zxxe91hd9dBsziNrQP7bcgKh0XIQjtWzl2F4AvokSvay9hu5/wwnkpmoF3jH/EcGKH12TNgvWcSe+W9k5aXY+rOI26lDeTV6Y6bzzwUzyg9A78qAAn089unT6LaVyRwtQWuedBA+ZXcu4Jl6gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ic+vYAHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ic+vYAHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A642EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769699033;
	bh=i9WHOOXT2RSKjwLsOz4aSU4LsgpCMpqiu+TOnwDdyHU=;
	h=To:Subject:From:Date:From;
	b=Ic+vYAHZnxkuBjxIiE69YbCDzjC0Gkp4iJMVvREQakvQsG6+kEbirU3RjwaHMeuxU
	 tsV8DhdCXV5aP41we8UK3pIcdMEOsxpWm9Q0egeL+25gzSvcXI7GPT0UueyUMaSUxc
	 vuG5hJOjvoXMb4C4ZKgO1V92UXMeSfPWIw+zHn0lh3hAuZW42NBUC48SKhhVl5mHun
	 YyEcRn5KYOSJlTbBKKiBFV7gdo+glvZHBDRQ1wGuikBNxLMOPDqYmGbr9QuhKFSMCt
	 fKw3bWL2fd+2fsQwzKZycTsjiI5DJy9RR85pV/wZu2ln/HuGhVwEdZyBo0PIkC8oPV
	 z27hJd9GT7unA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C1DD61021
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969903361.5568.11450220474436002183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38fd21761158c2ad5fe06b9e6bfad4ea8c13b6cf6ed24f68b3c27c0d3d686895
Date: Thu, 29 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769699033
