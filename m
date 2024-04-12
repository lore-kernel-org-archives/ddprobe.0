Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509E914D44F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712945963; cv=none; b=sjbfUuvffkPKkduV9S3yYpbiYok2IIkKbGiSnI/cwzTC0OT0024VfGF4RBJvqTO/bAZdjLoxtk1jwsTVS2fGYF4LQ8bX83br0NVMKgRrJSZQOkY8ZIZc0HbzgcH5uTJ58M0NJgWiHDG/Gpr6CJ+S1gK26KPtMlfYq58gr9UA3X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712945963; c=relaxed/simple;
	bh=io5urqUWMEXX1iNkhuNCvPRyCcQY/5DPsurGT59rWu8=;
	h=To:Subject:From:Message-Id:Date; b=P4AYunMkrU/LTKqd2anCgm5Oy0u280rwssCIgqLg+mOrPQJiibVrdGRPKJVqiWH+8e+KGs7ai4zuOaaGxwhlHCtDUXcOWjVyWaOd2tUrWNV/sEGRCOPMZsRj1awyKEowhQFkipIdVAUgH9acAsyObk7uf6iosOXwSN5WZVBQFTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkMaAQ7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkMaAQ7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00F1C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712945962;
	bh=io5urqUWMEXX1iNkhuNCvPRyCcQY/5DPsurGT59rWu8=;
	h=To:Subject:From:Date:From;
	b=NkMaAQ7WhXQkjtuawm+9dUVH1MV80bwSWhXJdorGB1BiBIyLkXIjzNYORvFK+N/nY
	 QXNC8s08K4OXV5FVDt5dJczRUlJFJiTEKxpWR/meZKVDTH2mRo6UlUYhgZf6IbkjBK
	 NcYsAHn6XmjUSRoHYUpKtggdDd4PabVPniJSaUUdGvUrmImblTtNAS28D79rpS8JCr
	 vyBpmCaTug52MT/estmfSjv3+ezQFFng56wXdniervdBaa5/y2P6eY5o3lSwiorfM/
	 CO+5tLzoFn5CIaYEM9fWpmt0L4hit1aSU0wyEgdCRNolOHVmP05ZqGD3ktiF+/6+az
	 cSguq2NuWgSsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2E2C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171294596276.7803.2071620337057303388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076802c95a168556465fa31be5d9905d757958eb88df450c3012417fd16d002b
Date: Fri, 12 Apr 2024 18:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712945962
