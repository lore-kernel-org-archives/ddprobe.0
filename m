Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC73F1A3A9C
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725304553; cv=none; b=jwMB6Q1SGpnM2UqPTV/2VsT5f3bpIfALIzzUlzwgwGJJvACVXEbTvX9q1RybSk/c9fX0jvHMUk6R8IVzkiToVoyv7uxE4X5zA4xWVVlllhgdF+HT9qKJ2uip7vz5uIDvUYZnXqgGyojK+5JlF08u9uylGycu3ilQhK6W+HgDVec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725304553; c=relaxed/simple;
	bh=fVx5uwHm9DwytJHxY1HC3eWW0IQvrz1ej55aSu7uHmE=;
	h=To:Subject:From:Message-Id:Date; b=WvEx04O+NM2jLKPsZSWN/xLfZ7QdPXivDFxF4dTFOPtHrG2bu09/0jcEKs1cwBTZkNXMog9M9QcHpa3JNhFUJP/Z7QfjWke+qevaGZXPwv++t1kmBdyzW83HYtMKgESAKu7PXVv2l+jouQ/ZtDXoNlwlO8v+NNzKVrA6CbdqGMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZi2OVBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZi2OVBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A507DC4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725304553;
	bh=fVx5uwHm9DwytJHxY1HC3eWW0IQvrz1ej55aSu7uHmE=;
	h=To:Subject:From:Date:From;
	b=eZi2OVBAz7C/gpOhzMTetih/83lp0eOBRQwNS6uLLwtDjpI/1wjtzcRG2yw4Q9JUz
	 44kZt6eBdHY0kuZi1fMVrV5Uvbe3GpIjtUnUP1+9WfPscFnD1H6xUm+NOi2IgnevVP
	 ozkD6ioUcOTfBKiIdwDARHx4x2OlxVBSotrbpoRhYLV7+pkgPQHXpxFcJmkQMgef5R
	 ADTQ8VM9xEN4IFOwxdCRMkN7BQTY8YkuanIFPM6pqUJZKqklptdgO2XXhUKOHeY5GA
	 cT6UZnQUIv62+mb/JKb2Ic/zCRU8nP2kRvInPYHp8ISdAD6FDwgk7XgQiWpf357qft
	 xNvYKVN9xbpLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90817CA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172530455358.12272.4922913600808960747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1242744c142c957d6f5d7264c118a79e691bd7c5349b63d31806639e5fd08921
Date: Mon, 02 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725304553
