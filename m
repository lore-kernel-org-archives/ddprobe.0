Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E797247FB15
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785862235; cv=none; b=AfFi4sZasRSUBakR2acVWsXYNQp9QpQJdMkqRoy5jkR57tgdqwvx+ai5i7UJRgBqdxFPpZXDiIIUzo394X7IsL4WiO0izsumC0XPIpJAUYm/vjPcThCSY/dZcsbg1NnxcaFdckDQu5GtLi6Or0StCUNnNR5P08o/dTbFh4hVY+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785862235; c=relaxed/simple;
	bh=gqOePqpr+hUVLj8l7pxgKTdxw/m2t1+yB+1eIofBrvc=;
	h=To:Subject:From:Message-Id:Date; b=Uqa6v0YB7FgY2TVpgyVlLwD3bTuiZEPOhxbElgNFTgKpU0fPUYSg+7W6tEHT4k1noQDL1iVhzEoHAqdtp4xrX5vFMqzg+HE0DkgUZuNzu7lzfQ1kj3nC/LXwtr8FsMwfmoXEGKsWcL7CZpg8z0NAlIuI/bf9+4GgrxgLZ+KK71Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nN46LEIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nN46LEIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE174C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785862233;
	bh=gqOePqpr+hUVLj8l7pxgKTdxw/m2t1+yB+1eIofBrvc=;
	h=To:Subject:From:Date:From;
	b=nN46LEIXRS2IHa4JwlCowB2cGAB5OqkXa+0qfm0HrPl96lyUmN/LbqmnN1EQ/zl/3
	 WjFgjaGIHyCZzJu5rf7aZ7QdK6U3d2imXBmFYRlHQumRRIpikoDN/viAi4iAj9bZi2
	 vs8D95pl+L7ys+KCFFBmvfQj6TrZ0jvFqGB4LSVLSL8NhTeUrxbCnJg0UGHxsX2yqH
	 HPGMwVO1wtmqcR3UCEaNyBl4IN7G1JNErriwuJEnQa3s+TOzAJC458APpwUeTyKgCj
	 MA4ZrW7ViYtWDjGnf6pPhE7k8EMPW1UTf/V2ffKrggFR/XVDruq87eaF+M+RR/XGIs
	 Y2qr4IU3aznuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD4DC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586223368.5146.10196065264195355474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e947db74efdb65a68c91893dad415ab92ddaa4fd029390cd338348ba1b875c23
Date: Tue, 04 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785862233
