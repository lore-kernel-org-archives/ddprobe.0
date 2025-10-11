Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDA51DA3D
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760207394; cv=none; b=kXxNBfBy51C0RZy4uhtfTs9WwqsuS9/J2XQtxO+Rnos843mwi6i3GX1SMHEJwPb73Td4ySqzoKkjSIsvHfGRzpFZ8SAAqGzpu7F0VVXdycP6exxl9VCbxSxKXOakiB7+8Bw37pOfOlmm8gV08ZClJHAHYOP2InJ7qlIT1FVz+mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760207394; c=relaxed/simple;
	bh=NFs2F3joGHVziJPbgQTSiCown/rWmQkeYvMpbZt9A/c=;
	h=To:Subject:From:Message-Id:Date; b=lGLVJCTUpRC8p1Scb0qFFmUGp5fL/CkuoHaYr39q5iA6iI/oGTC9P7MTQNOkmpmmFb0N1ut2smrxOK50StmH9wV/y9DePsGlufsK9zrFZ4tb+LsrQUHpcn4fbHPd2MydbM7P4jy2Jw+yM/C7mtv3LGdFEnlhrxDAOsKRw4YSk8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rH5cqwmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rH5cqwmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A346BC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760207393;
	bh=NFs2F3joGHVziJPbgQTSiCown/rWmQkeYvMpbZt9A/c=;
	h=To:Subject:From:Date:From;
	b=rH5cqwmgQRUq0+hrFHl4rO3Oe8+sWMWwFE9Y/fv/mtUzvO67YJzm6J4uPtqzSYDdQ
	 e+evN8QFS3zDoRyGqL8HS7G7FNDD8C0ruQSaxjikRm/vjjpkKtKsH3jB/+DPu8d+xh
	 OlTTxoa2bIEYHvXRyDup7zlG1np5U9vyeRv97GRV6c7QazKYG9j1f706d8mmWdHGSp
	 2Foq23dZZy/j7xUS3FFFPgOW8sqUC7Dvfmi9nbEFjy4cxLaUo/bj0qTbgUvbABuVG6
	 xezQ67aPcM393bslAWwI30Tn2byZ5SA1KMk0GN1ig7pze79KPJIeSAMk/qUviVgIDO
	 H/ayMf4j28UCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC7FCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020739358.27339.3811551581583672584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f126207f7a3427f349f47e69b2f6629da7627e544c56255674579d3ea9816f3a
Date: Sat, 11 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760207393
