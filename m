Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420121EDA26
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743775794; cv=none; b=l1K3b6zhBI7xlRyY0TjePpsdJj6NLyZZuG+JBJ1FXnLsWljw7le/6rVCqi3S+QDnEyXysf7OnwpZw43ATXWXN2cL3ocAsDLdo3SYFCFxWiK1Fe8UZ0LxYrfb1arPUFdU0GmzpoqUzeh6XwGLVAO14gFPOtdMKisFXUGhmyqdDmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743775794; c=relaxed/simple;
	bh=2rbeSjuWDatBxfqt9i4f+e5QfXZRXo6J9ePlm74VXgI=;
	h=To:Subject:From:Message-Id:Date; b=gBpK/4kS1pjb1z9E9UAioaabfnI84SBVkod0lCYlm/eqhTqOpbGbjgmMFyvqKrKNT+3c2rxAka0dM0bzIyTJhRcK/cHLpez4ghSTB9zfnG1aSK3ZmRyrD32rEjMxNm89qePbm+K6wUcJDmHkm7HlryjsrsokONwkRi8EvwMftT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vaiplyco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vaiplyco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6633C4CEE8
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743775793;
	bh=2rbeSjuWDatBxfqt9i4f+e5QfXZRXo6J9ePlm74VXgI=;
	h=To:Subject:From:Date:From;
	b=VaiplycoVT6MPbcqkNNzMrHXdnZeDpXe/zuUXv1E8tD+z3Sni222iTkKT7Bu5yZ2n
	 A84m4F+JbfqhC1RAomTQYtu6HZQ442bihzsnosDJivEc9qvD/G+h2vR1am13gZfm0o
	 kYBzPZ6S2jyTrso7+h3eio5y3ZU/++2TVkMecaIxgnGi9rQEwMtLwdiLQqw7+lzfSE
	 rmV3cYLhCk3DoDLDeU2ADyZROrjEdA6PEuRd3HQhwU2z3BApcpKAtoX1YB2iNGFXxP
	 yMIPhrlIYt2Ow1LqMoQNagLL2/g+4zsLqgnW/M0PXL+icGWbQfB2kMxuf3tlShU0u0
	 yVJKIBIlxBZZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AAFC36014
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377579358.1072.17485839077633285713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c983f1a5964ee653623c0f37b843e3a776da88a50c675122c5b4fc4337675812
Date: Fri, 04 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743775793
