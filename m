Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD8E621
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734048954; cv=none; b=rnPEPNgKB0+OXburMZc7xmsRpN1yaMREkWVhFOXT1Ib5T7aCBg/hBWYwc0n75pzI24D/019/qXks3oU1Cabz9dyEKJyutq8iOppjpo/P6uxWS2N1qrT/gSlZut4Ct5FWB4jorFwjb1bFNfdiRA4FULOGkt24r9g35FWCF6TvMh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734048954; c=relaxed/simple;
	bh=bDoXRhMjDToHu1smb5ZF45SpHyroTeajJa0HIlYf66w=;
	h=To:Subject:From:Message-Id:Date; b=ROuw1l4QJSXKkz+Y2ALZyEBWcpGzXcC5u+FhNCpNNaxXKSmjEIK35B5lpE0RAUqm/Cy+Ciwj03rPk5GLuUaERvIewuivNbB3HPxCIiF/xcpJLpq/GG5TTk9arUKl/x38bYP5yG59KyvRrrdqJb1LQwnE9SKs8tCTw2YvMXXK5y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edRXthWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edRXthWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FACC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734048953;
	bh=bDoXRhMjDToHu1smb5ZF45SpHyroTeajJa0HIlYf66w=;
	h=To:Subject:From:Date:From;
	b=edRXthWWH32SiqtJ1D+K2INJj9vl02IxkqqwkcnU0eJ3OX8NFQzGegRHdQBBsi/2q
	 yTTBpUVDbLCHw/h5enhDHITQTrQMxMcGsS+6Ncl71XEclcntxdxt79sSp3xdzeuc41
	 KkEpK/6Dxp9xwXA82aTxlawQyJu7XRVR48WHPnUADrGTsMVzV83bnVwJAYxIb+X8iC
	 TKObF6H7hibOVKU+lh5M9HQSGfL9uoslla/9oI9O6z9mGPFeqPJxVGrxA57Hlt7xW0
	 xDgQFECKqRVkaLFSMGsjPw9BX7p+9HyfmStgz9EyHTp2V7DNL4roqxu+qgcBBC5BDp
	 2cdKExG2WXuBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3F4E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173404895360.21449.3859774931474259950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb6e8423103a00377eb68e4deed851d248122c9d715b9aef9cd5bad7540d03f
Date: Fri, 13 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734048953
