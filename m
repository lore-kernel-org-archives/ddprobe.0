Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4183FCB03
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781094334; cv=none; b=pckYXlx3/R6iwuZX25NJ8+JpwLU8ynV1eUsgTISk/6v1SGvfs1OqtkvuIPvG/sZ9vlwuLxcxgkTemQf5yp2X7LPI6VPMNh3RGCMhZ/iTyZOSiPBv2NF3Az7yCBoQoAik9IPjpGcoRrXh56+fdltBa/VzR80dtFPMW82JUmxKDWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781094334; c=relaxed/simple;
	bh=T22FAfVud/yaTmVv6ZG7a1bUh1ys5iy9r149O2prH7k=;
	h=To:Subject:From:Message-Id:Date; b=f5ZiyUUOUGdEn8wAANHC1E+wP2BLKMOGfvu3QnSqJwPADvY9ZWMwq9Kjmb7wiQDeo1RjFZAwHgRAnqTiQg5gFyuAm/eRlxkbzf3Z7mDPsYzBzx1GwP2Z6p6YLoslu8sCLRmX9w3rcm1elg9qT7VYYTvBDAWg9WJcvkj+MDLDR8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRgDDhMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRgDDhMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32F8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781094333;
	bh=T22FAfVud/yaTmVv6ZG7a1bUh1ys5iy9r149O2prH7k=;
	h=To:Subject:From:Date:From;
	b=fRgDDhMIJ29LbDD/0Hts8LXjAMThAQGJCAy8g3qp4hGipuhojIWBm3Z+uM2Gz3+n/
	 Z9oaxeZAY8l/UlNsV9/GtWCrrg24jfxDDCVNidN1bJQHIsVScELSOd6XYsO0QyOUp9
	 v4to2vTmD9Nv4QfNLUajGHiRD5rZdNu5LBVmv9AeHjRSxCIpJBUrsJHhqvUFrB8QML
	 2of46Gz+LvOxsTIxfSe9Wolgkb2WzfKBwhaaMbvPPOfvD8kyMIbm0+g0OaKzazxXf+
	 mCgIwjtTRTAt+2VaRgOzH1h0tj4y1ktLbXPxAr9dT8TnFbCF1+cxaGI3HdScVBpOHY
	 xl/mNbGRiWD3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97ACCD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109433368.26990.3302820416142091203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c41572fbb659e459c057fffbc825cbe675f3aee2207eb004d354a37eabfe4d1
Date: Wed, 10 Jun 2026 12:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781094333
