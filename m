Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A371477E53
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790327436; cv=none; b=mZT92qSgnyNiup5YhFesnmrdeSLSr48K5E8rWkpUkGYuQ8+iajpm545e4AaY+FNSxkRqZMGIHLqQAzd9hzakm6k2D09HvgmVe4Lxe+hyWfeI7Vfv7acWPnFSNvwOEo83TOFk1T6YqF6a3uWvHCcC5xWEqtHDHBuAZQMu5JMKIoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790327436; c=relaxed/simple;
	bh=xuhh7G5zEAWjZA2HqbVMIWZROcCCcSzTIJkrptCQeHQ=;
	h=To:Subject:From:Message-Id:Date; b=KPoFYy3kQoBP9TTPcUIZNUu/Gqi69lnzaUj6oQFMlKx6X+eepXIyqwhw4/wCnNoaXQwdyFiPis1PGQ/K7D7i79C5A2CpW2KQG3HjET9vdc6k3xlfAizZKrx/dZWcMc/IhT5Bq3nW88gAaT5fPF1kqVljB8jSrmw6OM04jmZoLtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/PF61yy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/PF61yy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E7CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790327433;
	bh=xuhh7G5zEAWjZA2HqbVMIWZROcCCcSzTIJkrptCQeHQ=;
	h=To:Subject:From:Date:From;
	b=J/PF61yyH/MaDhlDhnSk7g5iwThyzneSsjS5V4mrWOulumm0a3cCDMniLesHmncD0
	 mVdOMV4qanUNnUiGEBAD432RqkeG13A7/N3tk4zo0fbFUXkREICXA+AZoAQkF4h1db
	 fOlAohr42fhJkheOJ21D0sUpFNtQrum0nVrFul2tU3tGSLIDVKjifXdPiTAXa5Kn+K
	 Na6OwEkGIxYX28Z4ln96pFfYgqWsUZlBSRfZscOMGosvhhc44FZij0ldBFCqScX78Y
	 z/yWrYVv8b/iXtVU/nLj9DmMf1TM8IPE0o9MlKVtYMNLQOGikw6th5bErIqvCCMGx8
	 YVdQKKVuk779A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE7CC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032743376.6055.1026595895604126378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9532ea42761b409127b236c07b97bf514365fa69df242c281f64a0755c6ae50
Date: Fri, 25 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790327433
