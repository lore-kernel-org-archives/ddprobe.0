Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C9E271468
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773138894; cv=none; b=gU685Vzq+hzFUtl7uOe1hChoTsN01o93SKT1y8wsYzBOquub/fXDMhv8WuC2DW/lWVbuS5LLORo/1CYfWGpWlRfxjNOUsIQUeYR+ao9B/y6Q9sUUHwYGxQsDgbM/Xo0jvjsPsIetstZVXqepuUmovg40iTVBhBoI8m59+oOtR/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773138894; c=relaxed/simple;
	bh=rh6jUrcoVNp+pad1mu8krs6jXhzueZgmSZRuFk+3+HQ=;
	h=To:Subject:From:Message-Id:Date; b=FHb3e6NGXASaEH8GjcYofHxv550yMq0sKrTAboXzujIMfavInvNr3/H9Kj8lLqTxBo82qhE2IvyFwTdG1mfygxRZ06wx3rEOuuW9oOlttSk9RFaJPbM/ChGk8NSLYzAwpUIIU8WK+TmKRkRo3mDg+wxJdzjCsLfJOjiydDy9J4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3POaUgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3POaUgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB0C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773138893;
	bh=rh6jUrcoVNp+pad1mu8krs6jXhzueZgmSZRuFk+3+HQ=;
	h=To:Subject:From:Date:From;
	b=Z3POaUgixCDn5NcGQ+ZKXZPCdeO9VeclUy0QCPj7T0DVVYPMJBidqpx4i5ETk/TQj
	 GGpmMv1nyDDsdd3fKs8rP2D4282aUClr0BdlHSwhY1+QR38o0lnjj0T2lMlMVuILiX
	 liioZR3Ge+9BHbFWvimXAIyIvRR3I0jxpRFhGXSy7+21Pt1ARI7NUKvdr3EDtJfE+H
	 2wbCTibCISQ1AurviuvxgEs0d/noC55ssNeiHutXWKP4rgg+QvrfvE/s+9vd0AS0lm
	 jkxFtJE68cHy/GqOx0gkR08YQiQD7C1luZ43dr2cGyedlTd+B9hplmvdgSsB5z13pT
	 pyDAkRJMWUqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F31FEB1049
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313889357.6722.14066299581828309584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8490245b48c041bfb2060a7439e4ac7e851eec07466557e6c5c296d2ce63e6
Date: Tue, 10 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773138893
