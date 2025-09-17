Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEEFA258A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758120593; cv=none; b=DWTFNDi/xY5P0v+obYDMgEN7ybyTGFBwcof/Ok/O3MeSQi1LyjtVkZpEj42MkhKM6EtPviKifgNwBkHiarzTvW6P99LQB4hx9EpjbVV92Nz7uAyFeV9+YCIOa34JN+MXZiiS7ul06sWQDCHuSbB5Qblgf4Hlj7mIgO/1qZHEhZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758120593; c=relaxed/simple;
	bh=q+xorCc6RtQvhK/S89F2n3L+7PzX9VgADS3a1pEUFa8=;
	h=To:Subject:From:Message-Id:Date; b=mXQIELghXslVhFTZfRRdqJuhjiBHkDmqPk4djsvLp2SGN4FyXC/YYPLPgYghS7JtQnmRWZ8AVmb5cBbB+KZBnxDEFM4f5ZUYsqD1q2zHnucOm2PyKXH1adnUgukgc1Gf5/UZdOxPpfUwh6gt6xjGs+P5gY3fmvs5adxknfq6xFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxxaGK6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxxaGK6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17E7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758120593;
	bh=q+xorCc6RtQvhK/S89F2n3L+7PzX9VgADS3a1pEUFa8=;
	h=To:Subject:From:Date:From;
	b=GxxaGK6/pv/cblTAn5BkzKYHNuISUaLQ1z82Ij4Z7K3JMuk5hV3XuHI9aIdHUdx0A
	 Em9meZOxebOlMgYUQtw/J0A1Te1hy8rbG/vaE+AsvCPG/40RTGEwkn7USeBSd6Cj0w
	 ShaMu5ZUyHp4SltrqHSCe4kHSmQXV33IKUsQbfvsgEI0XLmjqkdRc7v2wZXpA/oYkP
	 0Ex1jn9ksMtV+RpSeKOf63jUBU1sKlPU9FiFSYqnrpGIZ5iWLxwBxGjq5wnJFFcXBJ
	 NQX0L+2LnsQSchLHtrz2HnVcl530wMyhZQqQfgyXZRu/35arHmWoWriDCljaCNgLBu
	 RoOXhOU/l522A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F162CAC599
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812059357.14606.14024783377253119105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c93661765515b06bff6c72184501bea046ea2518a6389f10632a08ebc95d805
Date: Wed, 17 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758120593
