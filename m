Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA151F582B
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759297194; cv=none; b=nNe++ecF5LZyl+YwNKyEsbq8/BUOvNlFGG6vyn1bjOOVBXBCeZXkG1z1LLZtShky6Q9HqzY/F5Fo5PLCvOU46sqmfpABoSYVXXPATQyhcAdYTbr1Zt6xBQMt0lHsf2zxmBbo1QLwFV7kk5WQ/VPjxGuQpYMybpk1DbWsEknYIE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759297194; c=relaxed/simple;
	bh=k3TwEaTCzBw2wThu+c0jBrXsmm3iT7IXHXaoJyM5Dpo=;
	h=To:Subject:From:Message-Id:Date; b=S74E3PipJb2iIKw0V2vwW6Yf8qcy+GXpILmX+0FnhjsHmVKaE2LiJSVcx360Y952gN5Q/6+pzttBmeAU10FppA7duRjOIYb+C5Qzf9wWZTpPDbWT+/kPJQwAfs4ktHjBCQAUgCh5HZ2zhoo9fTGPgmc8FvSyhm4dQpBtekiRsHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qa3gvY2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qa3gvY2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D23C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759297193;
	bh=k3TwEaTCzBw2wThu+c0jBrXsmm3iT7IXHXaoJyM5Dpo=;
	h=To:Subject:From:Date:From;
	b=Qa3gvY2YcaIejMeclgg0raRqCcA4x4AYlvK2lSxZ1rFyat3UyyVkpZlM1yHTZOPJy
	 SpvY54rkECVekRDTxc/wc64D7t6uolMkzFP0Llv8ajFV1iwBDpMqY5dAnyt3HVYMFa
	 FUvrohDj+jtkChkcMu55Vt/x9ty8xo/KZNYsQmF69Htq3UHqhrUn+HgxQWvSg/erHE
	 Io/ZK43Ist3gPlJCb1nqjulTJMcJzPB5G/gi0foWpuE2tA5G9ar5sP/g75kSnpFuRX
	 8jIMyYHSQYbeab2D+sguoM4kgiyyauxU8mDmnmHDeJthS0kY8gSqxpqZqhGQ6hWUFC
	 SUg2lNDJ9SNPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D4BCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929719358.19979.15816983558419823824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52447b3dc5311bd0aada984e75955ca892f5f2e8743eacd38de685e8d07f9e1
Date: Wed, 01 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759297193
