Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581B5288505
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786417834; cv=none; b=mBnZdv75rnA4wzpLE4EfS2+Ci+0zHeErLxNECeufAt9PazTBgsiANJwjFhF1e+LuTcece64Pi1DiAo9mnCmBA7rLqHTJqrJSgdklfp1bZ63dqNe+AqozzGSb4CH7axvxYqrnoeAeiL0hgIidnzWtTy6vpYi1zy8HAXpJBUSkIG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786417834; c=relaxed/simple;
	bh=SF/eLSWdTRQ2bSaPfNZaINF9Ylk2K1H4CfUqZsYRQjE=;
	h=To:Subject:From:Message-Id:Date; b=mvX7EQcRk0d8/YXWxU3C8nJZLAK60rnGcBtF4trrw9Geea6ZQxbyOHAUCViP7j2wIRLo82TctvrIiKI3V2xm9759lwOFfNylj5ZCHBsnUx9FgYkuWjLkwIH0dBVZiGBp0YKgMbvmoFw6ZIL0d1BHfdV+4Fa6Gu5Un+bMWPru5U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTm+l8Jh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTm+l8Jh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF405C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786417833;
	bh=SF/eLSWdTRQ2bSaPfNZaINF9Ylk2K1H4CfUqZsYRQjE=;
	h=To:Subject:From:Date:From;
	b=NTm+l8JhgwQYgHbJUPOc8wbe/UwPXP1wZgyzSXsICVZQygXVY7JcemMFFn0rzb3yf
	 oq2DpWW5DjxFWA+cLxVYFGUGVElCkg63iBXp6fn6kYnP3sA0epSuvvANDEKdimnebj
	 za+883XxMJl/URvyDEEnLGOoVPMd1aAM/NSfWOF3+T3Wge8b/l+t41IkiNHWY9NnQD
	 oXelMV7JnStOPRboeik0V7N7pgCZ2G6Yfb6dMJraDS2+UNg9ANSCyoVu+HwRNWG9Mg
	 +d3hyb3JNVdjLKV1pMhrlJyApeNq2QfXtrIEVEPMSQRuT9w7Ir64NDm5DlGr8YeZlE
	 RDNX+lceeCVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEBBC5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641783369.30344.17530167057459356089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8980bf5dc6590e3fe6e06d4858cf6713ad7c709eb7dd83a44cef4717f7b0c45b
Date: Tue, 11 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786417833
