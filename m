Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10996392836
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774613694; cv=none; b=nc9bG+VYPI5AYlu3ArxrWD7vuXUjwdBpGV7FBmBoXV2cJ2GCyx7TV5qfAd1usy6pb5vZYU77LVWruwrqxs/4ryTqjUOA9LS4TqXGyDjeeh7ukgN8wlauaDhquYtwTdfufaQ5Eu6K/ZZAXYIXrxNXYJqq3HPmgWzNiPu9S4rqANU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774613694; c=relaxed/simple;
	bh=4YZPKImONBVkaXGaQqQtMCOugSNwmLjDSPXtUHV8F2g=;
	h=To:Subject:From:Message-Id:Date; b=Xc1qwjYaHTiVYSfzBQU8Gtkd+xXJKNhBMd0nApZjubIK/BmVXUywBhEhfaFvkZrOly7b6c8hENTxowoc0EmG2OnHebDWOG98SE+JH7yqXRGSxU59+FV5YsTG29DE5AKTCsXSfTCBLmuEmYu3OijevnBZZw6bfmb0qtagbqrhBnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjE9wrOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjE9wrOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C5CC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774613693;
	bh=4YZPKImONBVkaXGaQqQtMCOugSNwmLjDSPXtUHV8F2g=;
	h=To:Subject:From:Date:From;
	b=cjE9wrOlBeHQ4Tp3ZgMlk1uJ0+pqa+EpBunRrDoVr2yz9IJD9Nou119rAnXXZXEK4
	 7PTD9LtvPwC7Ym1eOtdPbkKgfkOxhaGBJorRc456Jg5cFJ3osaFyRQcX8raZ9uuJjg
	 MCAienZdEo2w3IBJMPMSQAw3BAyJTdgsCYpvdURfW52LRNPX4g7iVYMJ9YPIkH15a6
	 y3dNq7vU+xJBANv4PIMTb8cjeysCP6fhUQyrnzZCb//Mq9rxElyjTqQ4T3vReY3aFB
	 +XpB1RJqmenu0GJWTXYbACWENoUEDMMCN+vM1mMM1RptZ02lBo5kuOditM5vtJZdgH
	 bBi1AwaNBwRMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AB410ED663
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461369358.12459.3175297179844610300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0643c997ae18c0864ba3d87ce446e2e778787872f694ef19b6b08c5ac76d0ca
Date: Fri, 27 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774613693
