Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBCB222565
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759199394; cv=none; b=p3QNs9bFzRwy2HzicveZYq65/S+yjNMF1xLRDwK2DcZXBCSPhDF0LFeWGRulpsqJduikSd2ofKrE1VeSGxgVT6Nj5JvDqU2Q3MS9XZjhuCHsJdKqHF+9lQsNyrAeINJPjcuNQIfNkZ22dX4NUhhPbs0G1lqSNlwFDzFJ9hXMJfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759199394; c=relaxed/simple;
	bh=ZWWxd2+RMBKR7dS+cVqcvz0fdrC+09XFWCSa44OOlkg=;
	h=To:Subject:From:Message-Id:Date; b=txZSlWWyj7enMjC4qI5Tso+bf2vDqF/uSvvGLiMZYi/kwN9wq4Ds7dUt+cJsELj5Y5AU1hIu98lLiBwZeeaWY5Fbsj/wGa1JJ7wwE+/U8jlODeE6izbgIzwWpb8sUbCm1uvRCSmYr0PsYXJFlv/Wz58h4mhEIEqU2An0FWx5tZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MX9E7A2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MX9E7A2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EE0C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759199393;
	bh=ZWWxd2+RMBKR7dS+cVqcvz0fdrC+09XFWCSa44OOlkg=;
	h=To:Subject:From:Date:From;
	b=MX9E7A2u8n0dNJBRebBrNE9YO4XlA8PzVlhe20JZEmrtdFTjlyuNhIuByyA1+3JpS
	 2AmoFrF+KTGxhPXPvyal+l9ZdNKEp0YvDZfGq5eKg+zZ9+sLVeTI5OmgVupybDMF1u
	 AiAkjmIYMGwazHvZ+WDVFEFT9QmOpSweu4OA41ajaJ5LOSFX6viVIr6IS+qKFktuIo
	 SCcllg6IP6fXtuFvs+YqoTfSNW3z9K+Qafp9MJucC4VMNn/yk6w7MDZ60mw6cyuL6i
	 Znk7xW439am3TGBJ4ov7L3H2AjUeETX6PiUhPYO9S28z9618HFVvCBCJRKsXoYtiQN
	 5+ercYqJcCMMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9188ACAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919939358.30696.15495913506942473591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59d1802b6138bc9a4c6e8770eb4184352418279b4f07cf1af0569e8019a1623
Date: Tue, 30 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759199393
