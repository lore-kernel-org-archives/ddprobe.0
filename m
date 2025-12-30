Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077691519B4
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767081834; cv=none; b=Zjtz/a1yK6lugzT1xJFzEceRDRxNXdJsc2oB7rVvXTU9bt+DQqhV81lD9Y1urjLDNlsgoEVjqLSf2h1czd/T9EeIEg47cf1g3FIFuipLrOIfCH824A6Nq36kOAE6W3tMequkCb/7ND6vPKdnvCzjZ73JYdZYlh7vWEeC+BP0zLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767081834; c=relaxed/simple;
	bh=mWedmYicIB/RCoADPSEnog5bLkCEyQxYJ5caDfbFkc0=;
	h=To:Subject:From:Message-Id:Date; b=eeBXfhcx9ZYCspfKfDurkhUucsTfnRS+vPY0SZzeZD0Twscu7igRf3Fr/q07TUzDuV2lGgnA9TgrBKZ1lt3bq9dY2fZUSun6ehsO2m9aftQ5CdCoECK3/fvVGjv8bm+CLESEGhfaL9U/MI38Q6Yw1Gt5Cc9dcD+555B6TN8yJ2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXa0uyHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXa0uyHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D35DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767081833;
	bh=mWedmYicIB/RCoADPSEnog5bLkCEyQxYJ5caDfbFkc0=;
	h=To:Subject:From:Date:From;
	b=MXa0uyHw2m5zCtLIVMhJqbtwt5b7XN+3ykeqLFXtHtiLsHN4dXedtLtedjoDSfYJ7
	 E9O/W8o48NgxPqkh1os5GQ5Q2SMvmTGlGsSmCLnwjrLpc8wTCAcVBvD1DvPyPsIqWt
	 1RcOsBkt0ty7/vNRdHU7174k+D+eehqd0qRN6olhdFkhOxWt0n4NKKi2w2Lid/Pp/8
	 3l0VnxG+jYl8J/U59yfzH8gjm37BkSOplGUAIVUOh5YzpgONwFZ9jNCS10S1u3hI3o
	 UkUEd5cRct94EGvAb+PsbErEzqbArxj69w9FB2FGlxJAuLUIoGMQ3JzZY8HXJKlwR2
	 xwFkW++brIOuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F923E94120
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708183358.17467.9993151781632856497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71a16ad052c2e380fca988d6ccedeec5b23ad3b7bd8e61bb07b1529f4d3adc9
Date: Tue, 30 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767081833
