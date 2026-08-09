Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F80F4B0493
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786264834; cv=none; b=dkVI3pKE/T3bxUZG+u81u52gYA8UJP89AL1pz4yrMATbGheGp2r86owcVmgpuF9GHfdcWgfbhKVld940RpcIGxeKPeCVdTPlU5iYS7eiaS7U8HCsV4BJPmRBE2L4+K4RFdr6wOVQY3vasLgJDpTSkJKsJrjQbx6+pJgikW5izIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786264834; c=relaxed/simple;
	bh=pIPYLqlScwGfU2hcHP+P0ibKn00Vre+XYt1pxQEzwN4=;
	h=To:Subject:From:Message-Id:Date; b=BB1L2UoDUe1U3Jf5ceoxv2H1Oymzivn7xFO86h8acp6J6tuO9UuXtz0YRAzfqlUHuA9TbgjjqtrDmix14/gNwUiVpKXazONHbqdA+4QOZp8y/PRufoSLpY2zKtL1b1Wa1OX/puDa3U1SyI3rw9ZgzKa05bct1TPFlxiyJvSXpHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WED+KQ74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WED+KQ74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEB8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786264833;
	bh=pIPYLqlScwGfU2hcHP+P0ibKn00Vre+XYt1pxQEzwN4=;
	h=To:Subject:From:Date:From;
	b=WED+KQ74Sh0ex7ArB2ofAHZSX/qOdzgR7e/MSWJ2qw8c4Thrh1J5336i+gueY5lBW
	 r3DMCkIMes4r1I2ePjMq48qlN4FzbPpta1g5o9z/hKGPCWc6e2R2RatL+Mm4MTNvgX
	 NylljYJqUtV/OZy5JilisVGfKlSSvK9tnHPTVZ47Zp+p7mHwd70MvpZ7wc4IeU/KTf
	 dlOVZIHDbegrix/oXiSmxzcUklzB7vdxfFSvwEPXgjigIJAhHAHLOO4ai8ZRRKRHaO
	 uFsEI80yyEM9OcG1eULv1Z/UJwq/drJNefWATL22UDfdXE1/zeSj2KgmkSpd11ty+W
	 01w/JtH9wzTbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B330AC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626483369.2141.13456092859686720943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1155605715654390b1b0f50a58ae220e4e0db5f9606d5dbcc014d10956702a
Date: Sun, 09 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786264833
