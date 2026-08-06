Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B5B47F783
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786049434; cv=none; b=TNlQTCHY0aerz3BtHMfQabag1EkPsnFLnPuNYBKJP/d8M4ee4nXDpGjKZ9qIl9tBqFEjnMdpnKXdaBv5XvgLTHwyelSLW5niv28j+GztQ64Mt86eOkmGlI3HKbTkKd5RzboDGTioQZVLz203bhgYV2AdR4J+/7dpsPf5WVOzSLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786049434; c=relaxed/simple;
	bh=NkA7LocX5QkigJmoS7R7It9La5EsVkyeiFNw98Qa3qs=;
	h=To:Subject:From:Message-Id:Date; b=gsqcTrCOzzpLEAL+0aLEXocgjxKOp2ATLXHIHeEfemACgQAjO5pDBR6OR6u5zP6aImm/3B7SLNo5jICuTTbdt2rMf288MDbNcwz57Ds35xyd3N/XIvlP8hIwD1iyi5kHDO7Q9DCHtZdJq6pJyB1Q0sqmNZuLrRG4d1tF7Q5pBFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkYSyPJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkYSyPJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5FDC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786049433;
	bh=NkA7LocX5QkigJmoS7R7It9La5EsVkyeiFNw98Qa3qs=;
	h=To:Subject:From:Date:From;
	b=EkYSyPJ+PGDhJKrMaprF26awiEzXjy9+X2sxjBuRC62JF7LiiOMX9ZQjsNrn/vQkv
	 RecasugcKd0MhkbKTtI2Y3w13mfwr3yWqYlU01AmqjcXiyb/U1zPcglLIRqQOzQYHR
	 acxf+gXSyMMmIiA9rUs2lLnjoYPdeOEA9X/3cdnqb1rYtehvR9u4wJWuIm2y20MCW1
	 wBEdJ7P7HuQICHI0PMipnoePHlzYqDVLaNHzWW2/Zg66/uqOrretRRvU78kLQCCBR/
	 /B0VACLbuKARx40VnbVxcwmVSPzfLzxPfoldiICWkqo3xuj0Bg7lQCRo4+Wz9CD8SQ
	 er/aSrmF1ZyGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9446C5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604943368.19127.12899249365520491156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0545f3c7aea6a979efaf01e15e34bc6eb629fbf25f290bee48a436a2038faee
Date: Thu, 06 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786049433
