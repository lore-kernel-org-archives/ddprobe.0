Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D407EAF6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737248754; cv=none; b=O7FPgEsUVOijkdDS0cpsIB34rXfB9+9mKO4hzt+8hYD/t6FhXaXD2RBDo8UHnm0a+NO0btZDmsakCJ+LYmeEx2dWNks9/rYZ8URbmoLX5RNpDBBYrwPpoTvYBYY+b4Db6N7rfUVZQ/uPr6ZLzRsmXVxl7Ej4gmfOBfse46xBFqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737248754; c=relaxed/simple;
	bh=E+ODszMLjc2d33LqJa3BuCvR5DSiDUVgRj/Ken7yYkM=;
	h=To:Subject:From:Message-Id:Date; b=lCizdRgeXXTh74rjY24iUKu6PD3x0+VzO+nFGPgI7v4GzHA0wvY+SaAwxQkRss/6l+MYYPiSZLcFV0XIcsSaRcgoCgIOAaGfnOOhw0GqM2syZs8AqPruysxjvrYGZaLlKjJoYtakX5M7eVnk6hfIz+ovy0BhJKcfNQmBQGnBxC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwpCrthC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwpCrthC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6789C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737248753;
	bh=E+ODszMLjc2d33LqJa3BuCvR5DSiDUVgRj/Ken7yYkM=;
	h=To:Subject:From:Date:From;
	b=CwpCrthCLhXUy5J2SHPvDzlU1y64hiSIt3FFiNCzv5y7fufzjHz0kL2G2mxBLsY7C
	 jOAt0zkl+xhfGIKKkBc6n2VnbT2Ufez+7gv2Dmg+HpB4D/3jwzxtNOmDvvM7Ap1s3d
	 Fv/wXcEbBRCb2eldkF85Yj9zgab05BzwuDBHwZF6qAcNzyb+h84xBVZq/TrKzY/Iy1
	 5QTpjijQOfL9ccbmC7bmqlqXjT17tmV9q96FP5XUy9dAHo/1jbXPBrnN/5lbQ5N4nA
	 VCJ0pRiGtPqxvbVyGiDND4EbkLfh4JyFT1CxwceUlbOlnSj6uwzXMq/bk+A0YJhF9u
	 Gz8tlcgG+qqAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C80C02185
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173724875359.20905.10499913113672259362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe84e89129d74e0622b94e93205c43d331b32b99f6431f56b849ddbda610b8f
Date: Sun, 19 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737248753
