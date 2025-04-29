Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F5921ABDB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745947793; cv=none; b=N+nCmTiYe18icwlftkoSoQJi4kBEhZW79N/9Y17lf09wfX6aDYnlWv8puN9IgcGq/nOk0/CjDjHbFuIKZ5X9V/9Okx1vdHK0OVmdBh0DAfGKktz+OGd/rmvZ9WVF0poqTHtE5L8IpmdfxrHwyX2uGnTf7IKgXYmD14ZvSvdi9Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745947793; c=relaxed/simple;
	bh=Iggjely10U8nJysUBBTsoe+YCOy1cwTsV4vj5S2t6Co=;
	h=To:Subject:From:Message-Id:Date; b=py9xLlL5qn+pbkkhnSMzlOftX1OsT7X3rFYedjcp6UY58yv/A8Ouc3KqWzJHo/kXwSapgWTbYyavGXyy4iflFzV3ASINv7paxyZ8NKEjMQyMXbVzCP9hdcevtLZOb5roBUV2nkrFqY7jFpVssL6EOt4TJwltmrDvmcJBZDpKg98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJ/hEdeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJ/hEdeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E67EC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745947793;
	bh=Iggjely10U8nJysUBBTsoe+YCOy1cwTsV4vj5S2t6Co=;
	h=To:Subject:From:Date:From;
	b=mJ/hEdeAhMcFAwrdQu7aXv8bm5WUNp3vkfuPV7e+mCvSMeTobCDEKAHOy8bCdm86n
	 +KdZ/pHVmB8HnDlZHnSwXjdEhgcZQbXte8vhz+9iDFiyG7Jt0cqExeJAJ/rfBO5ep+
	 tlsC95i9PirugFQkMxjoMa/3S/0l/R85LcPqLORnW8q507Xuk9yKwq7aQXj4+i/viC
	 m8HZrh9DivdwTOWTIAPEYqEhUryJQCw6ubOUWwUmj2uWGtLTOdv8wjdq8QOQlSobQN
	 07m6eIoEMnwWwz+M8BVeU6H7krbuiBMuHtyX3PMQf0otdBgUY3wx6FM7z7SocL8HQv
	 sYf1d6qY4i1SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA73C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594779358.6686.269183007925593913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c622f3e97fd2dd8d0a836412c9f492ae01f49468cb29ca9666a43b0756e7545
Date: Tue, 29 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745947793
