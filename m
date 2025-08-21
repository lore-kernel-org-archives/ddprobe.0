Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDD3255F3C
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755744594; cv=none; b=cD6sH9VmEBeSw5Ae21SxTKhM8nnFo3neqcymyVK1TaJ2Slq9KzFkC+Gb1Z4i3iWX6B1TGqBA60s5w4pULSnPZHlxcavTdWLzEYePPzMk5Wbr6V2Csu6VUZeyY5MkTuQUqkfoV70AgIYkol5F4avZq8G5KJNYnJX0eqOHupetcIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755744594; c=relaxed/simple;
	bh=+e8R0Zyirv9HKSPQH/a+QmrnaUSGvG0WTxeUxiS/qKw=;
	h=To:Subject:From:Message-Id:Date; b=RvuUAzsnTTsbXz0kxaDdahynsjX3YIIsVHlmfvJZk9Mivk0oo1y15tZcN8/wkOBGeQRYYUn7fV1bIebf4gvL9i25R8qyEtymZgHP9b64DWmGAeNresaCp92qfUIr0vYvLOTZtl9jQsaybc5AGuwBWibZEC3vO97/r2sCxisP/X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlqD5DRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlqD5DRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35CFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755744593;
	bh=+e8R0Zyirv9HKSPQH/a+QmrnaUSGvG0WTxeUxiS/qKw=;
	h=To:Subject:From:Date:From;
	b=dlqD5DRmj6V6qHoT9+sxmo7ZqcQEai06hskl4Q8dA3esv+zaHquX0Wtk9M6RNUl6G
	 LsLTVX4piHbppQq7jyz4BmG7YjTwnm6GGY2FAGuXXSBKfMPfZziTlt0tH/XWFNkxaj
	 uaRmoKEq7GuAjOiuOEqJxyQD+v6XqkYkvg7c91Ip3Le8ZcmFiAWcwDdySEn2IIle+z
	 FJyTGG4GK/sXD7iPOyqgT4PWJz2uSX/ayhBvo+AYqPlpgHf903w4pg/59ySRr9yN9a
	 yJX9A5kwaxUdX5UiDeypBlHwyglvUVRmCYs8G4MqjjkIx8yzPkDVi4gtvFiUm3HCf/
	 IZpTvB9G5ZGbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91508CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574459357.4114.996577563045925501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b748bf031a954f11d71baca37ce2a9d70c425698f6566dfd24c917cd37c2d50c
Date: Thu, 21 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755744593
