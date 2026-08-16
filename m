Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECC828E0F
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786894234; cv=none; b=LJ9QqP7lBPL+2x1gs4uqFf4BkgAtcTSyUN3QALBBTsA4PK5cRFvUMCadyvjZDheFUSwrWH868pgwCDfnAdxv0on3baUexPPaLyhBfYyh4VzKaGxUDUbPoOJPL+S4DpKYdU8PbPq+MoRYLtGgDj/+A+e3l7TOL7lRG+Mv5NBa//k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786894234; c=relaxed/simple;
	bh=OwWEM9kavlLGEDnz+XlXnQFDp87K/WGty+ahlyTJAkc=;
	h=To:Subject:From:Message-Id:Date; b=f68RYITD843OFOayPgF5X4IoK1jkDLE/pWcVl3j+SHJgdENr+xOONSEqRE6m26+thvP9fO1RuXV++NjqD8C0lHcEaLadXSM2z5l3BY5QvmAHDH15S8SabWx4dOSDZqH5mD3FLfYcXlGzmvKApncf0wHMhY8kA9WLXNAgSKCq3es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtalY9Dn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtalY9Dn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E56C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786894233;
	bh=OwWEM9kavlLGEDnz+XlXnQFDp87K/WGty+ahlyTJAkc=;
	h=To:Subject:From:Date:From;
	b=mtalY9DnPDnUTuDVYNIeEE/vPOBOT2a3S96Pf1VkY4dhyFgNfv06fwy0Vg8obmV4m
	 uqIyExIZ5ueTJzJD6DEsoc9IB/jGy+bBv2HLAXrcqaGmmXXfRiGSNRW+MLvXH+MB4Y
	 ZPzlung9jIGdI5HVNHh8OErmH7miiMF4OSsr+C6Waw+Vl9PKZd5of1XysOyKKpM07p
	 jN0D6Y84Sb1wOCY8oRyaf8zsOJ5vecurYZW+ASFFMhaLQxqA0WHgLR6d1JmDBLei6u
	 aTAbX5WgPONHE7UqvoEijGEzr7kGmIOx8CMIBc3WMwCc8wu2YnheCDoqaAg3fUrudE
	 zpY8JIH3a/Ftw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC57BC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689423369.2022.6660529073361547751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcdacfe6fb3c86bf33efa4322aee3ce934c5debe66a93dfa6bf7f301fe1c5d1d
Date: Sun, 16 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786894233
