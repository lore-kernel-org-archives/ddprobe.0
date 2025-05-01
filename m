Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD85153365
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746113394; cv=none; b=t3RBPEIKYMBvS7CyySZr51mc7kT0OLb1tT/ye4RVmkvQPIDkNYyOui/LqnPOvheoSM8RA5eTBKQmMQpAGKSnJOc6l/ZHVWoDot9qLauIgtLVPOoQIMsp1QR9spKgmaSEh4xgXv6Xyxn5Mmozjeh19Dmhc1Jc7HcPfjZ2bUgUtWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746113394; c=relaxed/simple;
	bh=iHsiyQMCWzguhJasg7bq3RC7B4rRLF7cC59JfCCx9U4=;
	h=To:Subject:From:Message-Id:Date; b=q8KqicPFy4lyPjWuKs7ZFjzo82p57G/nsZ4hRU0IXOulGvNOt3vmy5QzNzA/klTC3toNuGJ+vjqjmcXqS8iOo3a2Y3fiG6UljjqZf4piqEB5bNLIuAHa3k/VZpbXDGCWEFloR99u/uukE+K4ke3R847Qt5Sg7h3uBulaQI3u5OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNRCsH5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNRCsH5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0090C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746113393;
	bh=iHsiyQMCWzguhJasg7bq3RC7B4rRLF7cC59JfCCx9U4=;
	h=To:Subject:From:Date:From;
	b=rNRCsH5zW9dbLhd5UTwHmIFqSqGdY6adQwY4TE9PIzCWWNBCRP6WwxYdYBDRn2E90
	 ZgfyQlBXogNCOQ89dOLk/NQ/ujSLIE9lLyhrzi+oIyiS0f7XI4t32wPIUAEC483w1Z
	 zthCE9iNFz+yFaZK9UJMc1yMHYpkz9TsoGse5N7+QxDPYQTPxmXOWhzQ08FnuWhPUL
	 lEL7qxzlH5JK60L3D6iK0NHY/K0HdBZ4p3uI9EANsqHtkQ53I5CC4oysQeGRBXdph3
	 TiQ/nroPVMcPdfjcZZbP/RbvwzKECdku+DS2af0017d02eW0zjOtJbxQgWJ0LSBinP
	 j9n3C8Y2caW8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91480C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611339357.8319.6855854948638624388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2999335d9699810b845cdfe341bfcaf520cd1edcb7973bc67dc34e1ba2c7aa1
Date: Thu, 01 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746113393
