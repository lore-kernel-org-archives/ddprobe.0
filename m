Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A45D3DDAF2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783343314; cv=none; b=h+t7/f9ZKnhAMq73xKzxGQhjnFHqItqZhZSZ9X2OuAy5Jhx8y1OpAX6nrEwUrwtmWyGZqWRvYA4LqCf7j0dIxwiGNeHem4L84/9tiVtAqAGx7jyZE4y4NjocdvLWyeSy72t11CTFgbZPG6fGefAxBxildpQT3xrczyj4ZJcvZ5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783343314; c=relaxed/simple;
	bh=fLTQSy1AYPCraX5c4AOdbDLP86frW4G7+OTekV9r06M=;
	h=To:Subject:From:Message-Id:Date; b=OHniDElfND4F9S9UWo61xWamyLl+hrFUjOLBYxjOpEX1YchRh7WfNIqBITZtbSP+4bunTfQ9CXwv1y+0GR6e1bLekuIaad4xtkDsbx01lKQRqQ/0Lx5t+/FfNT5BCBgfLHSwuwQMLj20oBUYsz9EnzzCsYgOquNDuh9lbEW8njk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFaf98lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFaf98lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B1BC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783343313;
	bh=fLTQSy1AYPCraX5c4AOdbDLP86frW4G7+OTekV9r06M=;
	h=To:Subject:From:Date:From;
	b=ZFaf98ltY/LJyuN6xBUH4/Zl0pHIjbKrtwjE1NljGw9GuplC7P6WiY/GuqOcO7Ito
	 fWLsrxFfeOg39OAnAVcCN+s+OYPuJ7wjGgQRjb1rLyAIeuFEXgaBGS2q9guEKRCsGw
	 1NMjB809XIlL+CfQSMoYSziwdP6IhADK+/DhReHD4LQvFwLQeC+zqIYS6dMPI+ZhKU
	 qPi6C105xFrVMLDzp2iAtkeOyfAgBulyVcGe4o//P5GTH4IS7XZr47aGd1VCsE+yfq
	 tqaX2D8qxbt8V42AWM2iUuB1sq9q8kefftn3v4lSOa2rfl7knjlfXELslYRhQPN80m
	 ddBxRkd3r992g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A918EC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334331368.10561.17799346001906615899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14406b95a6b0934097cd0070a30ba929e70a9f8c886964088b93b26acc3ae2d1
Date: Mon, 06 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783343313
