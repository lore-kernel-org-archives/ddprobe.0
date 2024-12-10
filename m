Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393F633EA
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733790954; cv=none; b=RYO1DxR5t5SLfGQ5ptdlkawwjNFtB1+BCSn1H+DzjiWXZ7Ompob8Fvj1nDJb31onnAXWQsbN71vxlNrAKknuMuZxA+IJfhEO/N4wjmBSRAcEes5ilwrI8+I5GrG+O4PWSPAdrqWNVCR0iWsRyC/Np7ThGz4G4zJuHAZB1q2ajAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733790954; c=relaxed/simple;
	bh=rDw1yE8T3dX+9GFlES1qVCuVCezPc4TTjIeSMMJTrMU=;
	h=To:Subject:From:Message-Id:Date; b=EYCIptaifyDKWJkp/de5eAEchj8cS3XekTzsb3ex3I0TiMv5nCz92ANN58fMO4pg7loOULmo8xmTVD3qbbnEDHQVZpAVsR+diOoCsPgKAd8Nb5z9cAZ9xY0rzZ2Ib9jl+FYePjI6Q8mFZe+YRkDHTaaYAc3j92lN8qjVSkNpoZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+LKx+tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+LKx+tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48FFC4CED1
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733790953;
	bh=rDw1yE8T3dX+9GFlES1qVCuVCezPc4TTjIeSMMJTrMU=;
	h=To:Subject:From:Date:From;
	b=l+LKx+tvWTPFf2OPSYjO7ZTlmt37GSxya7iXcMJT0RXkZYGryp6i/U9+3qm8v7KLI
	 djfgKhbN0xNtjHBaWpUERCMX/K+cFhPX1CLznziopB9ytDkCyT6YTQxhjHEb9ZTIex
	 aCjUqYbAnDMJ7+3DLcmA990wVH2LfWqxpKT0URP9LgaY7DYWloDeDD7uR/Qk0kU6tO
	 eDgZFEZ838XHtVezpXrx9QoJ4if1UQPts/YDkB8WpbpP0clsdxg6fU5fR6mGVka7sa
	 yIgESA2Aa4xKlmyo+u6i2xgpFF2FI7b8ZkpDA18sRUhSuMNgtL70b6m2K7zOXZN+3p
	 HbWzVgSAjl1dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB3EE7717D
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173379095359.1641.13616818369018690772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23a20a1f349a94f8bad742ae73bf8dfad716a6117782d26c6ab880e009c209d
Date: Tue, 10 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733790953
