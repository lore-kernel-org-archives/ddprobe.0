Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C250D8F48
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757207993; cv=none; b=qZsh0lhYQGW2uF6d33bBK3oJWzrTHOWsyOspVRbKrKj2HYEJStNqqFW1DhTbaM17KJekOyXMnGw39PT0yuEQxCDyzE3wgeUwZzc8oVMiZzOxeZT4gQE+/PQmEjRr8PmHv09m0ycdp1XVkt+asMNtIhAqSJoHRYoi0YtoOX6F6Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757207993; c=relaxed/simple;
	bh=DH3o4ixaGtCBFrsH5rKCSMGG7Yk3NCyFiHWSYziFrbo=;
	h=To:Subject:From:Message-Id:Date; b=c+QV5NYaWpGRGz2/bgrXbOS0s2j5yTfuOWAVN0SuoKsBefWCJv4tGkCdfXS96dc+DO+vRtUhyY0iZmKiqXgCpHneLDAyqZuEWcwKEKHqI6DUFvA80b7gCO0AcZTPgk8CZY8NRS2tFpi0lHeCZQLdrGBNDSo38I0i44bvQGYtTqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWCP8Z3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWCP8Z3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2389C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757207993;
	bh=DH3o4ixaGtCBFrsH5rKCSMGG7Yk3NCyFiHWSYziFrbo=;
	h=To:Subject:From:Date:From;
	b=lWCP8Z3w4bUtIsX+IQFWDUTGke4C1bcWj4J3oAzHWZ4JScWlKTiurVY4LaHs42fhw
	 Ex7tEn0AFiSms3EPkj4pmI3zZjRHU/UVbkg5XYmRIgnr+ejxRrqCF2VT5u+kYa7yOi
	 XEUpTk0ZcoYiC40/t2YuPNcdPELdQTXOEU/PpPKxFKi6a/cxkkad9BNZAiPFaFkHgS
	 pq1V/O4WyH8sIkeZHtsbU2mRM8YFhbIj7p9BnDsWjr/X1R3WtlhRIeKHyTj/2cIrgo
	 RIFu+NLOoXp9o4vXS3ExXvYOvbxWgqpHURNwKG3KhHnOyivM7VcUhf/bID4KA1FqTX
	 REqZG+emhRqhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA1CA0FED
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720799357.27093.7121435434245361935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0c6c66a606025a55dd164e6028bfc9a44d3b3641f2d13470dd0dd65ad80ff9
Date: Sun, 07 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757207993
