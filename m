Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B381361DD9
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772220294; cv=none; b=jnbs3RdL14IoqoFKwIMOK6/Jru7FqT9V5hnAY7UGNRH2frMU91CQoNAGsGM+IfPDJoWcUC8u5sl+uOvuZgtTfaxQUg/0c9kEgdpem94by56iqrfEwfILssP3eXRzNXIGqJ7hGkmEwBiFnsxXmdFOCgT4mkunlhK+ee0eczy35A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772220294; c=relaxed/simple;
	bh=4nxP+lSysy7zzDWQUKIN0ZBaSqzNIh0od7Kzt1O4MME=;
	h=To:Subject:From:Message-Id:Date; b=ilUIXPMsQECowxVZ+YTFV6hv9L0xK/FJ4v5lGxVdSdM4+Y5JSfvCbKISr8FNh542sXmsP8ohQBBc7t+TPs6CCgsS8pjKb2qAsQvGamzqwMAU/PghavSHOgDlQwmmdE39ZeiALH0UetsZVhCtJfbRWajlM4ObhmEnhYLCUzjnEwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJShUKYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJShUKYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A4FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772220293;
	bh=4nxP+lSysy7zzDWQUKIN0ZBaSqzNIh0od7Kzt1O4MME=;
	h=To:Subject:From:Date:From;
	b=pJShUKYKf/ymZX6qBewV6gs7/zJlmbXcFIWMJ6cygTGgsu2NqQOcfK8foTZewY3km
	 jpoWV8IgezconQutZXl+11p63a4vH5XQbJ4II6nWrqFuJsufs8tNhL6YbzFdH6ypo8
	 e2KOaH/9hGlQZaK/BweVYR8s3iC1R16bn4j+O+dZDsQ4qitluqUNgH8hl6puh13dTi
	 PgzHdm/NVzJPqm3mmVHK2clOkh1RImt0BDl5sTyM+7a8mnigfTywgIsJG/8sz0MYnd
	 lkZLteTJhWz/YidZ6WteDsj4KZM2oT5DaPQRzItWzjhpdC0JwgLCTjDa8R/RP7FX7z
	 +7HtD965/mBCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A52FEFB7C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222029359.19960.1878890967041726036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e3a22135b54e1e5f4168b32cfd5d18baab8f6e9f73d311c47113f512691d0c
Date: Fri, 27 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772220293
