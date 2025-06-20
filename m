Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBEE7223DFA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750420793; cv=none; b=KbZ6GC3IZv8zKRHy6Oe8H35zHv40kdnVMjQ/jy6AuG0MZlnRJSxzwpmY2mGOX3y3ZlNxZXrJSb4tC4WeD0NQqkP/Glt3PPFLssUKAM4QqayIikSXzWU233qyk72RxkwPtvIGXMLIOOahBp1/e6/nmmkIqDD+wzJrvt5dJMmAxi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750420793; c=relaxed/simple;
	bh=0ZAkdjcDFsPLXi6xHWUpchJTs6hjrrw9JiKgB71aGd0=;
	h=To:Subject:From:Message-Id:Date; b=O8ZEmYt6B/IUvFbOubylU+6qiVv6DmwBIlpUHltSSJNfKga5nOusGngT08PUpZR0NrPzwRuYSGjdPb7haPHr37oaMMMxesu9NVPqVBt2FIhj5wE71k4qIgsh0W1BlVM89g5XoL38a7L5OWAKVsHW39yUphfAV4cgy8SalgaaYno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAO+jXOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAO+jXOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED49C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750420793;
	bh=0ZAkdjcDFsPLXi6xHWUpchJTs6hjrrw9JiKgB71aGd0=;
	h=To:Subject:From:Date:From;
	b=HAO+jXOZc+vOKvMzTf6giSPztjkfTkJmUTYnpv9MuDypUSYs5HTKaaCUkxwHMncT/
	 3ZRyrIIZWWm3nqtlUAA5icy7AS2L00U2JvHGg3fbx5+QIXbD6V41Pa6Au4F2BnsNdS
	 GbTryggr5ooo3AS96aHDh71NQwIu5WC3bdHlF+1m8xcBqW5sLMPqim22iXTxb+ZrJg
	 rxhspglBYU6CcXG5jCzD2XJsHlwsoTi5GjkH6onBsu5kycj+0nuD4/hlJaCXCFdDdj
	 558jcIOdPbzCEBiuhy/eN+sNFQ6FPMxrDKpXM5riURetdVz3BqNG+uA6QcB/0HCG8V
	 eih/6V8nQQttw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F439C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042079357.25690.11844133997675668459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b774d47d65ad3a8ec8e0da6af0b196d3b201452f3d0c9db66024fc8b394c708
Date: Fri, 20 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750420793
