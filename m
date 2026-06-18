Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4842C3502A9
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781825794; cv=none; b=Zv6ahedXkfAqlVLRnnxqI9BASDtByYyjuEqsMYhvjfYUVfVi5xnsqoacxGd5eIGND65xd6JJZAdZnkXnc5FCmROyd0ghv005I12LFCKeK6rtAuFu9KMGzqg8nIHzF8G49Ig6iwD5LO10CYc/KYHZI0yRwnLyDYmgTx/2D/2U+sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781825794; c=relaxed/simple;
	bh=62sqUAFkY54P6eWhyWBTBBWC23f8Muthe50nVt7AoWw=;
	h=To:Subject:From:Message-Id:Date; b=bHDe25Xv6hCWCFKSz6wwq03znWiomy5nTGUx+sBonE48sCSVWaZslY1nYfvIz+fVFARyCg2aTmn/s8OpEHuJbjLuIYtbXkPkgXXSnIFQeT7NceiciSCJYZ64BXChcawtZGR8e8a5Lrl42WAurdiBjjUMizb7cATBKgXmxiW401k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhvSHfVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhvSHfVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7ACC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781825793;
	bh=62sqUAFkY54P6eWhyWBTBBWC23f8Muthe50nVt7AoWw=;
	h=To:Subject:From:Date:From;
	b=AhvSHfVrDqyAl5fQpQfF6yOAxxzAg690DX2uhdy0do3Py345iYTSM1008D4dSBlIs
	 YRFhUqE7Hlz+mavPG9lClY/iP7oPvqK05NkF95C6Scg2dB1LS5YdWOaJF2G+OBJ6xZ
	 FexrJb5f1PQg0X3nJCc99+vX663tDbgESDL7myTo6ttjulPplJ8FOGVqBhxJKRULbj
	 L5SnOVqonuLCQu+FiHxXL8HeKG7sfAr6UJFaeUeedfSWuFWeqYVe51LfctFdRQDMgv
	 r72L1j85w4hK2GzckqgJ1LCNuTAGn2rOIJbq9/AwtN1kc/5Mh6AQ5/1cMr85crZaFT
	 qORClzE2Smchw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B96CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182579370.473.5191694260898546587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682701a756dbfeb2c94319afef79a489b97d8b2467110cfc87313c33d45ca5d6
Date: Thu, 18 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781825793
