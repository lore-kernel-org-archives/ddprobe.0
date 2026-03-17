Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6668336606E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773720294; cv=none; b=LY5PnA0lBGdV6qyNvRUr6Ke7LqxYNmOoXPT0Im4AgT72S9+R98b2BY9yiOmCRd39WPnvEGcAP3qLcl4n28Hhv7RMMBILBbXdFFXTMKbVtN9IlRv/29f0GToSU9qHEs7ofQlNAE0RlCahG5adwumk/LFJW/nYHk6cWx5M9uXZ3js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773720294; c=relaxed/simple;
	bh=6ZMI/BJFcax+UcU2BgT+mvHlx+2tV6Vd2u51R6njUrg=;
	h=To:Subject:From:Message-Id:Date; b=FiYNseFlIuUsUoP6xVOM+Q1Pg3eq11x6r2Df6vIiXOfwzZ8HdmLVdgK3wb+FqcueqAAb/z/2S79nwhotqyipcIx+r5m4b3C6FCXi7pMY9A7nQ+hilbLiNkHAmR2yjZg+qGR4nQI3vNZ2eb/LBjUJeHnD/IuymCNPDhgQVf4QQeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMmakWCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMmakWCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB1EC2BC86
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773720293;
	bh=6ZMI/BJFcax+UcU2BgT+mvHlx+2tV6Vd2u51R6njUrg=;
	h=To:Subject:From:Date:From;
	b=sMmakWCf1OlfZ6rjm7Wjlwh5kQOGMbwiJoivQr9md3ZQqhnqS3FJ8KVPqKMcySRCS
	 e7faCiJ4AEGVTRQyZy6PVFOwWR1cet1EVLrp/1/fYgMP5pEMT2xnTgOxY/H/YE6ruG
	 Gj8p+axzN6h2m1P+XKYbx4NaIswtyoT5hwSfc/QW5RnUGKoHwyFJnG56+F5MdciDud
	 e5MbVg1Ou/GB+N4EAVuGRb9xTPVHZnZyj4i7od/ZAPVd+7btLZ4YjucNTNF0cYt/Uu
	 eJRKgRiBnn93ZmT5kXQohBsVL+2c24Jx96RsMEDPFvzFccmu8knmFGTVRIJn5rg4rT
	 WMen+lKWDcENg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9CFB5EA5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372029357.16165.8105591063164765708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22ee6220d75819382efc575acc16dced7b8dfa092e0ba29b9df53de93ef4ea1
Date: Tue, 17 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773720293
