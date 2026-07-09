Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525BE1A683E
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783614514; cv=none; b=D+rjSNgwdawi5wnBfGp+JirfQMMAFeII2hbv1c9Woll4OqfmqZhQKYrnWKiHfrRqcvhGFWniTjWW7ktcUjPfmIYnC16da0223Bn21OAEl374vhPaysnrnix7JYpwydeYkDer27zrHr1A6efgkAeePmcL6L+4Y0poT83PMFkPXeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783614514; c=relaxed/simple;
	bh=zJBYmtuGX/R34iGnUxN4CwV5qEo5StkolT7RivTPuLk=;
	h=To:Subject:From:Message-Id:Date; b=GTobqVTL3HpWwgfvwjdpevg/vDtT3F/eSwfpQWPEje+gXtqFkoqsreT3CB8pql7kKCjGn+1GqyCHzDu7SQMAxEmUs7VktAorSfPRn/CBb/UmPKZRw3qquTUtO35FusOMZAmoOXmfq4/DZC75OrH6nmiTY6JPmJouh3pStjbdzS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZNtxvPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZNtxvPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D96C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783614513;
	bh=zJBYmtuGX/R34iGnUxN4CwV5qEo5StkolT7RivTPuLk=;
	h=To:Subject:From:Date:From;
	b=aZNtxvPjTRP6j5HKZaoQVYcnngDI5QA2wB/kX9j7MCHM+SdEoutAspu9EheXxuUMt
	 plkgde9rQwNzuUPKb5ajAj2WUnCWcPXO7WSDXq05zDr4U/yY+LWI4p6AiwFbEVfgnw
	 ko+qt5yeOGKwgLHPcgWZvEEpNvq9KKAsgz4cKZlL92G7AZqhRlaq+pBiwYt0jqX+Y6
	 WP8QB5XpwxH+fkkYVA2Y8cZn3+rAelEs6eDMVA/Cg853wDz+PtCVcE+wMBEjmcIFs1
	 5aP5aWlUZh9JMNwy584/PRvvw0VfwfgaKnp3VnhgXZZ1vVDlh0qj4slcsRt3T7sUf9
	 t9tMlj0m31tXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87F9C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361451368.3611.806989372147438520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6efe4c4e1e0ea15efb75c1020ed1e42b54f4437235d1e67920ac71919d075490
Date: Thu, 09 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783614513
