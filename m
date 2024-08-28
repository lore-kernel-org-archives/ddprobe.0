Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EFE139D04
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724861754; cv=none; b=pLDBXW+aIRcGzRpibrEdYTRXBpXtEfYVpEse127DGtnTV2iyIY4f7DSbpCOab81AusJm3zw1x1HnciBh4w5up5OIW39m6sqRO5vpaiXGgpUO0HONZ9bQMEeEINOuseunPXbN2ZMbbIzNl6iZ4Yysz4sstPT9gh3I4dtgM9l/aTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724861754; c=relaxed/simple;
	bh=nZbEz4w6BdTESsPJn6QCg2HpqzzSl5/5qZi4C5H/XPY=;
	h=To:Subject:From:Message-Id:Date; b=n4HXYwfXuulE39zkh9GcXDT35eZfrhzLVF2U6kV5f2+cbL2BAyn5/tQ1AZFMaHz0Qq710Wt0X02kPECyTNEUpWy8XY+iEdZwaoNEUD0JLJ6YTLkkYAt8u+G1A2rAP1iBs6sjXBDaZzCvQcnNHH8wv6UScZev1ck1d6AcegNhPTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXksUtIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXksUtIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A392DC4FF50
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724861753;
	bh=nZbEz4w6BdTESsPJn6QCg2HpqzzSl5/5qZi4C5H/XPY=;
	h=To:Subject:From:Date:From;
	b=oXksUtIL2UKYlkFVdVa319bkRyHYZjzA760Coepn2pbYqS1QyBhhSK305Iw7srTgb
	 AFdXHMd7zyMUbhJHrHxRAKvXR3kJirwPbBC9ODvKnwh4DObV9UAJiLUEMhrJyEjXrx
	 HcMaYLkrqklonhP62avS5ZV1VJp0AXVgwykEqh305OyXu0uzs7Rlxi1gk/5QNpENTE
	 yDvW5P5KVjbtZUcVvt2W28xc34engcpMyUpfe8WwTQC+dTfGB6awpfobZ9BxCXIGx+
	 lZdcKYyOAqg44PMniYhTrFRq8BZy/MbXO3VAsu23oq+oHb4cNyj7J9dMFmvheKtgkP
	 IGS5K2a0oDQtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94941C54E65
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172486175359.24879.1095282218272695118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0edbbc52aabaf37814c64621e728e3663c665cd5dfa5b233e17b7d0dfcab110
Date: Wed, 28 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724861753
