Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D30229A326
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763743914; cv=none; b=fl+/p8Kel3RK4zM1w3fyJFyy676pCwURjojd7ZJQQmBc1rW+07KutEoxJmARWTzCLWa3Kdse3qg/75Z29yKN8bgX0EmxptVEHzh91WjAU+BLEGQXzqJ5uK737GvOQ0+giAvYeqvGeHSYYv9QLdnuDYJ0L82fKRsuARf0yGOYR44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763743914; c=relaxed/simple;
	bh=0tOh/5RE2tdHscBxeeFzT6uHCFHmMutwaJDSI5bnsBg=;
	h=To:Subject:From:Message-Id:Date; b=Gn53ZZXIJcc431AzuZTcLpFcFhW8t6dXI4jSZtDvPx8WPios2x4JGXmUdMj82WnK7vlmc9bp9sxyR+EfhPXwDExTyf52zDeQvcTr5VIM0ifZ76t1wwvY2QXQgRdxozKk/wTPdvCmtmXjHa6wUxMdvGUhE5H6pOCbW1SqjtAWIy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ver0Lvqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ver0Lvqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67AEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763743913;
	bh=0tOh/5RE2tdHscBxeeFzT6uHCFHmMutwaJDSI5bnsBg=;
	h=To:Subject:From:Date:From;
	b=Ver0LvqfB2uaIU9zf35OAokmHgjX7A2tR3XVwn4e+CuCrNk1CCjGcEDSF0nARiPbP
	 ShH2HrnJ+CEEl6SnfPQl6dngrXVSZhjXDfduwaogyw6br5nNfA9GGD5Tb1jc7hJQP/
	 zaYyFl4rFnIRCqXwM8uO2LwrVv4ELU9Bx7dKBmiKqQ1vVRF7K3l3Z6iRG7F4HocFCO
	 4anSGRYplVG4AATuKwxK1kKHT94y9aM3m6DyRiO4TV5pDNcUGSn+br9B/WZnettyCR
	 VFCgupFIkqPrDTeAK/SBrYkJBIYdfQucJO6WD1hxvtmUGIhXCEz+WQiNDaIxWbU635
	 1G+0yY0UU6xaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9245FCFC294
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374391358.27651.1684983710265629573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3f7b21b8d65e69b52c451490ba9eb164006267ddbf16b0201c12adbbf7df8e
Date: Fri, 21 Nov 2025 16:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763743913
