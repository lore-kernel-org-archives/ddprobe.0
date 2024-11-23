Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C82A957
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732320954; cv=none; b=q6GbCG9Z0DBmPDPz19dXifV7NIRdyCRgcg0vm+oUFMMauJJ1ZOs5xqQXpK1pAJIKQ9LIRWB7SBfODL8zUB0NdKISZcFlhbcX8xYDlutwehUke1CVb3KPSF9VV/u0hSq7NdMQp7l48qLF3riFHXsqI5h14THsZ6Qup23nzh78qqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732320954; c=relaxed/simple;
	bh=yvwQBB1XwZHGnEp+k0r4SoEpevGiy9h9IypWYdcsx5c=;
	h=To:Subject:From:Message-Id:Date; b=MK2SHl4kQ/5r0QGRIF2OG9rT8OaFxogp3m7pBd2hROrT7BpMzzbPRLpVBPOm/rYGcXFguw/XfpyQVRdsOcAEW3sTuRCy5TuACHFHN/FU9BCE263+mGtfVuPDI0kW4uvQkbTUf33c5d8AF3fx2emZrbAkfD4OQnm5s39c2oTQLk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/Kwy6si; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/Kwy6si"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6208C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732320953;
	bh=yvwQBB1XwZHGnEp+k0r4SoEpevGiy9h9IypWYdcsx5c=;
	h=To:Subject:From:Date:From;
	b=E/Kwy6sit36m5A2xjWwH5FkP0NIHNtvtVac58bIr6OnU5b69MtqvFaeyTTCED2RY0
	 CJ6DyI59Scate5+sfYNb7hoQ2xjakMVUcKW5BT9S0Fx35LuzzhUpi0YbLGNisy8Fnl
	 QN1lNevGVxwfW+5wTZEh4ciLPfMXOYUAGhFcoPbZCAlc9Vx2Jsmb35rjk7eJE+rl8g
	 jLGcZy5azDD7RdYUze64i0kY8Sz9mdqo8bj7LnQtTYPHLOG/+V9VSx3FQhX8KI9MjW
	 YZVzvyQa6iMC7FttMPNzcQb/UH9cpvF6lq06kMs/47bTDn2mkhQkzd8Z4yPE3LIcH3
	 KT3FJBSzHLOOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D5CE6ADD0
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173232095360.7132.10720772185222504038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf06a98533511a88c954d50f2944a627f2340c4ebd8c9d0351f751527e1ac8d
Date: Sat, 23 Nov 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732320953
