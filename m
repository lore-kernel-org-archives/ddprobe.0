Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E17262A6
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769328234; cv=none; b=RDECe3PV6Gga9Hpp2GGtFLC8OZpUwCrAi8UNwNooAmbochKMmhvPO2/Vr5oFkHhx8I2o91uusTAE8CA9+6xxJeKsww/x/Yl1u24mE/UiuRCnh4CG2wELLUmZEqcXzHhKA2Md5g35+91Y4cK7w59DXfZ9PVBLnE/yPnUBgPaiV6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769328234; c=relaxed/simple;
	bh=gk0B4X/3TBdLsVZm3SFqq5d6HJ2fLvDm/G+2TmuyW54=;
	h=To:Subject:From:Message-Id:Date; b=ln56SWFVrDqM29Eg8wa/poiLhi25ir7MAFG5frRx8esabApXd51sroEyLFDyBAv7Rd0VVgWekp99Y5IMEcmGvZNMi7CHHmEoCnM6o5mLAibi/bF0ohky3NTkq1AyVwiPHP5kAW0DEAL4Z2vFnd104C/JsZKjtN0saGxRkwc/dWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGt63B2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGt63B2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7319C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769328233;
	bh=gk0B4X/3TBdLsVZm3SFqq5d6HJ2fLvDm/G+2TmuyW54=;
	h=To:Subject:From:Date:From;
	b=PGt63B2q/j1chVINzVslV2snhfArqENY2XxvgSqdXEp4Gy3jPzQqJjYHfWVZrBNjZ
	 sZw8X2J4U0+uHmfZf6mAS4z0RvGyUFytK7cUEdi07JPbIXqmpBg93PpofZfwbneK3M
	 lhRdLO/bmdbrTvbdfKGKgnCPkkpPa3A48rC/d69MG+wxTOIVRnKH6TsBmWi5l/+jql
	 yEoyke56itKz0FMEbxjQjwMYj4ZDIjcUZiUqV3xpF249gu75OFk7hDEYwXoUOgIsUb
	 Q3xxf0bzKsfmC5ixV4ZiB8dFmt5+FGd6TB2cKzy/mPFJmD0hHgGVL80ikGYmyRIzhB
	 ioLHhu1NGY/3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92635E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932823357.5144.501418798000380765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2314f448dacb47ea0b94b3ae48d91f0be8112324c256527557a872e46eb16980
Date: Sun, 25 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769328233
