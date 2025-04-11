Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E89A28F93B
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744405195; cv=none; b=Iy5PJjmhq/hIK9wWr/vtolBUPyTGnH2YK640w9iLQwfgSrashhsWQQPw97B1nyvNGvgWxe1keLGJc7snK4v/cfiLEILJ9n3gi1jRWFPdYH6RySFJ5AMNK2OIyqM/SBoSn+NSrfo3ZgRxxK5MpTk6xtc3U0BubvTIUhS0mS2g9xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744405195; c=relaxed/simple;
	bh=dxee9D7Ysrc8P6ta1W7kptbeEb9yrqg69GLVNhbE1hM=;
	h=To:Subject:From:Message-Id:Date; b=KPU/yvNNfoWXdl85tHPisE/7yRxejML5LbeVanAT58nKI8A9n3I5evLMSNQ+iJdngd1+98ZAVfwmkgLOMr0zDw9AyOfdLKjA9wwhhGU9HG2CUhKDTF7yGMnTdJyKyHa3YdQ6iyLypVKTXzn1gPQVzXEoIGJWj4CsAF4AG2woMHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6Rj66iX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6Rj66iX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9F8C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744405193;
	bh=dxee9D7Ysrc8P6ta1W7kptbeEb9yrqg69GLVNhbE1hM=;
	h=To:Subject:From:Date:From;
	b=s6Rj66iXVf0b1UBD2IaFOdzcLE+bRiDrRvLM5Dea9Wo6XVfCOKYJ8z4/0nUU0gaVw
	 acM2GDftDCvfa0OjEZ7RM4oYBrA7dY34G/I8/Oc5KX+NZ8rPSNIQyMZZUkHjfq8WdV
	 5eiy8gx9oKU8BXV2cMftqVVsWabpiYe1vrhXJinoq3J6WEf6WuPEOANferJQf2G/+7
	 l1jpLF2If6bOHV9uQWmhgjM3K4eKxiCWgYw7heHUEKPdgcQztao9+5vD/avC7cfGXS
	 i3V9mmyJo/SzA4NpWwhm2fovHwY9uJMsEE5FlQw+/9j9RERPeikFGwCkl8739BWZLZ
	 WGEh3cN2UYTmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98480C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440519361.21313.11844257863678812979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40eaec6a60097c4c33c6df51e0690c035558436ef7a075a08660b5e91ac3f8c
Date: Fri, 11 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744405193
