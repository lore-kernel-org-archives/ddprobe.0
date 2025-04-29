Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B39E21ADC7
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745947194; cv=none; b=Mpzccu3hzSoBPRR+cmDI8TyN5Eyp8XWtPOFUygOIqtIMpioajAoKWM9AAhGl2XiQPIcu6wqE70Aa4+WTS+uXMDjcHhw4CvbIukQHFu/BA2XC0dy2XdsB4EoHp86+TO8XQ4ZsEH5uWcuQuKxSenPWTaKTtQtcZlCEwgSx9Te9Qzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745947194; c=relaxed/simple;
	bh=ahQJkzFIRPEQXWTDSaeo9lBuot8q0sTvAWau1PmORY8=;
	h=To:Subject:From:Message-Id:Date; b=Nq2hSFV7v9V8JWaAkEVPkkLXALbd3x8UB1RepyVtmheBFvXLR9/iYkDTg8xWx/KqH6U22QliX5LzH8tqBiFftkkdli/0HiI7/Vk8A16dmDGXPqCxOnSbFtu1i9R5qukf8vp7LWVCqRSF5rH2FCJwTa0RRYhexCcoKOxq+z/57QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLklN1Nd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLklN1Nd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A812EC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745947193;
	bh=ahQJkzFIRPEQXWTDSaeo9lBuot8q0sTvAWau1PmORY8=;
	h=To:Subject:From:Date:From;
	b=DLklN1NdYc/AEtDMsR6xkxRU9YgZqifZVX61EKWKHuMuhpNq0oTBv7lIe/37OTw1s
	 79lFMCdXj1nZ63eutUUDTRk7cXKPxS8mLJYc4GwmYK6qOvw46d4vprGz/BYgeqlwN3
	 UoQSrJ1a//Yme6/1XVIJvbcXpDyEHtAPVOUX9NEjIlzZ+2TzH4FgAv1DNBUQJM77q+
	 cwjOewg/RkAwBZFA+9pn4nqT4/QOAspDhexxa5MZNrHpDx3yRwNytMRGIVi4gCjFyc
	 plSlaM7bYb25rwwKZtYoqta8pAVXguo1CwiUnxzYsK25ld0o1cXXO/EsxNxZd1Av7y
	 6QZFY/mf7BDOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9669DC3ABA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594719358.28064.1461849802197352032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d40b9cb4275b6e356d4be8bd7ac532a2cd8acc06cbe726ea904c5da6aa5f68
Date: Tue, 29 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745947193
