Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03952625
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764138174; cv=none; b=lhuRPLDVaQnTp6Dmz90KpBDIzHwzs5c++RkzE4hy2ZD+ZmFEZnPuUjvLV4G43TAsJisMz+rtkiL2tGktRjmhZivOM3ZGnWPkdGKiK0lJYe9/OqK/blZXHIY4EN7BONFueH3FOrlWK2M+7WTZdSZ+oG8m69Cu9ZSjkD+jSs5VK6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764138174; c=relaxed/simple;
	bh=mHDQF4bhBtXNR8AdmfppsBjC1x84osO01N6S5nTQ3yE=;
	h=To:Subject:From:Message-Id:Date; b=G59bFJIy+10/t5JGTLQsbuMyVAHsQ6N7e7gRB4c9R6PjeKY7Rrhcj6LeESvPA1OmuoBuwFqh4eUo/7bxxju+LSGGRgDrKiP3FxGnNmYiID3bZG4HtTP4aE71ZooRPvgYsv/zmiUB6mb1nv4k39NEzIZRb4iEOOmvjNEXYVLd0C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5nlmg+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5nlmg+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B0C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764138173;
	bh=mHDQF4bhBtXNR8AdmfppsBjC1x84osO01N6S5nTQ3yE=;
	h=To:Subject:From:Date:From;
	b=d5nlmg+g/+bbcWyxxvPQtEv7TkVlOr1yZj79OBGJ4eIZSJnvfcJI0oIkvug9DxCSD
	 s3EE8j75iXquXfTODtE0BHWLBGJ3nw3pA5ovzXkgu6+nl04BkUMnggJVEKbjxLswjJ
	 1n+6OY3uoHDOjQQEfT3yiaMZmfu6pmH9dbK+eNYDxN+mrKPBYAmIklXKHygxYKBO9f
	 FSDZqB9tIgVqg8uEU+r9umh63ma8cSGfENsFErCnsOjH2JwDqnCC2i0GjPeAYAvgLz
	 Xoc4weHDhwyE/4b++y4pTWKWgnxbJCGwf1taJTBzbWJs0bN6cHJt9vCKGVHnFMlG9b
	 iL3eQBPLFtopQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92390D1037E
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413817358.14301.6005268731198801206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337be2c6b83bf23cf819d69bcfef7c335dbb5573afe340fae22fd0144cf8a3d2
Date: Wed, 26 Nov 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764138173
