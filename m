Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E175DF58
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753600194; cv=none; b=PclAw/VIB4scY0J1yCv3Hiiv/5RnWfMULKFBq7tddVCPjsEiAA3pENMzTQjofQzMOt1Z5vGwreLNc1dGsu7k3l0vVtDOWPNB9ZH/GIK9WLjPQ1yKs7oQWzGvkc+NwZB4GZ7nQuB9+SPm+fCMPKNZ6jP3HZqhKGsSwuYVF3k3NVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753600194; c=relaxed/simple;
	bh=rlMFvI7+1rgiT9Crs+fWVV83/n0oq5rqZhIxzJ7EIlA=;
	h=To:Subject:From:Message-Id:Date; b=s6Pzwxfvhifg5tbOaBcSXlkjW/1vgali4BybTPZwOKIY+me9YX4cnh5aO73ztjXrLy1DOMngrIl6Mdz80z8Vm3v3TWj9v099rlOJSMKDzCBeXG7A25tiDHoD+wXQ8w5y6XPO9zRwynTHZBKBrgUVSVLNxba3fkz2zBI9SP4wbPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJ8RFg7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJ8RFg7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AB8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753600193;
	bh=rlMFvI7+1rgiT9Crs+fWVV83/n0oq5rqZhIxzJ7EIlA=;
	h=To:Subject:From:Date:From;
	b=QJ8RFg7DKh3doeyFjAq2b8ykXEAy9YCO7lfSwILoL66aDsAX3fI5XH9MVylrlkXJB
	 4V9NEKfa8UOWdLq7RTX2YcaO6j72k1SeWbPUVMu1i4mVQ8c4mzedT+KJColZVS7ink
	 chRTIAFqFVvSSV/buNAVvN6Jml4qupdLiSh+QXG8BuLt6EHtIfrD6SrCsUE1FJKLGG
	 dMEyEljkT0LVjDGamMSadrT3/DY2zad3QH6tsiEdWibSlDsCuxJF84NZH1BvTLASK0
	 dXtwSmGKBPT8Kdl3KgfagMrgD7G0xUnBaLgV5TgArEYecjJkKSYiTx7EzFVuidrPYn
	 ncBTpoHPLt2MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC2C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360019357.7543.14217608951512329189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96446098c1e3c0cad400ba9af1e9f82544c7ede0cd1b0468e96d0386e74ec950
Date: Sun, 27 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753600193
