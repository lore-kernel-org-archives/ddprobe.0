Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2625B277016
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753264794; cv=none; b=bqUm5gH88rrTPAvY/QpWuAvAvz8pCUkqbhRm330RTgnhlIkkkeyvdPdm9DSiya2n+s5iW1WbbN0RoMSzSJWcEC1LtRCR7q4BBcXhWqg6B9NWdpPYvg9Cxfn034zBJXiGj6WHlpyK4uClhHanl1IJMzpqwkFGUDuyGE059fwLRr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753264794; c=relaxed/simple;
	bh=+LTkQUl8yqkEAvIJdPDLmtQMAfScdAdpltUvYmP9v6Q=;
	h=To:Subject:From:Message-Id:Date; b=kWQhqvbICW16wCKqPq6dHPx/S7RZSIMtcSLsjm0FZZXOthFkYLmrhtuvX2SMVMiMAZ4jUYlGyGNSx0J44pY5vA4y/SNNmWcVAtylaSs4ImZKvx/Bq9pIx0z3Gu/ivHrFqGUGgFOHtHmNuWYHP/myANk3eGhtWqfxrBBI4XtUbm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hqz0KKwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hqz0KKwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE87C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753264793;
	bh=+LTkQUl8yqkEAvIJdPDLmtQMAfScdAdpltUvYmP9v6Q=;
	h=To:Subject:From:Date:From;
	b=Hqz0KKwveX9vhL/jU9rQrb8KvotTzqnOZmD+dyDcyJkCAruSnZvh6714TS9EVw78I
	 9IqPhZBvBjvTeKT/yz3WmeSPtrRM7iZracbGoDNvbghRMMDREJaChIvXynyg+SWfgn
	 3/x/s8UNUZkwsi+midHGQbq1/7nFMSNEQ4CLgFoi/1yDD//Q8MX39taUNboJGTYbZW
	 Hcs4+YR+8eJ4g9/E4EldKlcVPPF+QQCTV0zVg2kGnbov4ExiLUynHWCLhPSApMoxJz
	 c528sCnKcbGJX+bTPLuCG1csmIGGux1T3WtjXGGSlZHvEfmDZ2K7dyFsCQjHReaoNh
	 NaHM3wU70kBzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE3C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326479357.12554.11714761860100276347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083ed5e154a5165716d77fff70ad78af99503df0eb4b8021365f8c49eece5ab8
Date: Wed, 23 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753264793
