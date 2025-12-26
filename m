Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3DF156237
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766729634; cv=none; b=Upog9msGQKHUhQF0Z+NH5O7HTDuyEoIX0gEfj4fcXstg0/3jyvi3JtSlpfrAv36t/oahghgs6n6dv0Hnc+uC7dcGnjpXyTXaTds6Vj72s6Aa8zL5RRY3G9oEKvH8UgjiZB2l9Y/VfhKQ6yVvE5duHhWD42PU4aGtReGnj60Lq5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766729634; c=relaxed/simple;
	bh=ZHG8MQNwzu9YeUM/NeI9NpuXQtedqk/eXQWyz61mNg4=;
	h=To:Subject:From:Message-Id:Date; b=FI1wqGqBQriWOvoCw/OnCGFb5sNtUuy8hjY6dKkXHQGhYJc3VgkH1yvZi9XDoAxBi2PQYZS0AYErozJo2+CO/56xocWmWA/7jBjJ1qohg+kK8rntwiQLpGU8MhZO6lHWV8e+SLl+q0E/9q+xPu2JKOg2Y4yDuI4te/VEfJRcPFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jcr+X3Ke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jcr+X3Ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB27C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766729633;
	bh=ZHG8MQNwzu9YeUM/NeI9NpuXQtedqk/eXQWyz61mNg4=;
	h=To:Subject:From:Date:From;
	b=Jcr+X3Kefqoh7ooMuEA1tLRw4VV9s3IpOzeaU3eex3Jf3sDC6VQlAEU1Z0OuhdyO7
	 glYChpGtrPYa/enPgMhiGZlwjDUr+y164t5BR0t6ZSKw/cPU/TGqvTlHmnyoAz3eBL
	 sAe7v4D4x8NR75Yilz62hpNSPudwRvj0Dzy9uQvbLJwLJ+CRh54mV8TB+rRarcsetF
	 Kku5tYsT3ZHxuqMNIhNVjFGbDPA3lEnVjA5CunSe/KO5i1zagCJLwTOho50Vmwc6aQ
	 z3I/uFnDbkFjZ4QZRudquDMe2MRy+5xFutnacwgcjzupFc2pVXlrLtNh83HI//Dz0M
	 2tJMq4OVaG1aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3AFE82CDE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672963360.16738.11908738642262699949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad806b3b43a0ae2f21d7160030d372b3da1e9a65f07d996d91ab608e55c95aa
Date: Fri, 26 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766729633
