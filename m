Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365531CEE90
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745477396; cv=none; b=uNeH2kg8mwVTH2vd/ZDeomHH73cRRXbZbOR7GbevCjpxp6dBns6Iv4rbyCFvN8YrAlk0E9euumnjNLcBAptRgrtjz9iFzhIBnNkh8d+Lv7WQykmL8iZSkqmdPbz8q+lw69IA5Xy/FXDZwzASsP7/LadkvypjlP+O+e0sx1qkEt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745477396; c=relaxed/simple;
	bh=hQLtTxvcQ+CYn4rvbDndjyh1xbzhXs4HzQTnGxrv8OQ=;
	h=To:Subject:From:Message-Id:Date; b=LlO2wnyLjQWjq9qHK8l+FEgSxEQbRC5hVFqacH/TuifiQKpdsdo77UvW+YcRIp7+oN0FOh/HQbnvjVKcU6sXgiqNTTOzfRIer8QUL0KyWSlmZTaKjR6dbVT6C+05q+rA/wKDDrFVG1WyPRV+KjB3GSC+0jxXOEn0wXvfceqvzhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3cjypZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3cjypZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE58C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745477393;
	bh=hQLtTxvcQ+CYn4rvbDndjyh1xbzhXs4HzQTnGxrv8OQ=;
	h=To:Subject:From:Date:From;
	b=F3cjypZ12oxREe7x6pqp/n3Eq8TfQZCGdG3ElfJWwEU/t7lf27r14kIk/kKg+ChRy
	 0GWjPbtpO3OPVi4lkucvKPAL7EazFIu5ZBmC8E2S29Cr+v8z9H3kK+lsybFG6pC8lo
	 Cx546RZ1kOntjocTHIoMHt9PHye6qk89A2eqa3w5lzwGp2cD2wIbyD3/eO43zWZwfh
	 ifGif7kfbmHgr1sk6mfdHNuy6V3NrpPnhfugqJ+uKJEnd1GAnCrOn+GwN7IoxIaP6/
	 WWjWUKE4PSZ4gz7LqEA4h7IstRSCFgG4CsUSJhdlVdXr809raySBOup7aaUdINuXFO
	 3g4EQmSS4NZVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1DAC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547739364.30230.12432433477820617653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790886f2ea8688b6dd99e40a0a557c70430249c14fc2bb24a26ddbe86b115dbf
Date: Thu, 24 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745477393
