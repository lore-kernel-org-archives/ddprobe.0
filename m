Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32708221DBC
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745615995; cv=none; b=lhBrz6TBi19FNlx6TtJTnXJP7jWmG4gINETvKF/+0W8iX1iIEjMXEZ3Bxj9s6hzQaCGWii6ANSx98K5+MvgOgdix81XcNt6+4nZAEHCO3uP9eeZZIMAtYwb2+j5KtTK2iLpqV3CjZGBaorFuBlVG6a25jWn5McbHL5T9ajUVO1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745615995; c=relaxed/simple;
	bh=p0aazk52PBDy6ysQ2VniGHv9srTmRU2Mt0KOFmW26Po=;
	h=To:Subject:From:Message-Id:Date; b=JrbnkZIz/n6aVs/2rkRdxlVX1x+Pz8mL8/1CTVz78iyVBhWnmBPK1rCrxA9bAvMh/8voeA65ouMNMHcUjS0zV7n21Axsddb8j5/oJipEGr6hANknRVuC7aMiZnCVI5EndoHVCSexmN5/NknXBJh74Wo2naQ29jSA6GzgBplzHOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aD31P16v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aD31P16v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1A9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745615993;
	bh=p0aazk52PBDy6ysQ2VniGHv9srTmRU2Mt0KOFmW26Po=;
	h=To:Subject:From:Date:From;
	b=aD31P16veFGA1PydbKP275sGZxsm5HAsmRoDb+0hfhDqYN9U+81fMm1BmMeROvpQA
	 UMCSFIhjjhsVKD1ulBsCWvnm0y3bZ+mfoVXkIEvql+Rm4ZI56Rj/AXW4lZidnHviF5
	 qQP+SRauvrh4BAJtk8WkkHLkHYCgmy5/rIY3KNybzK6h8HrN3h637J4ufG3qwYYi8a
	 jDwncUI+Aopj+j/0/6cHw3+TsgUIsH/diybe0um3l8BTh2hYWUKz7AhsgB0r3DBy+a
	 h8tBNll2A7q/2W2D1D8TsSlrQ7DqRsWztnfQisvf9YmRloHuhN5XTyHci+PQfhtpTw
	 ObR9F8Jji/NLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E2C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561599357.15929.11764922905949589420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12659bfddfccf0236c06cc0e77f75fdef84e78cf31eb4d1f36c39f2165dd6c5
Date: Fri, 25 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745615993
