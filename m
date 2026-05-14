Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AD230FC1B
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778749834; cv=none; b=ChWkX5kRpRxTagfG/v8jzGrM16ai2p/DyLHgrH0/c/t5VfR02zzsg8780ukv6r0H126OlOW09zWyudsftSon1hu8Bx4oWHJqTyEDluhjVPzX34Xb8X8TtpPuf27E8EsvvWlG98Ojk2hBOyQN18E7TeCllmqwa/begNMLLEO/F0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778749834; c=relaxed/simple;
	bh=AsDyIOjXBealSIqZ3bF4JihhbkkNVQpQgEbnZzfjNTk=;
	h=To:Subject:From:Message-Id:Date; b=oBLAwt4Xkw/g0OLCTp5ma2fSLOFILceAbJeB3L2VDapEdDJmB6IP5TbuogxKgd9mpOdlyU4LTU0FBNZG39l03mK6kmssJftDjO/42K/5rDgIajHV7yCaN0knFBD8JqPaFGlm/7jz9/jrMDOhYyaPMU4EknFxcjpCQtPMRO8yQtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CL3Aya5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CL3Aya5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD55EC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778749833;
	bh=AsDyIOjXBealSIqZ3bF4JihhbkkNVQpQgEbnZzfjNTk=;
	h=To:Subject:From:Date:From;
	b=CL3Aya5+RuFUpbifdG/LwM091wXuLxL+H0FzYnCncQ5McB6qYeGw+tM9oMBrOVTrO
	 nvMYWxkKw7YWnoPL0lAYbk9ly0fUPrCPgZSrhtCjrMac3+fsnz2pcepa5U+5QX3cAP
	 GxAv+Rq4lgTLdBx1rsn5OqSnpZuURuJz0yrL+kL+MHUywkZByLlrjv0pH80SZnIXWW
	 02c80vZOpR49FqUrtsOVl3Ns5UePigJgh8UkoWIdtaYJQpUpVa9NhJHc8c/Edgg1iH
	 0U2qMC934DPZPSe1ffN6TTm0bRN/uQ4NJ+plyz7uE05ow4zFbkA2jZGn+L1Wa8Dkss
	 eyxi6+c2pB5xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA1CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874983368.14527.10545005775352154510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bef566f10cfa4aaf8cc8114e8e6c49fdb6cd28fb190fc14f6de8846d8bf1e74
Date: Thu, 14 May 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778749833
