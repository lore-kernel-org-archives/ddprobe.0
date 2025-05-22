Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317EC33F7
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747876194; cv=none; b=XrpCiqIf+LcA42xEzgahKvM0vHHsZ+01lUXpmY4IaloJ6h6ESK6jADt5zC3zPxtdgzW5SSD1j3YYIBLbnlqomHSSKAxlqButx2yxotFE31vZlOpGiMNk256m0xvyDeRIY6M+yR3Dt/Z0uVEsIsNe5KhrLJ3a7SQ6P3XZJiM9USQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747876194; c=relaxed/simple;
	bh=DRYye+bgH5492FbmTsCvWpwa+bPL/ObGAmgwuCYRbUY=;
	h=To:Subject:From:Message-Id:Date; b=qxVzjUN/Cm1MnG+0T6qTAb4sDp1q3ahFIN6JYVEfsWOxbSMLoief7CEEGF+tLBfNCNnjRdy5VansUZhD+W0/lsird4S6dyvNXcyhiC76fyNI5Y1ass3HTRZ8oFGenlbpx6c27lCeTnO3HzW0UR/OreqcEYpHHNC83LsXsEHTgU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUoo6ojo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUoo6ojo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30F5C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747876193;
	bh=DRYye+bgH5492FbmTsCvWpwa+bPL/ObGAmgwuCYRbUY=;
	h=To:Subject:From:Date:From;
	b=uUoo6ojoe9PbgDVl4+GEZn7vk2x8ZnObyFMCJB+Vk6bCVke/70shQjCDOVw7LkVFK
	 ++X8aOJmaopq8xXQ/l5vSoTKBJpApwIqhwT3s3pHylZVD+g8zz9JUEbhq+6MPewTxG
	 8jfEvSRTtB5nTT4dxjxONgn1cEpxIgUsiPuImr4cDaod9VaUvsBLzZXncDXouOcTAO
	 EGRWcIjV5SMhKSy70zuqtTEL6IuiKKV2IfWQU5LaAbJYyqRTMNvcFLUAyrAwTwsFlZ
	 mrOyUmzDh5Xl/YOOj4DCbmFKtDZValP7riBthdu87gLmtpQpRZqoBR84qaauD7DRyr
	 ogkHu8NjuU0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9060AC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787619358.19755.14333899363689241641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b905a46619c0abd06a71c7cb2175665336ead24108637762ce1728dad83d65ce
Date: Thu, 22 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747876193
