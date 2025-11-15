Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CE821D00A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763227854; cv=none; b=pfHqXUlzRD3nyNQ5yowDCKt2CA9SP5kIIwSltNwuiqoofhSKyJYGMUxMM4o+sHu77fQ1RamI41DtEaRefyLXOyvPG5OdOKN5eSktel41ASqmQ935j6bnhUDbQPK3ohujs97SUzDP7RysGbtNmlzu/Dx/xWkCkpJY1bQ5/Kjiet4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763227854; c=relaxed/simple;
	bh=JZ5ojS8ZbwBPlmOUPcv3vgXAU+jGoaAcgYhhYpSdwnw=;
	h=To:Subject:From:Message-Id:Date; b=faa+YmroijqkvN1VVDd9BpA4FNwH9yKw8CDzKmO/W0pi1qoIhCVFXuTkAm5Nr6WIVzRFIV1qpMfc4LalMiqQaFWE/Em+3jOe4kspKdaX6wiAoIKv4SCHwaXL41ELIPvnuSP9mw5HOSXvrBIPrq6sTCXI4cexdTrDh6aJh2g8pwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pv+1/I2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pv+1/I2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5AEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763227853;
	bh=JZ5ojS8ZbwBPlmOUPcv3vgXAU+jGoaAcgYhhYpSdwnw=;
	h=To:Subject:From:Date:From;
	b=Pv+1/I2hmUH+uu1BagnZyOha8r5f+kJJjCz9D2GU/eK4LFCfroUQYnuMGZgyzJlVT
	 FSz2O23xhzYCh7+osVkHA4/hL6CA/YbcLYQ/hNJRty/mnHIpjERkLhND6w/uhTeeNL
	 vRzSlhEtYLfTkS4z6arrNTtZD45zZFBIJn4zjpSyyMbgTHb+WOBpUmKacVrh1appHt
	 9956QExbWZgOcYMSqTBQPsMF3wUDMOd0aQJJ7tCWQT2eV6AuAEmY2bEoD+z3L/35D3
	 bZ1aK1/hl1skkGmljr4ScPsQilLCBDKCXUNbO9EDdZ65Aq8HMFn0JVRLAA2EYZT/9Q
	 VAUy12K4GDbvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA02CEB2EE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322785358.13795.226707819669567742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f68e58677aff1337deed2ac983a5988224502ad8e9e8968d2c4b688dd7271e
Date: Sat, 15 Nov 2025 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763227853
