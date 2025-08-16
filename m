Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1BE1E47BA
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755347994; cv=none; b=bqWWE3x1opUxvC+aaDPEtLgsPgICkyrJmhtspWfoxZNdK+vIOzV2Blyaenm7g0RXeyEbxfdNbcNrBYRROqZlhk3G+dBRTyBhWRQBX37LOfTeRf0xUSry5cqDHt4PGjQcp63LYhEPVtTKzkyK4SIQ3EoJE1qIYKqMPbCXaqJV4eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755347994; c=relaxed/simple;
	bh=BKkCxDxpQP26KhAyUGyn8P7cuPwmlZPWaSihvhedSI0=;
	h=To:Subject:From:Message-Id:Date; b=LysnFtVjmqAoNQ9j/pZpLvrmKpjMArT3zCA/NzkiRpYAEKA93b3Sz4I9gvhOxLuAxOQLK1QCuyDux9oFPQY7cjG0YCTE1l4O+6aYkLlAJKBL4YFaGWXAjcX/A5ARpyiDuOUnc11v73UkH5D65iZeLXHA7R5Ax/urQ2tHBpWFL8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkmC0r7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkmC0r7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BADC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755347993;
	bh=BKkCxDxpQP26KhAyUGyn8P7cuPwmlZPWaSihvhedSI0=;
	h=To:Subject:From:Date:From;
	b=AkmC0r7BidQU2qzLXCli0sOZCzQzzVC6pDnE0PUjqnUR+nHDZg0KEIvxCwidigiZ4
	 xtbjNg+7cN66WIUy7cYE0DH1r+QQsml8+VEwpToqgfYEer9Zrm6lXK7r2ns5OUx6oX
	 iUNFOtupAtptHialsM+qL5JSXqoZ5ux6idJgAb8QOX8Ov+sww1UBDRtZSsoegcDtEU
	 MVpfGHmdW0IYS3iFXbYpzBlqJTuI7vcWiQRDzEmO7esN16esP7aBsrrCMuWdWloA03
	 9IDlPKcjRANEixhiy6NFkWxBYnZD9W+ZAJLnDdBrA3B9j6ISHo67DYaGNsP2FLtIJN
	 XbSD2M11YXBqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937DECA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534799358.22511.17909219796180693725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9615de5ad51a9b400c0da9b5ac6fe5a1f6ee580f133d8481b6632ff9d7c73365
Date: Sat, 16 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755347993
