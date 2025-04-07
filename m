Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6EB225397
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744012194; cv=none; b=s8Zovntn2iY5fbTB3Y4+w3nA9lekjYf6F+iC5vpYTkGuFpmfgy6nl7C+mzx2duOuBKKfq+5rvangzq/+lXHDQ3Tut8/soIUKAXD58YrsVW8pC0Ec1QoFV7pIwa7TTp4ohvDyUhGEoweljbWy1pGUJqobmzL3K/5w0+tngReMQRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744012194; c=relaxed/simple;
	bh=Z3ilBXtpv50yW3ZCMqwFlqFOufnH60R3VhdGg39YD/I=;
	h=To:Subject:From:Message-Id:Date; b=c0kEV4MpKi+b5zkfEgNr5hHwOm+z8gZMTUMpiW2Vu9aEAEu6SvlL2NEDZdGbRqC/J3UAgBoV+utnSW9V+0SyTIff0442ulem18P89qCq+JwmfKP2xnWU2TBJRS9UMN68OkzGteqL2Q3JkOoy2cip6Ud3jCd0ctrdDV+0N14pmW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0qMbgc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0qMbgc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A30C4CEE9
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744012193;
	bh=Z3ilBXtpv50yW3ZCMqwFlqFOufnH60R3VhdGg39YD/I=;
	h=To:Subject:From:Date:From;
	b=r0qMbgc/xXztiLdS5b9/Gq0v04qWa4Akvj8dNyMvACr9VrM83KS6YyLyObq45xemK
	 Ab9wv2zTRVrrctPWg+/dQIxBe3azjdLULWK++z6ntf0sURhoqhPuERNnqzi4R4hwth
	 hUxoCup0n8aBwt9ronynyFpvfXMehLVGhXayzS0BXJJSCjwzEbUFDCxGs2hcpxmKbr
	 AJmC1nZ/Nb0JNhP0aKk6FyKLFujAIZmKRRqhok8nCQmBrehkUWQhIVRhU6JENXVAcS
	 MNC+oFJfAP62oTxaeUHhYWkfoTUmLXA2ajqzrzinqtJBAAVa2HOHoUVbmEaotLEM+s
	 6ux0fqSZDMF0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81F8C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401219367.21447.10551645447852617007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc972db35749e822612ad17ff615a5e13be2a6d8cef7bab7887b8b52ddbc19f7
Date: Mon, 07 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744012193
