Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E38B155741
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730541954; cv=none; b=dGz4s+I4pGFj8E07n4qXTBtI5nG3iybhaQb0kFj/q8Mb3jkTwoGYY+y/6W9isG5D4YZxbjkDxM3HOGMW4ojQv1tcaD4ysX8rABoIlh5hUoJ/VbHDLcctiMG4NtLv7MKr1qiFqWyLptVVfDIMkjbYbDcqBwwHsuEojjO7QEFVSUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730541954; c=relaxed/simple;
	bh=qMpj0NIVB88D8OOdPjZlPumrMbMGaHjPVGvcegCrJ8o=;
	h=To:Subject:From:Message-Id:Date; b=taZ8K5svFss4gEp9MTSuRaUWratVIPGPeuzcckA6sj2YwDskK16m4wmDAdhrkPmaUNriUPG5ry38aUG4GA6KxmhYq2oEDeQcAX8m/AoP1LHdDkfzbCC+DZfh9o+cNbR3A1RyvbMEP1ibrx7dmM2/hqix1D0GEliVpFq219cJP5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rww6Erry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rww6Erry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FCDC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730541953;
	bh=qMpj0NIVB88D8OOdPjZlPumrMbMGaHjPVGvcegCrJ8o=;
	h=To:Subject:From:Date:From;
	b=Rww6Erry4yV0Hw7PlnowxXsGaOepXSgxyb93DroZ+rRLQyXGsFNHg0eYKWMcMv2aH
	 mZHV59sRUdRJksLCQDx864Lpo8VJJw3nAXyWbjDXHK8TtvddtYvvIypzDz4RzJVI1e
	 pcqmoddM2XEgmr8M2h/0xuJ01RZXqUNaIDyCvHogcQF1dpTM0tMGO894TzZc2NDEUO
	 pHL8tg4J+IhiRYwmDTf9chtcr7G8BeutZhiPZprnPkm3s8g73kWS+U3MwP414ldNlS
	 sOatlUnfjEQPCfaBRzeIkB/xw2eMwFwQ87SN3NuMaghw2EVNyzUtruyARcS98s3wci
	 jLS2PtCqPDLTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F44E677F8
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173054195359.13492.13372356349479111536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5337abe9ce1d2cb5e7210cfe616287fb1fe99a2022402f820a53a221ae6e8a5e
Date: Sat, 02 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730541953
