Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E92A1ADC98
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737801954; cv=none; b=ojtaEP8EvTiRHVKd2Z8/0EgZMxIRCmJ2pDhnH8QVzWVg485VlZyNlwz03/lkyIAfF6mecPIQPV62ZmdENxYfhclxTq4cDhC40rKnfg1MPE0l+l1sd1XKgMKRnEz0ZieN8vLKApr9ibN0s6wCWnU2mvqHeISUHQU63ijA+ZrD06I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737801954; c=relaxed/simple;
	bh=MM02EdSkibFRM1OXG/3//OS8A9KJ2PiHD6j5Q+LLSqI=;
	h=To:Subject:From:Message-Id:Date; b=ZTr6uQJwC7m2zHEFnwpLpcnbyaEchTvSegGA3Mof9cqUDWIf22VUgU7Hyw4VQ8HM9eEbcPyNCZ0F05V5AoxZxKOGAV8vlYj8gmfvjDxGsD31/KkBcpw3CrqbvwFO3uuWTr8B+zoYpCdIRO5nabNjSdFPxwwB0ILNDYP8WyltOfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/j6eiwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/j6eiwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B12C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737801953;
	bh=MM02EdSkibFRM1OXG/3//OS8A9KJ2PiHD6j5Q+LLSqI=;
	h=To:Subject:From:Date:From;
	b=J/j6eiwmXt9S/S/2cNznaWSbjW98UsvjWQ8Fl3P0OeVMwlyDqTgkcORTrGEUHRqyP
	 8gZmSj59ZsyC8eQ/7gVsD3shbHzTllF5uyABUgev1S3cbJ04VcGvpMYpAdCuEDRmZQ
	 g03tyY4LicE80Yj1wJa2k4gm2UW+dW1JTATVL55Z7bI1xF7Bfq9VdnXGwdjy/E7CXG
	 /XK2lDZBZ/l5R5nseMymsxRfQlfOvqWZDSIQCaoh+oluUUx5eml2QOQLFbm+Dvlmld
	 dEJnUSmNq5OO3XntvvQXWohjwdG4ZC8GBZklzv4QlMKyRf8rfydxkZCR9KwkuK7xh0
	 SHll6XNPvX7BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25EC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173780195357.6263.2402083696892676320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e82925615f5d10bb7d5d3fc98fc5e724c89b1bbd309f67a0ade8ca7eef1b9c
Date: Sat, 25 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737801953
