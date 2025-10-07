Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC0318C02E
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759811994; cv=none; b=t2oW/G9wSbB3CyBGrQ4hC7uJTHfOXHKBHDYAOicH2QfiVGKdcGGVcRePh7H7fJl6swNMer7eFail2nt02VMwgqiUbyZD9qKJ0iLKGemvabNFyE/szV/FN5cKfmJWH93HdoUTUfTZOzHcQfacptJ8IGO1EyEXwGTUHPMm+oGT7Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759811994; c=relaxed/simple;
	bh=f+EtBmY2gptiRtsu+XTt+pfQSqYI7SgRPkysM5/hjkc=;
	h=To:Subject:From:Message-Id:Date; b=Me/ukrWImQuYZRzyQegLK3Gm57XwVfm1Gd96UlE/oNbEDMcN+ys1Aszdi2xgcgNUlAwXt/OWCCJ88Rl484EK3pNDQYOjeNTM0MYswZMDaYqngNfAtJyxEA4Uh1IoJjf6/KofiTeUI9zX/lbU08eQ4ExB5saMtpUK50nqDwVOwi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nn1uzDbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nn1uzDbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4736C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759811993;
	bh=f+EtBmY2gptiRtsu+XTt+pfQSqYI7SgRPkysM5/hjkc=;
	h=To:Subject:From:Date:From;
	b=nn1uzDbhxNQok1zhjtZ0UfnY7ci1nQuhAzGkeMrlblHyDteWr9CY0VDcdO/S2Q2+Q
	 1YhKaF7phwqj2CT+YYNUXKmkQlVxjuE22G6t6XViqrkNxdiueiBGdkTE+2qtDUVvmy
	 r2fgAxTlc83rP0lo76OpwB/Xs2UEXu+Z5ZUfiSWATx1Kxy4vK6b340jGXpkL5cUUJe
	 KYa2yKfphVsbogrKA9W7i80UD8vANidEP8F9yC3WgNDBYGR4YWX9JqXZfeKzt40dfy
	 QtGki/O+T9SKiNcvlLE1Mb9WdqCoVGLOFL+kF8xDNUaDrQv+VZ9SAiVrjPRs7oDkPJ
	 gSnTsFac7XadQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB75CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981199358.4238.8707459841446957600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6fa73b78dbc434c737bfb932090d6f1eefce975c006b72aa5a302ffcde06b45
Date: Tue, 07 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759811993
