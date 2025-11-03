Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DA92E8B9D
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762164594; cv=none; b=Rez0WkJdmxhNxw0dCIcHCROTbfaGRPhBpFK/ThN+V8Jrd0+uoRiqwcLJdFz1neZx4XcdnIJwLE4BqpMxCf7YAIYbRFbJhninHOo+EM3qj/i9pqUUNZA+8T34JuhPsPeKEWDxeFa3d7+HMPrBSOuQLizS+sq8shx28eAuFnauaC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762164594; c=relaxed/simple;
	bh=QSmdvnalpQxtsFlCIsbZO0wwLwgiwFkRpdb+LNyTPRk=;
	h=To:Subject:From:Message-Id:Date; b=Yygnw7aBgq2xFCorJEL5aD785/FzebbzQ+YiOyLTLXKE5qq5WY2uJ/+c5vS4je+dT44LBzaFTZTUVBaPkB61HiZ45GWDmORZWY3AMAZWrcbu9tEzi6xKKbuU9sLZMcmzDU9T+cJEhZDKEa3/Oz1DmcvZX1gnpeFhlXxD+LuPVKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yhp+THCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yhp+THCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ECBC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762164593;
	bh=QSmdvnalpQxtsFlCIsbZO0wwLwgiwFkRpdb+LNyTPRk=;
	h=To:Subject:From:Date:From;
	b=Yhp+THCJFKQ6JdAtiUE2GVg+iOMKFMzO0CUqiw5j9ybbRsnYeybTBAmFqqY89lCGi
	 WGvkVdRsJdKKG0zWkN8y01FBnvZK+qx1XaLIv7CLBZQ/LwXTF0PMVRc0F8C708abws
	 d/uRF7DtDy7k9RmdtRguMn4BLk666IGaiHJbSqJ0feYbEDxAmKfBjwcFb+gkTZE/P7
	 swd5TLPXoZs4/h6d0W9h5nRVjb+7NJcHnw1/YOhtMNyeuWhTV34dqAXN3pVBcJWYN5
	 JdpEuh9P5mSf/Tqo6I1gwD5VAn7/qhMsL9O/p9j94YJDjzndvXUDUf/GygXKVEAcmo
	 Z87S4NwtQamVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB3ACCFA04
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216459358.23904.16740703893039312886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3e7f402ef7abdbcf8ef3761a3c39a31a2423a1f63d6be7b42213b8afb94b7a
Date: Mon, 03 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762164593
