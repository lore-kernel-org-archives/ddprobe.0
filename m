Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E876E2AE91
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705996097; cv=none; b=jLLpVlC/0TwLwpR6v1MT7VtntHr52a9EP2GxCoXk64YDxc5Tm/S1IMqdh9fI9ttWUXHE+oNlT+SyoEEiZaREUHhlzP2NBnuF7ONSWcnIwVbWx66MElRr1PhxOHVYZRoASmg07LfjRzU7Z+Daa/z4I95PGGMaGkoWro1p6bN0xlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705996097; c=relaxed/simple;
	bh=j6JmaLk+rfSz4dMPB414VX5hw6ehXZzQpRgSBLipiuU=;
	h=To:Subject:From:Message-Id:Date; b=bJNRCwlZ3+IvEq2Dupgvh/S8ymGj4svPXZ6+SXYvjeNmMl/ihku7O/UOxJL2DhdHkMFl+/ORRYNVrZSWdxmAYhEn9b1WSFwvc8T8MjWzjfMdmM2LOy25LRYs1dHVi/C/Iigdga1besZRatA2RgwRMxIVA+08K88tu+U3i9/ElbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhD0lq/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhD0lq/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 798FFC433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705996096;
	bh=j6JmaLk+rfSz4dMPB414VX5hw6ehXZzQpRgSBLipiuU=;
	h=To:Subject:From:Date:From;
	b=nhD0lq/v7JKOX07oqLtg3dUQo9XugZs9B1VvC+SNFXGGBrmbBecHjQwDgBivVV9sQ
	 FyMV/cGrsFweJH6PwKW6q4j0vOOpEqbCeEWEe6VfQNj8G1AWm2oa4fiaHw0ojVWfnv
	 kxD68XLrfieBpAovQox8SI4XSi3tbnv1AGrJxjskfMBn4urPcftTdq3hcN87+6PDA3
	 cvv2txd8AgMzT8ytBXQtPnXXcsaCo2UG48zYgVmJaeQs6rw54Z575rqgZUjd7aOXQa
	 +Hu1KnqlNPzfWFzYMw7FlbmgTf8M4UFHr2VHcR8++69++oYFMARE+BI9t08CldTO1k
	 A6PTQwuXPPkMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC8AC47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170599609637.10860.10719305440227216814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9988239dcbcb9f18918fe02b87f751b07e8343b433f70d7e1b1660030240d822
Date: Tue, 23 Jan 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705996096
