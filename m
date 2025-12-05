Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFD63B8D60
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764973974; cv=none; b=Bsn+i0uLSsdqLzZxvXqrio0aGxFrdcUzDH2kMHMiT+K+B+dlyM3X0eMDXA1JhOizpkmoIZDMFi2wen4WMY7SCYJgL+AsrelGaUDnqlI5MhdO9HuivYqj6Bc16Mj8Iwc6dewNaJWsqGW0VQ5RmRGp7p1ng+v7UJtsh4PDtpw5BOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764973974; c=relaxed/simple;
	bh=NmMvc8sjMwe6plIiGMOoXDFF1xKzUfUpfBZJsSJPJJE=;
	h=To:Subject:From:Message-Id:Date; b=sk7TfIyZTm8u5NYL+E5XGfENFJxHFS3F8jW38UL16TtCipHCs2ilfpCnocNYe5bIW7Cj3aSCSXT0ZEBzTCCPWV2PMQBOznvkvNH3ZtaSqXXV7MiR6Hw/sijb7bZHY8D1hG3/pgJ79Bg1bxYtbvMcXr8guvlVJwvyQihNxlxZOCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClGvQIwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClGvQIwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62F0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764973973;
	bh=NmMvc8sjMwe6plIiGMOoXDFF1xKzUfUpfBZJsSJPJJE=;
	h=To:Subject:From:Date:From;
	b=ClGvQIwU0c5LnWgRL4X6IchVYVkQ5JftNypCRKJfXMs0hYnGK9l8oAk4Ugk3mp1wZ
	 xD+d1cb/h8OIgNGxaaWjH2cFUER4uO15FXQTcVTVKAzaVodNmU8Y1qsco18Z0H7mxz
	 akK2HmMZgJUzOROCLK3SdFllit+wD14EtSy20uOSSouey78scbIV+ZYv+TytZIIUEe
	 kAXjPYUUdpY4fBzrhXEf9mpq7CzpORNdsLwFSZW+uIhJ+d71z0kQY0LwMC7Yeg/01D
	 Y3LQa2DgHcsnOjKen9I39TxFLJL199zb5JsiTtvbiXZMTdHuPO88jr7bGfOVZCrZv2
	 CvBP8milSTheA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D6DD374B2
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497397359.24683.16546490875698958153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed00172086299682c0592c4cea763bf0735d33b9b57d4fa00371df3a92555a5e
Date: Fri, 05 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764973973
