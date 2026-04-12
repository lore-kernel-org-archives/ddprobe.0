Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B33B7082D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775993854; cv=none; b=Sk1KoPKLUOzTZHtHU/9E21ABTReM4KWd4vBBr+4ARO5NYnADZk6vNjYNCmtwwXkdNW4rrwCqqmD9jIbV9BUHh2EsNokCz/K1wtDypGZcz7gULKiy1FIe3c7/AipT2bwO1Fvvy359E+1U05oQ1m8jTHadz21CAfnPDqOw3Z/yrrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775993854; c=relaxed/simple;
	bh=yDPkVrz3Cn+70cMkoAD4hyNcH8MWFTBeEJItzWWhqVg=;
	h=To:Subject:From:Message-Id:Date; b=Ik7sheEQu/vXZDn4/CpRVYdUWEaEc4TaGn9+MZWvc+f67ndei+iDMIz+VHQIRLCmY3A+lkfWwVGa8hdLh2bOtok7Qxgs8cWNMPKzYnkmGXt3IMyLkJB7fRNX0OoWzZ1RWxW/Njvlagxxq4wQiy/YYWblDDu3SQWONsVXZxo5wfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbuD6Pwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbuD6Pwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC429C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775993853;
	bh=yDPkVrz3Cn+70cMkoAD4hyNcH8MWFTBeEJItzWWhqVg=;
	h=To:Subject:From:Date:From;
	b=SbuD6Pwc46FkA+CGRbKtNrk7K0k2UQ4hB33E0S8PQPv0GFW4QxZ+5HmFQllg0qrhb
	 WlX+EZpihlM4ZTFE11RMgm5yG1cSxFfP39NUlo5fwDCjyWl3aer7qpDTNAjddilnQc
	 OO/gp2i5lAiNzR60Ra64Ji9EUNeI30FzEQpS3MQuFkyh61YTkrkQZuNjpRbEmwy0yy
	 xUv+C6pnxpoZnL8EVQhmLLLkLfxUzDITRdsjpQ6HulR3rgNSnK4wawHwRmL4hTShbv
	 IV7k9XzUCgO0QNIa7dGDSAQEoVUF3yqBOdzvmQUv/Ak6CkwOqWnvUUtAHl+Hk1sclS
	 eswcPIFnWgwYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB01CE937E0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599385369.28680.2751238379647640995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc5a0f43b1d9c837c0924a887f97db47982c9c2153865324088f9180d7e41ef3
Date: Sun, 12 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775993853
