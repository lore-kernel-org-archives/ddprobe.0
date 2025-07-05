Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C5A33993
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751684394; cv=none; b=YOfonZjGwA+Wl2jXN8L5ZIPCsM8legr7U1zlK5xkMHNMx58kw80nIhU18m/F4tIMRkYgk3a1W69FmSbazENF5216jWKmIbNbqo4k9vpmyu56q9F0cYQGB/KrB09bkUyLrnMUjkH4yB6wcn/ID/tr+Y/7SINJKWHF52zBzn25BEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751684394; c=relaxed/simple;
	bh=3P679fkE9tUaGflhKyE2GQgd8dZTS8NqVvhSWDZhjC8=;
	h=To:Subject:From:Message-Id:Date; b=p3YV+GoaXiBhCqGfoGOMR/6//gsrUH0lbKY+ElUYLRMZBv63AfXw7rhjfLQvuoWJ69rbwKJQRh7hM/WmHuQu4m7dY8vAgJkBWm99WBDbK2pDjp6EejhmQL57o+JcwwiKCrtGSGpS7+E2vO/msNTfELTgDqeBHvKpdx8W8X6HSw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6+T/sNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6+T/sNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9338C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751684393;
	bh=3P679fkE9tUaGflhKyE2GQgd8dZTS8NqVvhSWDZhjC8=;
	h=To:Subject:From:Date:From;
	b=K6+T/sNtRKrMZ7YqWGn/ElwCMQkvFPsZKrANQgjE7owS6roaYMFC1X1TY/rNJpk6b
	 Se/XF9Mme/v9qX4TQPq1wzyBRn4QMF4bg+XQQ9Gk/EVNuy4CsXbucxwSDQEqEaFUZO
	 xdcni/3tj6wMMfKjqPrt7zUojFW9d9KL+RJvE3iIC0PSSssyekeekkvivfaSSWLzr0
	 XSPL3fufPpUXkeY5ifeNlTqZqRmdNLArBrVNQ+DQV7iJPblsVORvk4v7BD+QL39e0B
	 IsZu9DpydIYuJje9XMEBDd2npWqJuydFi5NryTdlF6099DPUiJgK7d1c1O3ini+fSE
	 CLg+65RHzyddg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97565C83F03
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168439357.26448.17546455642020735760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b7cb022f40d2cf7ee92ab95e28a9aa8b57182d6ecb0cb95fcf2b5374e2f79b
Date: Sat, 05 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751684393
