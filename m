Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112DE2F261B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758047394; cv=none; b=XNSbKU/w6jy200ma5H20RewFjO/kVwuAKxUyKH+8l7fN5OqiYV1bEyq4OOYoMPGVPVKOvOMWsYPucbQceIjgi8fh5tIRDEAfFUxEuUUnx/f7AnMK1a+inXkYXikmpixnskPiAmoT4sBeqqGvwdsbk/WprhggImXiFbXzQ0WfxtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758047394; c=relaxed/simple;
	bh=dcrU2ENgYBgv3gPd+EJAXKxQfmsQOE5CqF0Ss02PMWI=;
	h=To:Subject:From:Message-Id:Date; b=gs0nDxiHJXufjNFBAHWEvP9+Ofs+ngkp7DFlTsYwhIcp0VqY46IR/iaLNRwpjmMOgAuSWYo4+Q7zW8ZX2Yf8sHe9VWjFsLsWhC8wMA95oUnNsIktkogAGAkfbI8b6CoHrpBKbU0vvw8onlKH8IiwbGgtPNiC/TaCqnGuhI9p0Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAr9cnZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAr9cnZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E212C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758047393;
	bh=dcrU2ENgYBgv3gPd+EJAXKxQfmsQOE5CqF0Ss02PMWI=;
	h=To:Subject:From:Date:From;
	b=WAr9cnZy21np9Ek7cIEtkQ42AGsM9loBX9fj0kh3FbIHopHV/qpNWUttkAACaQF46
	 liagvyZAk4xJnUtMsAm+Bk6GDg5p+V3pllRxeA4VZCmNODBP5N/BOFH+2D3xtp9FaN
	 tjkqv3RFXosVHEDjVFlxnlheXQHoITKnFgNn6NFxSXWcMd95aAJqdlCist226Wx2rQ
	 8kMETlb9oHdiLbyeMXRkYZ4x48Nep4uP3c/t4v64M89L9Ba9FOb7wU+QPzNaDX9/q8
	 edP+S+7eu8lZcImKoAi8HTrbH4PtU1HV9NivxjPrRMRfQu2SQjNYWzDtfTWFaZ25Wm
	 4tOobSFRdnvlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3BCAC59B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804739358.5587.3960868379451635625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0905671507834ff4b4ed870b2774a84c538a2d866e7b8f1dcc357df48e1b92f
Date: Tue, 16 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758047393
