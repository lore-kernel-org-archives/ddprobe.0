Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4768620E6
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727236554; cv=none; b=T7fIvRvvaSM884LROmetLaW3G7T//SBkQUUIsK+9AVg0Tef0vQxPVD97ADEOkOwNktKnefRLovLbuRejTwjCGSaP0OEHmMeQZYoyfh3JUGfiuSoW7rVXdkzqar2TEO+yNRNuLUyHZPe+ySgg0eEfxcOh3Bn1l+M2Us8clHP+Npk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727236554; c=relaxed/simple;
	bh=G562oHpS+mXAKxrj7OYj7EvmfKoUP7oT4zmKjACX/sM=;
	h=To:Subject:From:Message-Id:Date; b=YLg9APdYgc3OspX8cCB+FkoSekNfa0sGHGnMHYwHj1cgNrlYiYppRbIB8AVKRK6xMjpiQQhBQBMcguUu2kgUYG7PEHgh1BNy9j1tPsHCr2coP4mbtoOmhwn19CY0s4tJYVkZRk8OdpWpPl4piL7cJfqEMmf6S0LR43U1YHcbg7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlVl8Kqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlVl8Kqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF73DC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727236553;
	bh=G562oHpS+mXAKxrj7OYj7EvmfKoUP7oT4zmKjACX/sM=;
	h=To:Subject:From:Date:From;
	b=SlVl8Kqm1mPA1NnAAGHRO/kTB+lE32UTzUDEGvMrbJ6lgTGZVyQTOCH7xwzoPAICg
	 DbdkaltggVz3STRrqth6ITeWIkgYQc63yCb8aNs7m2lRTFD78IrlIK7OwSA75PEQBj
	 7FSpOdJg7570TNnATTWlQQqnKN242l9TOAinzqgdC74zHQNO0aY/78PVdF9+m6hcFJ
	 DqbajXuF02tgCL6RUr4YMHrg2/wDEfWaVc500SHQcLa0fMwlPodB0PyL1hlbyJbGKp
	 PQv0K/yOjWFv0GCEbgxxCoNjz+FkS9gPdwB59z8AWCWSO3gECsfJjMnhYwiJ2fyJza
	 otTLLffXjxIvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8DFCF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172723655363.29751.1281984702245210423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed56275ff7f100185661b2a36a087f9e3ce72052613125801d691c0866aded3
Date: Wed, 25 Sep 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727236553
