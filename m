Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DF847A6A
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718725163; cv=none; b=Zv0a8kTK4YaM4mj8WJq9z5zp/CaEGsah6G5mJGrTFwyYe2Ttumo9KoerLNoEU2cswVxKZYn9CZ/J+CBBgggfN5NtUiCI2GQxyM5NBQIFGw13jYQZYD7UBr9dk9pr2WEPgELNf978z/hHRdlm+8KYG+Qqx6sqnlQcsdzlRikXlkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718725163; c=relaxed/simple;
	bh=V5VQMzf8ued1Wsb219Ebp6tWKIzSWRzzfRcF19hkKsk=;
	h=To:Subject:From:Message-Id:Date; b=lU4Fm65Z7azmh8MQdgceEvLprtPcMWk5eGJBsrlhDCF66n5FXyeRLpdWpgj6J8NRUsm95AN1VE1/l5qwUme4cEFWiN3h8DtVl70JJOVKaH48Q/GxBpxYB9H9ucJtRQmIQlMkDOsXRSq50IdqCly4RgRbe+WxzA0G1CD8bZVW6Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dv4g6KaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dv4g6KaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA63C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718725162;
	bh=V5VQMzf8ued1Wsb219Ebp6tWKIzSWRzzfRcF19hkKsk=;
	h=To:Subject:From:Date:From;
	b=Dv4g6KaX4EYqwSxI6e+mNMVrpO3/nKLiXJgiyWnJ7b9bQZ+NwQiqwoMAVJNMxtxRN
	 CvRBDapY2+dbQGYjbxsSY1P/2lI2e9I09sCeFyNJjKTw82UGcj5i+nfhyMGoMD4Uqj
	 rFCyaa5o+fbzeKx9ng5y9wsrkvvr/IUml26sLJICrcTOSLSKclXDtTIAiUoEg5UciU
	 dB+xk6rrKqjR3rkne3DpkLzfbr4Lmb3duKa0wwKtBsFcyWEDat7OGVyYvfPi0X/M3Q
	 EwDWX2N9b42NiqU+uf8VytBQS+zKwpS6INtSAyZ8r4fKOB/LmSKYDD0lBaTfCNyyJL
	 1gdwKbEusNRVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FC0C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872516281.14487.7687966918108701413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a1266a40e1b66ee555643cab917cb6d5743ed0f91b2a19e97355ac7fbc35be
Date: Tue, 18 Jun 2024 15:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718725162
