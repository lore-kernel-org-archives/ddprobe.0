Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BC8286A9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753754994; cv=none; b=AxVkA0r3lPBJ3+iGvFCTJ1L83rZ6PhzhpD8d49oJOcM9YRB4UvcJvL1wRPc4xADhH933sYKc5Xz1qOnQUVQ/2/1WP8G8URjkUS9or78diErLSjtfK5mkbhtdNXwxC5Gcn407qt0GaLYuIOWMvxLBxKtpKmjQQyIjTxwtxSR0Ixw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753754994; c=relaxed/simple;
	bh=3zHotBRyFRAXXaCasWDN09/tRuCYHOHtRqFCk5TKH0U=;
	h=To:Subject:From:Message-Id:Date; b=jS10pV5vaEmAuhUQ8C0ex2lRsaTNd/iHyYTfB4/VtapVALPOt7AMo44zbxDgSl+3EeKFDQWDcA5sMVmhLaYNmXoxqt6wwXRccIEkDTLCIHiP+T0blbM3MZb1ZSAkAKYu4UT57UdEYOekiybdhhkLWgF5DrO9ESv/wao4BzlntN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFBcyTPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFBcyTPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753754993;
	bh=3zHotBRyFRAXXaCasWDN09/tRuCYHOHtRqFCk5TKH0U=;
	h=To:Subject:From:Date:From;
	b=MFBcyTPWdBxgrP4M1wDlX1X1c8s5ihP/iY7mr1SZfXtwYEMe724OMNEi9IBb2qE2T
	 wP9uZ+FYOuZ6dtY7WyDoJLXPGf7mYkQFhg2vrYh9i8s8N/Dfwbdd/qHj3gWnL7mHBm
	 +NOzqGfmC6dtRTqhgBd2i74wbiZqDGF3JeWBLsHLfe/N16RU8VJO1GthcMaWO2UEfd
	 15lEtafGUD/iAuPlPcYAkcdQc0WY+UkVzwTGTLDAvF02kZ8/xtRKUr++brWhlI9Pco
	 keXTt0Dt+9xsNwQjJZIYHpF5NsaRXNPBqdZCBi6IczhPH/cHBuyDgvotQ5FrsGfqOm
	 /GFMst2ZuxXmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB6CC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375499357.9512.17066599753128678205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f179c63cd122e6a4a4366e8348c3e74c12d69117dd8fb457c00b78852c9f2f
Date: Tue, 29 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753754993
