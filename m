Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1995C23F424
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752500994; cv=none; b=hVma7eAe+0IOKqTV93YaGHyHbTxKXKSQfsWQwfw3KNDkJvgErzqf8Azr0/yQ0IWfG4U4IEnLtuYrXZiEmoVFNu6jbDlI/XNvP237yHNldmpVMMgU/iqenOf1qPSyZNYEa6brdXDBPOidBzX2FvTMZMTxzeCf3/kdfsWIv5J5RBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752500994; c=relaxed/simple;
	bh=H3M07TeBYj+hFZHm60jUWPaUnbfsBRC5p5/NO70u4jo=;
	h=To:Subject:From:Message-Id:Date; b=kbkBcFZt2hE8BCekTjhXLejbJxnNKgs6hWavgqhZeGhdwYa36a16j77hmoux1FbvztB/7PXpr5Pd/9luA4ZDj/3E4AGx+dPzKFOsYy+C4lvDm5orxLI1MyxTUoT9mryOxJ8s3WXPZB4bBPoNW/tGEt58H1uh3j5pgPGLKqK/qC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLWCdsQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLWCdsQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752500993;
	bh=H3M07TeBYj+hFZHm60jUWPaUnbfsBRC5p5/NO70u4jo=;
	h=To:Subject:From:Date:From;
	b=TLWCdsQvkP1p2aqXNFxX0DR7MiCwIGQCsv9/+yhpa1jidggGvO7VCHnjjtR+mD20N
	 Z3hTx4P+YRxD+m/420ZJLz1IMCyMsdeRv3hmg18IbKoyC/7UuTNHLegnkFaFbXsGfA
	 P+qzTFgSKY9QkOcQhgfTCQ/v9N8qhDHEm+wwBI54/fa722eJyJts2qJEK+GarXfVLZ
	 TNREY1dXebY8o3i1Bd4Dyuaz2cTdeGkgi3LUWWP72ABLMsgVx20LKKaN+iJkRoLv64
	 YQCGM44PDPsQ+JpAC8UPzAcHedRRxnD+8SUAIn0KGfoPL0tjBiwGtwHQO+MBLp68Gy
	 zmQp9MyXhHNvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F3C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250099357.15643.7558233711566505260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee424460ff42c8ae5039d935860d5122bf782cc9b91ac3c98e0a438255b688a
Date: Mon, 14 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752500993
