Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0FA47CC6B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782836914; cv=none; b=j8sW2YBOAamgfE0qtLfQqhZ0BEZKBKWAAlIpEOQiUFpL7NGXNIMrc/mRHGBO7xMg8/fFHYmAfaPEmjVLiWczk7783SpjwyB0VOPAuLy4ZZKLeFChtagrHKi/xNdlU7NBGOoL59oiX6BU8PiBZVBLAoPNaG1clnT4co89ecB1KTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782836914; c=relaxed/simple;
	bh=U/qpl5+A5dOonNNqZv9aR8rVnmSplE9pXfEzV/lDvlk=;
	h=To:Subject:From:Message-Id:Date; b=T5vh993fr+kcc4s7Ps2XQtI9UQft136TA52fGSfCEo8voPWsTkMGOTZsucGzlssWBiGAZjOGXEQWWR0JPbl0yTVR3pGcoot+udyAEXKlpu8gIJHOrkGhdkXpYuy97dpiq/xmueEricbZcD82Vg8cHMd79gm7f6UY82U1oMlw9V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UF/XQCdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UF/XQCdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44F7C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782836913;
	bh=U/qpl5+A5dOonNNqZv9aR8rVnmSplE9pXfEzV/lDvlk=;
	h=To:Subject:From:Date:From;
	b=UF/XQCdUeqJrZup5nbyMk8C/tM8dP748obOvUWbZk8ZGcQc+B+qfrE7050vCjWwhD
	 uLq0uIL4RB21NsjkzL5tNl/SudhQEKaZkvL9rseqbGFuFoOHwnCd8Xlyq6B/1Wee6E
	 rskIn/Kk/SaxzZTxLcO4jwA+Kof7yK5XK5HOH2uXlU3X1H/rGKTbNY3aY8T3sNqAf0
	 tdWrFiqXARA78Qq8M1TODOlQAyaz62mkeJ7RIfgrMwwExVnQjAD8Na44ufXYzEsoEN
	 qPf1+LPMv4CN2nbv5FCz7KD+dNe1qWCaGPdrIGhH5dL2/UMuOcYyxFX7UHIFWrlAkQ
	 +iv1vnYJyEAWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2B1C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283691369.4297.7867805265693618982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 562494910fb79ee19a586ff7774d1e4f853455bf98c8bb2a370a513507bc9c09
Date: Tue, 30 Jun 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782836913
