Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1188933F3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762145394; cv=none; b=Dn4Rb2MOuctYgwpiZLSlYrvrf2hi7U1LySh05NrUuhE/0sNZG2rzqRgdmtQhHpeP0okY8pBn/HLRO0zbskLwZWvxhpAw8UkJTVOukUOSmwOFBbPmWv/Lz0ID2mYQnTj1g5qW+lAdZw+8RkFxXYHkoc9ayuazwxgffcUQDBSndQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762145394; c=relaxed/simple;
	bh=eSsWE0gSGML0Baf+lLkgXW77OxsWIQxeJ19Sj+4aZyE=;
	h=To:Subject:From:Message-Id:Date; b=YVo5DgKsEbKT2wFGIuRoxppk+IgSeUkwXRcDrL5jn+nCOH+WNFDEIZQKVF1MfHWEwz4N7YVw1pZ4RXqrlgvSLGBmZuAr7xB5e/5dHYzftdRDel0F9kStTf2jrftc6INlBLYrbF8F+cBIRxFYq/OS83zTdNh5iMb2Q1BdOXbNyeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbNakMg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbNakMg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CC1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762145393;
	bh=eSsWE0gSGML0Baf+lLkgXW77OxsWIQxeJ19Sj+4aZyE=;
	h=To:Subject:From:Date:From;
	b=hbNakMg5gfbLdM1TXjeCygefrJ5+a42Akdl7Y2YK/KMZyJXUkFDY6QtupABLGxWWS
	 bZ62FktDbzGOBk3Z0qbcgxxFi375f6+97apHIiKE6xyD+kY1A/cKNlgJ3kgxmtBDn5
	 Uf6wxnlrEq/lOUGdYW7sAlSJeQGl9pz4nzsDlGuhg00n3VygEc9Gt7f8qNoy2m0rfN
	 HYHNkDDAIRYZkgkTAEvKGTEtYzjlvYxe8F2cWO+nIL4bdbafQmjieILzQVN0aQiIUw
	 pOHIkrWsQcqia8ZrDIWLS5zW96gedLLbjR+0bn42Rgt4KsEPEMOnrBEqHWdDSDzWLd
	 tRgeGWSIimT5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9529DCCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214539360.9470.5691348819963356453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8a21df9b1ad9cf464280a402633668012a735e0778a62aaf5616172d434284
Date: Mon, 03 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762145393
