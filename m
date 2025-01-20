Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373D0194C94
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737362754; cv=none; b=Bov+80YnCapmU6K/lDF11PX0VdE37PkfGJjmf5jxXllSKUDlJsNjaJEHi13rnRj2dzwWW+HzjVmZPT5My6qTF6NBPPy0UiMMyaQybVr7riP+1u2V1N+KcEvKhEbwbNQ3Qboa43VIO6fy7aWg5xxyIvgZTvX4L5iIrWBLAEW9G04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737362754; c=relaxed/simple;
	bh=N9fPeSL+QbzVs1xvQS8DiB4tngCUCz2/h5YUzxH9CqU=;
	h=To:Subject:From:Message-Id:Date; b=T0WnMOZO7G47EfQctpt9iB8m6ubId6rxgOsCn1zZXr9EK6CXCNvudl9wAvJWsMy94Az5bRlIgNdBcJgwyjEZanp8u4ZwsSVN94nEnPehao6PDrUauDpt2q3IhaA6mSR4B0dh6/p5XhVdrK+R3no+5VQTmnFUA+Iesy5XSEg28uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbNcd2W6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbNcd2W6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7832C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737362753;
	bh=N9fPeSL+QbzVs1xvQS8DiB4tngCUCz2/h5YUzxH9CqU=;
	h=To:Subject:From:Date:From;
	b=TbNcd2W66Pthd93RUjG0lfm+EAwcjXkxb+NH4JZJVUdP9P+fTHttCfQEOL7yb7WZ/
	 1usIF8bgvAHN0oSYz9FsLWLsFwMz/AEove0tOjWQF4/QjDhCQDGa4q+3iwf/vT9qnl
	 f0z4KJZbic3f/qF8o8beQOZ1uvsxCcT7emUBtonwMUuRKKKSEesbXhjBClMRpG+UjW
	 1SAmy/OxLkjGmh6P2k1nuVpmHQoQEZLP/ZSNyUHjLr5GV/QB1BhQEWBcyBzVcGRYg+
	 Rdi+dqA9gTgEHBiO1K0yi43RaHcvYeNF+LVv5qFd3PBChhfj9j00HLejV53lGZNJWp
	 tTYHLgpOcdjuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD1C02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736275359.5275.1594741275660741294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e1d31b1b5bdec05fae7b68ba5d8fbeb2a46b9cdb1c4e26bfaf9d428a39c36b
Date: Mon, 20 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737362753
