Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813853EFD0E
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784976634; cv=none; b=bPzUDNDIvnrMh1dRjGXrfZf2BA5T5EHN8hEbrFm9mOaAEo2BWZUXZTY7arRTFy2AHw7P5J+2h+JKVX4bS7He3GhYV6nGHndh9zyfGA6zuz80+tr6eLxjUH9BolgVUctm80KAZZdZfq7tcXqhUco32m66pGPz/r7PHZmxzvae/Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784976634; c=relaxed/simple;
	bh=6b5SPkYVJYT7rT5vO5hrTQ5/hkUC25GG0ju3zmJQJO8=;
	h=To:Subject:From:Message-Id:Date; b=jdzPKEOxgLjg83mMrY5Otvixr5WfsSw0Tj6CLaVG2FeMIFCkpP/eMQKPXCP2cw4Md1oLFniML7b6jSNY3y5WXLv0Z39XlS72VJlGpzJNB5cmq0Lc6CmmBvTYE5zgYwP8Hz3Kw67iBEJdI5ecybgzibXxrMeRAQN/6g9lAqpb8LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ov1m/Wu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ov1m/Wu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AC1C2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784976633;
	bh=6b5SPkYVJYT7rT5vO5hrTQ5/hkUC25GG0ju3zmJQJO8=;
	h=To:Subject:From:Date:From;
	b=ov1m/Wu6ITXgVlmeyig3fxRqbKL0x5a6SIoLiUrK61SPFocdr+xvEKNe3vwOcnAlt
	 9IN7vZz1H5mXm2GVh0j8Fm8V4i78Q78VeiA180/m3rR+8Pqlb6wI9zgVRHYzbkG5WJ
	 9ek8/WHnH6ITRDamd+WGPZJtIAnmtgxWkznaoOqrLP53Z/CtRTqU0oLIEPtNcvi7TI
	 reLIoC2ZZFzzOfZ12wS1bVS1CaSsxITHoB9EgA71KWtnnGosQ8+dMCQgeouRHww13D
	 TAkIP7i1czgFGSkskdhd8/sunj7KIaOoDAGfPzbuQwMIZjNzB9lBg2MEBPaBhZe2EP
	 KbmoYgL/ROpgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC9AC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497663369.25066.13430847683758897955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35e7ce5f307e2626ac86a941a0c8110eba758b2c53713d5c4d0e1aa499fc402
Date: Sat, 25 Jul 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784976633
