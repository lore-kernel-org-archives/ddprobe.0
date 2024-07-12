Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4BD171094
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720793303; cv=none; b=sVa4hML1iE5M4vT8YdhPGt4Oqe1fDoCDyw5pzOIeMa+w1f76ps5RdzNzru422V/jAQ2D1iXFMqYeKLH4opzQ3NTencF/L5OIqyKvqcFVODeU6+TRlCguut6TZynXJHjmPJG4/afEIbreH7mrYT8e8jO/yGN3By+HaANSn7xIsqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720793303; c=relaxed/simple;
	bh=tZQIyFWa3W3zAAovHZkz3857GnuTswtLwAXa8tER9ws=;
	h=To:Subject:From:Message-Id:Date; b=aZRKWDDGtSCKWk42YLVFjw4LMvbjcFV9P1V1yvK9asY0XokEevaidxQNGj8wtCMJvSjVMFxwMRlienyFlX+OEfSzecKuARbLfr4MsFkY6OGTWYtFh/vGkPsDLW4gbXd8WeS/dVws3oplSKb+zSWAnJh6DzxRw/ZKCoLXVaE4tUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjjDB3Ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjjDB3Ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF159C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720793303;
	bh=tZQIyFWa3W3zAAovHZkz3857GnuTswtLwAXa8tER9ws=;
	h=To:Subject:From:Date:From;
	b=VjjDB3Ua7gKTJGFxGklVhszuUG/8Az+h0NnzSZIYcPSdHqkLnvLpwvHYuW79jaFVO
	 QH2UDdsqTdMbGo5RDT2gTQbkjH+c6SZZxAWu4LYGl3veq2dtfcAo5WfdMT3S3u+FPV
	 8qDFT8wZIFrB8e5TbknjLSgXpXD9xn1BHgnfhHqdwE4/Tq2pJqm/AvntGufNsdcs/V
	 mCcHJQVLcDQIxK/DXmMx98LEeGmCwmYzQWgJHuwe5pKC955R01v37czgX+KBR4zqXi
	 vc9AMgfPFQbFAYf6Jk44gI2tb/vmkywdUSzpJ28C5fCg2+Jav/BXez2AwseIDeR93e
	 Q7F4mjoIq6E4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6741C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079330285.8495.14298648450208115168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8bd7a9968dbb391e104343200d4ed5f6b31cea5d3aa1bb7b06d55e1f7b286b7
Date: Fri, 12 Jul 2024 14:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720793302
