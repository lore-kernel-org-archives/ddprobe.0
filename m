Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3330F25F988
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758820794; cv=none; b=oB0za/SKGahf8DyIqI6PXrCK31+mj9SQS1MeSNaBGYx/ETH9V0ZvNKQvaIPP8yxsazDJLGfgX/TCQOjWOaFuxFMbmhal2Nm9ESjankq49ALEg07xHbx2xsITpu2szr8qJIJAv7lWj1SBUa9yrDPLT4i8pqBjavPOceiS1I6FVXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758820794; c=relaxed/simple;
	bh=wQ+BQCI/ab1i7kMnWJA6tHvxwSx7CiswbC7O/Yvl+jY=;
	h=To:Subject:From:Message-Id:Date; b=P0vl6BzL+JI9XrWB+0M0iG0oW3CusjCrqZnYweo5hwZyTACCv2O+wVOj4LQS/DMWXvx3Q3MyH37Bo9FwUg3y7LsRG8HmVVLEZc2GvL662E782n3YwmSbKtLbz5ibzIANBnM/9fgLkJn6JHDZXYb7SQaKqvDMbvciqSBGDIbHJe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBaZrhzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBaZrhzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94B7C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758820793;
	bh=wQ+BQCI/ab1i7kMnWJA6tHvxwSx7CiswbC7O/Yvl+jY=;
	h=To:Subject:From:Date:From;
	b=mBaZrhzrY07e0lIBwcBaThzcoLtdn13rgFmvtZd/MvFVOq/mEVPAV0/owsySH5/3s
	 +44LS88xy4cWoATpya69FvAhJtYX3JcQR6ZfT5/S7geFoA3Lm+iDQwTmDePfpy4OTc
	 anH9taWkLG2OG/2gh4PPrF1FeFSTRJs2n5gIyDfTdiNdJsiPDYQ/bBqeeOoHR5lO8R
	 fnah08H7E6t6LmrY/3WGOm0Fvr+lGCkCASNW7ysetu3JCRCRTzta8JlyFHHKVOgVJc
	 FPNJ0//mR0MmC8RmqEOjdP4IyDmCPDznvKz80IU/Q1wBuilG+VT0UeGM/3voOr0a/X
	 yfeo4ELAYlR3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969D1CAC5B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882079360.15317.10568546585779087797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3adabf66c67289dd6c985d03c27a9b6036b418b38c6e0656979c12d8ba166c34
Date: Thu, 25 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758820793
