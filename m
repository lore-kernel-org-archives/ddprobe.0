Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B22913AA20
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742720994; cv=none; b=Zvo4I8NuzBk0G3SwdfVZRbdptHwJCLqfuXJNv1y/hotLjUzf/ah+TBGjJtsQVtGpi4TrnZfLLm4N2YYPkqfe1vQs1UNA5AGrZZ96jDfSTF9qcC5flzQRMVRdETq4HEg5qG74x23fGfPIaAyYSLceTfvzelw/zcBuUG6Q6FznSvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742720994; c=relaxed/simple;
	bh=ChVNcojHIchPwKKxJyMAIyOjHW5u52waqmldIeYzQso=;
	h=To:Subject:From:Message-Id:Date; b=c9lMBOhgmo0JQivyhPyNG2nU/6KNPaoNAwny7WJ0W//22TxillK8gke3hNPU2rsA+//nFItN94xHXlkl4xK/gUT+2OfkhoOOjww3vb3w3njNGdsplOxUaS8BT12jL5bHZFgA9ZLiM6XtU8LEk7bdPsH8sNS0CHwj6F1xZ9XVatk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxfp2hs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxfp2hs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5511C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742720993;
	bh=ChVNcojHIchPwKKxJyMAIyOjHW5u52waqmldIeYzQso=;
	h=To:Subject:From:Date:From;
	b=uxfp2hs7/TOB0JdW1NEYzirmkc8CK+01Lq/wUhXfs/qR3KQeOr/9hwIpdZnvUP56c
	 lxOdr458lhJ89gUWE+Py/XaCla9TWhNTlCbtOIvD4qevhb/Or9HK+fXppUQIzcGgBC
	 sjYz1iA06v29w+W/XOQ3YhNsMQrl/9aYwaeazyMA3ltu97o2YF1QfLYJc3pSRj24sC
	 OggbGVJXoWLL/yhdpmukFHI1ne4TidrpW2xTEMcQTVst9dnEeeA1XkaiGNU+qqCy4a
	 HaoDp/W2i/1qJD9AzTsmRNZP6ZBFrkGdJjEr+t7pM5ZnjBEdGD1D8TxoynBsBsV856
	 EziqGp7dmt43Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4941C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272099368.30064.16386245048991611802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af21f100c3135b7afae3af718b2640fb785487dd15b67d06a4f1aca70ed4ea7
Date: Sun, 23 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742720993
