Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4004A157A72
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754533794; cv=none; b=eYSwj0Q+VUJlUVNjTxwrLo0p0ObUkjD5d+ek/5u5e+BxUzEOtaDsUumzPCLzVfWYlzrK1yjUMlKD0N+543hQuSfhBYD8Mje7/PB5xmKGLl2HCQ2f3mwViCpTNvmCm0JaWuGRoWlUYQliHQa3odbYUyT2cJ2lI1cKzcTcOpM4mJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754533794; c=relaxed/simple;
	bh=5NV1Dt2g21YIHoc/h6Wmw6W25No+JAn09City+pz96I=;
	h=To:Subject:From:Message-Id:Date; b=uVB9+s6KAYcyFV1EgbyDRj3/TkyP8RfeJhCrPY0ZSBQ6jgrXUC87TnubapM1JINMIrTNTmsArH7rD21o7d+Gu1Ym8NFDhoL0pHPka5gYWEJmJPfvvf8eers3aNTEwJbFQdQ8CDafjGF/bdmenLIJ0NcLm9PN+56rZRExEJOXYDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/rNCunH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/rNCunH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7320C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754533793;
	bh=5NV1Dt2g21YIHoc/h6Wmw6W25No+JAn09City+pz96I=;
	h=To:Subject:From:Date:From;
	b=R/rNCunHstsUeHgB8V9PVyA2Hnz0+A5xarQP+/mMhW7RQ1WWuvfhrilKgxj5orKZm
	 sVpgeRtHn2FI6huB/paJ5Xy+EjfB8zpVhhwyXZ8CS83YyC3Em9JH5YgrvgBufxWxu+
	 YpvwfUKfNVgT8wlxGglt7qesnYOem4/7z6TKTgFnyscOBRJgfqQ2XVoyYv7544ZzbJ
	 KDYjWu9PSYy/Ak97FLUlkvJd+Tf5UaWIAhmKuAdP3eMvnzs+lH0D6TEkwzkm9/tEnD
	 IexbsdTfKjxVM3Ah7E6hXCpP4C3Ty9RsQvSoBPZI26wR2ndc23xg7fatn27d+YPi3L
	 6pi7YexGuTakQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9194AC87FCB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453379357.1359.17965241655410547210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee74ab2edc402f3999558714931a7344b7eaa887ccbd75b07c6f7bfdd2a021cd
Date: Thu, 07 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754533793
