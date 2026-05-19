Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5B63AFCEB
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779205834; cv=none; b=J/AzkemQ3atDA7gVEPjYdSU02fGevV5WRI/c7DmDY+5TxeVpnioQKkDTn2iAuFrdNU8C2RYRANZSl6jnXp80TpHDQPQsK5UeRxoZ8h1PIWCvnfYFgBLkcAuiPBEjz330Um2cgU942qJdbzgrTnwE5RvPv3imnII6FW3TH1DEVFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779205834; c=relaxed/simple;
	bh=x7zkgPqWqmZZkS9rCKU24SnwHcZLcy8PQ5+e+ISIPiE=;
	h=To:Subject:From:Message-Id:Date; b=JMtc6UfyhXT0BV6Bl/MxLVZt0AgT+EAjMNO9GBryhXZwjMGxsn4g5m4cOwWSTFm9gkYhmJp2U0EBKoy199bLi3gD62DaBU81mbYiiutDyBzc4aQJ6JLjkVaAxtJwLlqEcE+sbynwjYqtjTLhaVTGPdg4GGSLBdS1n4jpkjT789A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGchCcB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGchCcB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEE1C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779205833;
	bh=x7zkgPqWqmZZkS9rCKU24SnwHcZLcy8PQ5+e+ISIPiE=;
	h=To:Subject:From:Date:From;
	b=CGchCcB6GclY5N3Xo1s6AFhSOCWjD9f8OXAITZSTovx1TuKm1UoRXROgZ522BoBeR
	 R2jzg8VG4lWCsGpYqwb0l9zhla+Opm5QmEngPymCLLrG9fvDiZoe8BEkTqM3BveZEJ
	 4yOBFwduXZ7hRN727o1pYR7IZJEf49qyJi6K760+Zr48gLGeZhhTOWVECOLStxX672
	 S5WU75E7v6YbQPW5NL062dmliHc0rqqSxlNRQveQl7RUVprOtj9Qz/ZFeTjRq2m+aQ
	 pVn6nGDllpTnlUAZOLykRn1VF/tNnNU663gqbgPSCEUssJNJkXuXXt/KRJSs90EwJx
	 Z4cJp302nNpBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7DBCD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920583369.7471.4023912415377534677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786ebafabc84a877b673be41f114aa3fea1bf5eee5e8e57041ac2ece0d6a4c90
Date: Tue, 19 May 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779205833
