Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023C1390999
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783150717; cv=none; b=kvGuadkAwVOmwRMmXaPtCProZwUPmSV0QfeiDPyW8xFH51AIL2LrYF5lDbCagwuYPLiGJKlruwN56h2kdeSKlixkc8G5etXlWzOABVBKj3hnKg8ZAL/3mqA1soOzzeL2RGXMOQjWcVUbWtZSkhaF9KYjJyk4r2Pf0nZoV+D+OMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783150717; c=relaxed/simple;
	bh=5TNG1KNEb4uA9MpCr7zGVGVxigoQlhhQWbyfAplr5yo=;
	h=To:Subject:From:Message-Id:Date; b=H/uC8CfW9CMCwPilhH+MlObpP/MveDZlhLoFe4oW180PsMn06y1bNgGTV1EXjDPWauNQxV6cR3kB86zrNnXUnWPo+7KJ50XxZfB7OQG3wY2f12rCWP4xV4w36EMERtXhF348WfHbUHtRBniDtOMSGz0KJXPrQV1e2HAIUsSPrs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvBz3QyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvBz3QyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF744C2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783150713;
	bh=5TNG1KNEb4uA9MpCr7zGVGVxigoQlhhQWbyfAplr5yo=;
	h=To:Subject:From:Date:From;
	b=RvBz3QyFbdP5ei+uSNbNH2nQ0Vg2ihpGBnm+A5+b/XOTmAxOiXBvF/4cCLRGehCz3
	 bHvzwdkwIdH5KpY3qr6BwEiJoN1PQgd7mIhwy84D5SvLFKfWoW9127lPhZ6cNItpG4
	 0kGRAnAtjgy3UhwW7zNOHJKzchUBHd++SfpcdnJEC8ZBtmCkEAWBj+mpaIsO6Rb7/n
	 vKMAF5wSnu5uL9KGnXWNzxKAvjNDIGGSXUvMS7wZmoHg9Y+SYqUiCX1eklyXFDmpED
	 +nOF4vebzgV30c89UCZnmHXCJvUeuUQpbgDb6/oGVMU+MYHgoMcaUexPI0AgCToJLV
	 kN/R3s8yus/gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0B8C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315071368.7575.14329667623832780189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56995c6c458fc9d5c43ce1dac5b42cbedd2ea597dfc5a0784c841a70de2f6c41
Date: Sat, 04 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783150713
