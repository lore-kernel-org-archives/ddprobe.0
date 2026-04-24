Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6FD3368B8
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777036654; cv=none; b=MeQHW9md0lfNvSSUq5h9bI2aGKI/vabuVA3W0yGzgMHY//ZEcCt8+dBHb4jpRcOLCZgKrL3ap8oBFvQR5SBhIokwaOGVlAWC5Xlgf7lRAsc9/eBG5wI8xr36BqZJ9O674hu7lPBzwFEj9vtxWO3eeQTQSGtREO/RTKtDqQj7/Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777036654; c=relaxed/simple;
	bh=5xZoQRHBFjGXdoTWNCFXhEM//JARHwLIe8NRvo7MMn8=;
	h=To:Subject:From:Message-Id:Date; b=YYpgpr9qiFwFocACi7vBM3b9e/ip9hwrsa4nHAIKVYuLlysARym/trfmyWmS7DDprntVLeI6KQ3cnSu53t2xp/kSG8uS0EQWYZbvP3CXyqy6+CE09aEt37NQqqZeS6NFf/VyHy5Q2Pso5zSgilqASQv8yKrqhKU6YIfr846EH0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOAwetYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOAwetYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA1FC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777036653;
	bh=5xZoQRHBFjGXdoTWNCFXhEM//JARHwLIe8NRvo7MMn8=;
	h=To:Subject:From:Date:From;
	b=BOAwetYd4C8g9TcNBXosgiFxRrzMuuFTJTUuZWhub0e0pmUTkD8VvWaSlEQVBCQsb
	 K+r9w/w91+rXHvb/dy+89jU6AQVF9KjvlI1O2bGzkEbM/Egk/gJE7TgRzRC449wHsz
	 NN2xZYVmPOCb2A/Hrf2Ci1T9cXMFe7n34S6vXa2CWoNPL1wmg5STIvU/S9Xae+GcyL
	 GLCZmkidEqUwbzzuGC/RtWzyZrS/pwAFlLpUyNgyR7u//CgD43+FFj1Bj7zobDVzJq
	 AaiwA/WNk84k6Sy+cF/ie3icyRov2LgPkLAdtIQyryUw0tozsHZ2KwgJ/kxf8O8Ff5
	 FijOwSMN2lJvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA61FED3C3
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703665369.10924.7195035382454470624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2062ef8fd83e456e948b6e04d0863bd98b10f597180c6e0091e534a9906bfd
Date: Fri, 24 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777036653
