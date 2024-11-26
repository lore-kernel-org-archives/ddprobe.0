Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2876D1AC44C
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732627554; cv=none; b=lYqogeUBL0EPq3pRQFLlVca2qavWeoRWbBu0Sp77xF29GDuNdzOC9Rqe9EF15/ZqG6LnONSu6drIR+dThmAD/5AZ2/Rp9LDdfhiiyPU5DHUoM8q5FcrcqSINjC7H4HL873yKOyF3L6I8M89+K5ERrgs4izglZ3pmDByXNOGopOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732627554; c=relaxed/simple;
	bh=/Knr5fwrbjR5bAhlcgW6GmXLuUZcpwyfNqMX7fLcl20=;
	h=To:Subject:From:Message-Id:Date; b=o3qcaCu1YDjYuQnmX7zu/C/xUyGZMVN0OTVgx1TeksR4TWdjaiKb8ua/80hvJWK0VJ/5+Bfx86SENEFbGvtzkXipytp7vIu11UJ6/2k+D3fjria4CX4ATmciNVFEFnq9V8w6Jfna6kU9Y/tem9v+6Yddx/Gun3ltiuF8uSrApUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oN9p04Je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oN9p04Je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC533C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732627553;
	bh=/Knr5fwrbjR5bAhlcgW6GmXLuUZcpwyfNqMX7fLcl20=;
	h=To:Subject:From:Date:From;
	b=oN9p04JeF5COwBGPEbC+9S3WzmfKWTbqlEQg0FeZtwQSw68bhaVUd2NUyzWLZ4co9
	 vS14nD3+gYKxN1j+zjo6h0VoqlnlC/nHGaqqUeawC3aRrXlIyuQ6lknI1oT7ozZk91
	 mO5pa3maEguHyLCQykA7Hn1qD08NX20KQf1wGb1xXsYmkUqm2lMcRa78zrFy3FsQ6x
	 9MaIOjKPhkthqOHR/k8JysRWxZc4gaC7MrtjcOcK5eyFj3zqdOvyeY9UqQCHXK8sAk
	 OlSbTx9gKmMYWq/C/t9eW+YDLjLxGwjAnmUobHDuHvYbE6ss3KQ55C7dHgfp/Li78D
	 4tEZgGSpG7omQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945DDD3B98B
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173262755359.31332.12525778879578531644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c730d6e4ad841aa12f6150db250e6a8182f07725862f920bbcb03938be5f694
Date: Tue, 26 Nov 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732627553
