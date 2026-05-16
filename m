Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4D5204C3B
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778964634; cv=none; b=rjE57rH6c3FbmeJ9DUZalfu5ZKIWWKPozEq+em1ka7RMd3I+0961fkQ/Yts9L2w4w0qJTp5nhIIkbQhqDRYGjHVnkIlbZBWe3NM9pVJge4ITiqc0hvpB8Vcm7JTIxbNRz1K4WlpYlLu4d1dZRbm/dNKnLvmUxHLXcF/K1CCOQOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778964634; c=relaxed/simple;
	bh=zU5P7j2sZXzCS10s6ckxnssklDuuRzdjLqrYGnF1h9s=;
	h=To:Subject:From:Message-Id:Date; b=SDUXe+0pkk2kqrHdL+NASMKyskOS7E5AioIQ+B9K9lpSO6b5GwHjY+3eZE0TG0H3crSheoluf5fJHFJ89pNCKpniq+A7lt7hdId80OwMSKsUtAri2iEY4nm8bOOGYdpQRRnWRquZ60a3M+PGaArB+LoYjZbS+/yMvs8hiG8QF90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbazu3Ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbazu3Ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8389C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778964633;
	bh=zU5P7j2sZXzCS10s6ckxnssklDuuRzdjLqrYGnF1h9s=;
	h=To:Subject:From:Date:From;
	b=mbazu3Ez7RJTaikMSlvyVSuBX+VOwsY1Ic1fd6xtBtXZcfPXMt4c/GQKMUTP6cjid
	 RS+7Nhjcfn9ZvEGQYn0g6GZ1kn86yJcVlc943R60xLJzKD/itPDUc3H2WxBldpcHwN
	 qjiJ+KDIZNgHFWpAqV2BEZrFmFxyLWiRgYFxT19swPK4bgglDSfLaPMhzT9biUomlR
	 34LjbOVB7Hz3sbeoHyurXoFuUKwk8wgVCluFxw0sLVx86naRzVyrhR8ffSXblyvK+c
	 qliQK4pSa9G0EoIAwJ1UPv3Rb8oOnzgN6Vs4MU1i44G11Rf6I8+jw+WaDEIc+LCkHM
	 O1/TUGdW91B3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41C5CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896463370.27030.12327342718765926064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f9107d96783626c3f4f73d55a4172315f0a3c6cd313dd64fc6d3a47dbd6579
Date: Sat, 16 May 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778964633
