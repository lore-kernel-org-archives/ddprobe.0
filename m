Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558F64430
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737981354; cv=none; b=oRWxbrGdZ5GdxrjjIQe4fH7hbLsm7t5NHeMPZbkeF5NoOtG84xXYiAdTkySSQY29kNIGJzoDRW0pY0VUXFeU2xMqiU+8ZNKfRg09iUdVun2OLgWfPmbcJHkC/gN4ZeqZZT+4C5LaXbF4gTbJ91ypdmaPjxRzFT+F5/xJMQoiGSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737981354; c=relaxed/simple;
	bh=NvZTs1SFo2O1ECteTScVNPgtnZyJBIzY+OHq/aKSlhw=;
	h=To:Subject:From:Message-Id:Date; b=gg0ulvOhn8OwXMzCr5L3WW/X7PurjxvDAH+4aO1TuSnuZFavlr1Q6C+/7YEr2fDMeTwJCxExsJWhQlvm+AdPKn9J6ZiAkHxp5FHJ5HgtGPpDaAEgTxfyBymUoKYxaeLZlc59GWoulXZWHVMIQ9Aaod2tBh1Tk8RZJrnH9Ki+zJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIfrIDNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIfrIDNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10A4C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737981353;
	bh=NvZTs1SFo2O1ECteTScVNPgtnZyJBIzY+OHq/aKSlhw=;
	h=To:Subject:From:Date:From;
	b=GIfrIDNq6vj7jqUz9b4kjiYVUly7aplqQ587wzKkz3O0U+HGZ5wqD5uO86+TowhMR
	 zeqbvvqrIPLRNud0CpgEvALFfmuNSlsDNWWCFSL9CT2G22odVac3Qd5h1mwL4ZCgWk
	 LFWQaHMlgS37R68zBWmM+9Bm4oDfbZsSSZhen8ZUGQhB5CijZxA1zhVN8z+cu0/zZL
	 at76p2BOdyvwY74FytUieDeZEzbgK3KjWp+KY0p7oJWPjvBnTiPT6UYbLrAe3YyGnk
	 HfkJYpxrggi5S3ZsKnjpzPbpPuQUqFuLLl6iH9WSUKpjPeY28GQH7+5Z2EIGjU5+PQ
	 idySibXeq1SXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7EAC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798135362.23320.9848639604261070415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c6caa35a3b310694b17820301393f5c51501646a783cc715348d9e7e7ca9b8
Date: Mon, 27 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737981353
