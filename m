Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E0A2DC352
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771434894; cv=none; b=mQWvdZuJedlQLwAB1BdrBAv0CI4QNpTrM5/p1lEgjSP7EXa5TEqoLnHgTw5uhaX/aJHKuCXCSh/ehoniru9hVouF8hHKJ7i4Z2DWtMVKN35VqWrnWxi0UGmbrA9CbSPwgTfKmtkRQjvCqWSv9eiLSwg0HAnduq15UKNxZHyq3uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771434894; c=relaxed/simple;
	bh=wwuMA3e+MbxnSU69hbi4KIs7JNPhs4yKK5/07+cc5h8=;
	h=To:Subject:From:Message-Id:Date; b=i9thQS7Koui4nrSxj6y6X+WTq+7+jvlep4XDG9wDSrfj+DeYEICL4KbeAOefG2WNWPY24gHdJvUOGvk3YHdZCnjVjFAZ3yyoGbBplTzcdPXhiky76zthNkCjRxtDzlP3ZTp/MD1XrhSw1qn0cR6IVRC5WkhUtIq4B6sqRj82JE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P25O47ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P25O47ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E49C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771434893;
	bh=wwuMA3e+MbxnSU69hbi4KIs7JNPhs4yKK5/07+cc5h8=;
	h=To:Subject:From:Date:From;
	b=P25O47ute3/cPDgHIdywxgAfNVS4BjUOM7wh/pM47zW8oBVJo1OIRYDaiv+ae4+VF
	 FbEMzMQiQfCSup26a4Sqqgx0RTcAjnwdXj5PKMJrZt8ghX3GxkfDsiQH5QOUrNvigV
	 2G/OENL6CchdRfjajsc+L6t0/a4KoMW0IQJXHtKsFKo001Bfz9vIXzGPxaVJD59h1u
	 FPIDnQ3CemTHh7qOu/nY7gXHg3GsWPoGDh2GyQSZ4Q7/ggnJ8Yky7OpB0CXwnNVUEl
	 btw8Bu5vaffZ3lDkomIZPaxpZ8/kWyBTKdJEKGxaq+0sS9EpanhOSy7EiAxU/6xy3+
	 aX9CYckQ8NvQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A7EE9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143489359.23192.2000693701827514923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54db2a5af27d6db0f5bbb977c91967511abbfcdc839e575d683aed33731219c8
Date: Wed, 18 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771434893
