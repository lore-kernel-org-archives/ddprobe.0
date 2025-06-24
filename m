Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BAC26A1B6
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750807194; cv=none; b=T04WKPQHRm84ZKbaAPLNoxfllfYySmRW/wV+DwmKQMEK6c6AkGgmKA+NHzj559TnrIv/Y1MMfUq8VXj+oZNOVqqa1eK97r1jfy9BiyCU6H2CT2GWf5XukQOCL+E+9Wuk+N1GwBUazeWrWdasqieeKX9SzBdz7pIIa+QrowNmQp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750807194; c=relaxed/simple;
	bh=b7wt8ojKaIqw0BNzANyqJeF80i2wOXTukV2J+DtNDs8=;
	h=To:Subject:From:Message-Id:Date; b=mpdxVUyXS6ZHehSlJlwTVGB9wrafRiwYlJ3O7ULpe9hfcp4pOkAckUMHWVOqt2WkJjvwgU5Ncp5JTsYlr54VrlgIlcW6cZE7jDXi2B6KU5k4dUke+JGGapZWmYVqphYYEdfHKuvtMLoEsGtiR7NGmXFePI2AfEkY4VQtmJaCJLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9Sz67ZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9Sz67ZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3013C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750807193;
	bh=b7wt8ojKaIqw0BNzANyqJeF80i2wOXTukV2J+DtNDs8=;
	h=To:Subject:From:Date:From;
	b=r9Sz67ZMoO4oLy1HIKmpyh0LiByVnL6qgqSm0tXvZgg46ZWfBzcKgCgflvA/Do4n1
	 WZwX8KaEoOgaKwZp5niKq2okxE/7dLp6p0Jy4cnWsgI+znQXBirErosPktgR+oqo3K
	 a485Yj6OJSLX08s7B6hZzrXToi4bVeAkIym42dNMs/3dWnCMCMP5Z09GjYIl/xuf19
	 NhIcxRkrm48ieGwSxw+DkSLUWzNGNS0WkssEXSWrVVcBO9fd6TuU44s0fsnCfTBT8o
	 4fYsGpdRPO9SsTEFqgEJjQ1E0Kzh8eqjmmyeXnz3CtDYkiXqoM8FZ5Zbsi3FykRaiK
	 Yja2Ln9Fv0g2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F99CC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080719357.10848.3040364466083798088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cd7a604a30ea924c6322c245ff6628ba3f90217ed671f131451a5fbb7bd2199
Date: Tue, 24 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750807193
