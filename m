Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2A0C14F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720929623; cv=none; b=GmV7luTuMMhIXqSakg6vRYzcrq0hqbw8bD1D7g7Xx5HRaacQQ3pEpFYJ3XB/AhlLNAFglP/BxxGTnLEfE1FqX6ZYu0ZPyP5103meF0gI58LSbz9/n8kxQcdBY2oFYSjM3FISAToSNwJlxmV4CcFQVDkSrL2fBNV2N2LVzlBqljA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720929623; c=relaxed/simple;
	bh=FNmRg6FWbVrSFwniGuLWIkeFt/D+ZC8lSgAzrpNwR5E=;
	h=To:Subject:From:Message-Id:Date; b=ZjVVmGiC9LaIasaDo8HKp1LVNdVoSLFo8zSlYl2NMLkUMXt4gghrym9c6486aM0pO5yIadNv2AoyklNhRSGmAuGm9hJd6Jzy2WnteUoTE4+b+e0DXPDET17seo0cTZnkl8TlIKBUDvUfRGw0yKDBuVqTJF2/Di/0Vj7TGb1PSyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPLC5gLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPLC5gLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0DEC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720929622;
	bh=FNmRg6FWbVrSFwniGuLWIkeFt/D+ZC8lSgAzrpNwR5E=;
	h=To:Subject:From:Date:From;
	b=DPLC5gLtnaQaaSnyHLgrrTbwIz9SaFoR/3vUAEm1jy3+U8mXprXY+ITNPMGnYgCYE
	 cAQrB+t9G4Dbl1wKVkk/AnsOxWUXSKYkcgsr+/Wrpqvn6CZnORdlfibP+a3Im5xJSw
	 f3QaCxnEQXUWNX69lMDIZoLR6RXppdyKyRpj0xsxNi3mnZIpkmN+QCCKXL+Q62Ekd6
	 m/CxgCp46R5Y1oYl3dgSiq7ZWyBnDKWeRp7j69PdAmdaCbd+hA7XGsp9gQOKvU53pH
	 VvjbZ6hdUm4Z4QAh2l9CZt3QCwJmENRUOHDYmhuOD0+NnJZcGlwwT65lDhUYBJe1dD
	 eDdz2QksFh04A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAEAC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092962276.24223.9095937922735635167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718d5dc83354493a17941c175f61bf2bc3e33354d15220c76b9336beaf0cbeae
Date: Sun, 14 Jul 2024 04:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720929622
