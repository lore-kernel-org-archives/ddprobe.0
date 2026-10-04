Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4A948640F
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791140434; cv=none; b=Us84B4u/K/ZrMdOmwiACytR//4704MeiTsmOVYdRjL/4ZFEUh7/sY8I3EwSfzWaGk3OY0dFOjm8AK7apXClcappHPKw6Lo2Z8CNtYROfnKlyZrndxOrZ8jZPxOf1G88y0gQ0QmGP33N86OkSsdTYSlDIcGHCFoQ2x/1D3b92Z94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791140434; c=relaxed/simple;
	bh=EqYIiDRigMFaZTjfi4jR+vDNbymTt3dDiOEDefUIYB0=;
	h=To:Subject:From:Message-Id:Date; b=WZivFZRmkOK5A6+lHBsbuv3xCznK8G14ky2auEBJsSSWw/lBRNWOctZbg8Xq/FVdbkgfPkA9Osu4Y1G/QEAwihuCchy7cZnJxcunc5I20bBohBgM8K7fXJiUUDJ4ho7sDpF38VHeeQZH1nf3syYKHKeTMyj/WFFyGDPr/eYrl/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNzmmU8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNzmmU8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7A9C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791140433;
	bh=EqYIiDRigMFaZTjfi4jR+vDNbymTt3dDiOEDefUIYB0=;
	h=To:Subject:From:Date:From;
	b=JNzmmU8V4BLJk7luOZTtJSy8eswCflUcAhQGSdn66f8jYjDOqMFcUpL/AKpo02T1d
	 Z/y90TZ3VsSNNBJuQLoa5a4XunXD2r78G89aKVX1G7t6kSWYYAj8KpF78jWtp4kcRT
	 8ZcqkW+WNHlvO4eYP371c/Nfy83SdHzKZtI83X/CnD2bZSBdiWx7QsRYA/u5Le2S8f
	 +T3Zfv/rEqEdrnTd+NlnBMd41SGLapPHgQ9NzSQCU8yeATRstKhAd4UEK9eI/ZLeaT
	 /wHP4oqvhNGBNVp1trLNndEzh6sRR1nUy52ASsyfjbYz0ts6IqinvLoGipe9UtdQBS
	 7vST/6k4nJ7nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB21CA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114043368.3841.17802927204821416614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b76663c73c7931c8ef60ef69627c8e90402f8743d4a22ac576027c440c76883
Date: Sun, 04 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791140433
