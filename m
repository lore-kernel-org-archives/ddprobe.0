Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DF73D903B
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789632634; cv=none; b=ow5J/M69F1jZ+AKb6zdO5dCpczOSkxfrjNv+SeSTGp/r0AqfscB6AS2hXd1pncxaFgYzhex1VpTBSBHuWr72ITlI4r3CKC9gf1oseINWNb//43pqTVj4l9Cz5qWkgV95Hm+G5kiJAFPU+CoxG1EmFvjNU4E+Vl3KhFqc7edVrxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789632634; c=relaxed/simple;
	bh=8Q9PISgaV2q48bN1pBX05tb8sSxavuxTquvIWgbFeBA=;
	h=To:Subject:From:Message-Id:Date; b=to5PFuoKr1lwM6Edpe54fUo6GSEUCfuH8iO8iMG56ZVnEqG7Vq0OknFdwpzW05RXeR3qdFjQlp3Rc0wufAn75PH2Kw+rDsOfqCTDQSFER2F8yK9iYtp/DsMYc6RBEFRwTZt30KJgcbJ1Z7GRijZ8KT5jksQCBwIY6gKKmZXAZHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5AfiVyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5AfiVyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB8EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789632633;
	bh=8Q9PISgaV2q48bN1pBX05tb8sSxavuxTquvIWgbFeBA=;
	h=To:Subject:From:Date:From;
	b=q5AfiVytAm6VRrDzaUD85Qv05m2uI3FL8tFERHFjjHRt65zj99I7XYby59KhEbAoZ
	 TA7OX7cf95darstROBI7xqyTm9A5jTiKG+B+eZ/9SV3xPZkeYBRk4UJVMISzC9HnvT
	 5DPtoFqDg872At7km+/ZVvgDGEAGwUGtgQGWNiWIoYSq8wnyzxFkS2kKYQt6Y6wr6/
	 v8Vob+1chlFYFf3nlz4XwQfrX9CIx8+w/SCElN+Ffp6i1l/DCEokwnkNqjErIvXhvQ
	 1MIGpoBeiBWlgZhgPNYSkH1/LaM3e+V9lCwJ1JaGnFe/7xQbL0vu7KCuXh+XwyObz8
	 JNFN+F2oi1QgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCE3C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963263369.26385.13003474370644784138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f30cd43811977c1b6392595ea4150614f825ce8ee9a0a7bed14344a8b553d56
Date: Thu, 17 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789632633
