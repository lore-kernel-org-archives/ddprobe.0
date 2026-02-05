Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132372264A3
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770269634; cv=none; b=iUXaEjjZ7UU+H8VtmDx+zthrwyk1TIS+OrPPR7kwXYqGfSDw/Q5FlmByF9UMqXiKzFtwtfko9YFI9t8MMjGb9okxRM6+u/P7VaNSAiMc8aQUzko4bXiTxpwcQDgnZnUO7Kd82URydqB+uvKXYDMlLByrVMFRIDZv6/qkP9cd0qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770269634; c=relaxed/simple;
	bh=s8FLARBh5LaW0Fyf3VXBwWNruA/eu9Lx8dK9n9DVlj4=;
	h=To:Subject:From:Message-Id:Date; b=Zf7gdTaB8P5aAZ9JmHLxQbCyfmRTb8SeutMPsvPgksktT299A10yBu4ecv4CyyHAdsOtN8Z9DdBQ6wLJMyppxCOOJMOPqdFi11vSxuQqJ1KtLsaFsCtIN8NKr+7PPg/BltHZuuqvLuxpPuYBLPT7qYNrcnHEfCQtumrPQWvl8ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6vfWlAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6vfWlAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CB4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770269633;
	bh=s8FLARBh5LaW0Fyf3VXBwWNruA/eu9Lx8dK9n9DVlj4=;
	h=To:Subject:From:Date:From;
	b=e6vfWlALRWPXE//g2KNiWTMiP+sz8SSNZLjKxEty4ce0bjbOYnbZ8Lsm08JQpbDb9
	 OkFUZ/fQktDBwd3w9RGJlNJgS3hMWviNAYba4GT4x/1WZ3746PpL8gYaM04w12HRCI
	 DpRsM8SzU/QtQgiPM7l5UoLZpPxIS/ysl8nSmfXMC/W3+vGS6amW/Wh1TLep+do3bz
	 isrpsijfP2AxVBcc8LYnio/SXN9agRvXDuvm9JEMeCmnQOnPm0nOWmKGV5Eb8IAIr+
	 dLpNEQ5yC8Yr3geN4mneQomXjHB1TZ6IPn5T/Zig3ubCZJtEu8hqUgsbVM7dt/Zm75
	 WxmtZRlBFqEsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DC7EA796A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026963361.29287.3352766119308821443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45786de67b3a85d50aee8a2d8d428d78a253c41eaff907f7a1fa854db24795e
Date: Thu, 05 Feb 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770269633
