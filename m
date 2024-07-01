Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA7B8C1D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719843923; cv=none; b=tFfkbsq2uEKTnC3CmpY1NpcqrVkheoyvD4zJGxqvx/fR4wHUvOpiTnjai6YHda0ye9W1WfkygNcmtF8JXSHYf7zR2ZskRTYaLlUQT4HaUIEGgJvCKom7xDp2QluKhzL+zhKfBukzoqIBBC7WJpowwx9xcF3v9QqB0/Mh+qRy5IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719843923; c=relaxed/simple;
	bh=GaKL9xyjXyy49n98HhQnr17uXG0MVCRR2ySvZ0eC9P0=;
	h=To:Subject:From:Message-Id:Date; b=ClyIwS94XvSHCgmNk2IokxIv+5Ej4ofGBFolnMW0gFqTeqXkqrs9zrrSMKRf9ZInS7vqkn4tKd602wMUhSEvSDswt+QVxtpJfkdSnboxUxKcura7Fo2hngBu2TnJznogGSnjNYycoHeBAvuxTRLbk/5endpcwpd4A2cvrZWckJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQh/t+jA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQh/t+jA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FE8C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719843922;
	bh=GaKL9xyjXyy49n98HhQnr17uXG0MVCRR2ySvZ0eC9P0=;
	h=To:Subject:From:Date:From;
	b=YQh/t+jAiPA/nVaynp9YWwaYQ83UTBtpm899yhYftRCCXBBcIAy31MehQhvzvVzeO
	 daeqc+NToAkuTdKCd+VbPZPzlRSNuouxdfASX1pY/ibnVV/rcR6rQuNNb9pdUDQdfQ
	 M/xJ3psQMsr2NHLYrpk49PpYzP1qse3hnqh3YGbKt4P9SxxihcFH+4wAMyMbI6LokX
	 Uanf/MUercztDDI5i4EPUOUmwyLtABkSfiCbFoV49yUCkqbBJA8Y2NfBLP/mp4HDWA
	 BEF8KIMPJJGDCu57LaeXNmSGfwdfP1R28f7UkChar46GMTni2Qgwsceu5KO/Bkgl0D
	 6oWx4SVD93dKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A23C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984392279.22643.8325068207190624388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f9521af0df44b5245252847ef3cb98ab9da823f32275c6e5f8332ecc22b7c9
Date: Mon, 01 Jul 2024 14:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719843922
