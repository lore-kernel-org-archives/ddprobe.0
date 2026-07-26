Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4955026B973
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785071434; cv=none; b=soJoBEwc3NsNPO0eugA4flz+52UT/YCHADA83OOCqNK7KmYZVcn+CzwBoEsg0FR7r8Xm7oCsvYAeuW5b587DJwR4ycB/mSCbZN2eCCFBsjTWhW7w+M4rfZVOnSx7qOTKXMTj/wWvgt50GTaDcd8PNWUioCMwB5ttNNQTpyDzPps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785071434; c=relaxed/simple;
	bh=/9rJ5MFrRsfYi2bJdXwjJmVz6rQzl5clkkADEjsqJVI=;
	h=To:Subject:From:Message-Id:Date; b=hqZ1ugX+WrncwN0sxjznH1GpAFuWdbCcPsUOISN8p0wVJE/CZzR7WkNhwpdwr5KbUifI1VwE4UnxrYvq6fsxVpSWkDqh8xKe3Lpq9i/A8jiQM4/uw/ezk2mfIUeHJBfx4Im/7NFp/zJoTCPt2+L9225aINpCxT+QtSVmsaNXBrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQjW9liL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQjW9liL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE319C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785071433;
	bh=/9rJ5MFrRsfYi2bJdXwjJmVz6rQzl5clkkADEjsqJVI=;
	h=To:Subject:From:Date:From;
	b=PQjW9liLaGKem22AXib0IAuhSGyzIKhQRbMxmYjz1e9t5F6PIYuLV8PeJdidLdpup
	 I3uNisRA8QZCw2ZSeC84HwjCOC9NyMcM0/aBoZKjiWugbmwS8/xxRX18/QjhI2m8CN
	 OCsEdCs46Bu+U9pbuAsrELNmSJvPWIS0N8lLxgabgk5CKmTIFCOyOZyDDhPsjdxscZ
	 KQ2LPAkp+EBciPcC0kUGZCZEv9dKVlsPIWr9JiMYDlMB3GCii3yLmZC39b/apt3TFL
	 cPrHEBMIEfoPoPwhmym7hcijwYd/8+c2OU2bKRMpx6tin8AFoAy7TIF1exmeqGcdyp
	 w3JEJ2HlmdFLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC52FC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507143368.23743.14252311582510460295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5235ffc75e0b49e95f597e8cd56222feb6cd773022d78f3d755a6d793cfa70a
Date: Sun, 26 Jul 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785071433
