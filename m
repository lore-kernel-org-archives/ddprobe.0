Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC37E1F3BA4
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753732793; cv=none; b=qIr5TGNl2b7j/C5xLrbqxaCFIZ5HkaT/MOWTNrUMx4Si8+1xEjReOrzpgSAIwlkES5XpD+U0UiACO2eM17U8+HtnJrxbYOYtvu4jLTeLD9xlFXBXcMmRf6NIkF5Z6rz/XyQ5J9JUThYvcU4TjTzzQABItBfeLw3fc7xSx/EFqwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753732793; c=relaxed/simple;
	bh=BpMLCSBgQqWEDIpLNAVBRAMgePOW1zQx9MBzlzv4y6M=;
	h=To:Subject:From:Message-Id:Date; b=kTBR0ghyGqoYEuKAltinYa5kiofNYrr+En1PU2iSAxYn0urVRoTuWKPvQ1OTa/gQNTvNHAJ9ty21rjThNicxIXvs2xF+S/YMdFOBLke/7Kwgt7dKGqZooa/XUw72lRJoygjO7H6dQuhFQoiA3EP4AAhJiZOsYmaTxPoZvkfJA1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfnnAJPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfnnAJPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6EFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753732793;
	bh=BpMLCSBgQqWEDIpLNAVBRAMgePOW1zQx9MBzlzv4y6M=;
	h=To:Subject:From:Date:From;
	b=nfnnAJPmaQ0amrQM2WikqKD3oYrmDzJUHpdGipnDHWlgTq6nW4wDs+YEtUT94UxgL
	 SZuCjGYZKKmP4t0bai/dqM7xWRPe4XYRVho9uarHNZMGcWehsf5SPcojQgTr1LKGLU
	 YEDMzjoS+6sGMfCIYY9NZK6mk0yyV5NGOs7Aq2af35N5tUTz68w0IgSC3z1T7cKA7d
	 fZetq1EYRTso/GNIsCMfDCEcbh15+hiJ1bZOUasLq688nSylNmrGiFBpNGmCMUqEBd
	 A4OUK5XmOtNJSSZZEEjU1h89KAAEW6+TkgG8tCpyRbHFGJDA8Hadb33rJiE0NPKZx5
	 TIlTj9y4/qX4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F463C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373279357.10481.16985634329879736920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22cda1c2fa051bfa4dfa98a21725d245540eeecc2c2d1f8e6665bee62fed874
Date: Mon, 28 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753732793
