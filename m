Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B491212B1E
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744100394; cv=none; b=No2u/KxUS3WXNSqfZZnwr+OiEKTtgVdH1yQiuE11EbPd+bsBSYRjHQysjA42pBNr0d+SEgVkM9M6xmDf60UQu7kJqjDBYI4RV5WHw95jtwEd6I/HKQg/YDEOq0Tv0grZ9OEGcuLo97yBF9BWB3P91v0XAGL24nDpNCPh1dePAbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744100394; c=relaxed/simple;
	bh=iOJrtG29GR5MXpC3zJENQaz2w0SUhV2NNtoGZfE3PRw=;
	h=To:Subject:From:Message-Id:Date; b=AC7jiInmhIEGf01SaaEg/lE8nZ91BE+AxmXdWMvmyNkMk2g3uyHtXJCSa4OUFOTai4BSYePLSfCqrDzBFN/pw2MNH23CkDGvZZUcijIvYqI0xWojjV/pZsmHlRxaUFOTDQ+5TrqFjkbW41P9ZTIhloZXcl6IC8vuCMBeq13r/TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZRi+Jno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZRi+Jno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CA4C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744100393;
	bh=iOJrtG29GR5MXpC3zJENQaz2w0SUhV2NNtoGZfE3PRw=;
	h=To:Subject:From:Date:From;
	b=uZRi+JnoyuxY/BPixPwEqrhSAi8j8yE09JE4JBmZvB6xzj0fmVl5BgSddBJFJDLv9
	 XMwcg+0rpyt9CusgbJfXKTd48J4D0NwLymg0Zf8/3i1WMCe2XD+Fg9spvRghvve+Yj
	 Z5GH2sfCEBmFpjBlvui5qF4Qh2yDDS23iWFfx3XMry/Anw3g5i6fJo+s99jtr2zYC6
	 jBZ6N8Lr/IlitI65cC3iF4r5MEOA0hKd0EeRAFugJ1uOY1unxwtUz2ms6gzguBCgBp
	 ztamzMdW/YDNXHbTsPkjwjPG77PgZJ8g3bezdqoaRJn7ISgLb6Dt6sSDIty2lILk3h
	 ttCNbitcYg9EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99784C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410039361.30275.9922098945883978796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3a7c63b73246970e07bfd3ca29dc3055bc6d086d1b1a38742a8b3eb6f1a5f2
Date: Tue, 08 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744100393
