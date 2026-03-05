Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14700231830
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772672694; cv=none; b=Qagx/zUIGayOLGRNzEjkUs9owinSJQP7/Y/D78IBk+kbEfQFhqVP0OuNQHvrWCVVpxPUSHYXh/mTeVZOCUWGMqTs2YLsDqqcJqRNECrDaW7//Gay4iWBMl3SykaEKjr0LPrvG5LBFcSRTOuXm3uLt4EBX+gvxUePQNFJv3ggszs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772672694; c=relaxed/simple;
	bh=K1B/gB1J9mQuwbr/+aBKoEUTe+7bGZQGQcztg5haQT4=;
	h=To:Subject:From:Message-Id:Date; b=p0SmXnCEnZVpKGqdT7IsdmSjROUyfJ2OICRZjX96tSNutzGf4QHVPZoBAAsUoUjtCxuK4uVAO1CfQ5Yqs9q3Cut4Zf119jT/rljGtYYNtMKYnn5JttYN+56PrAUCI3FXRAwyDaoH+VpkY6rFi36Cixv/vJmzBzXLmQpqSOBF8aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlOrJpme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlOrJpme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6965C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772672693;
	bh=K1B/gB1J9mQuwbr/+aBKoEUTe+7bGZQGQcztg5haQT4=;
	h=To:Subject:From:Date:From;
	b=tlOrJpmeLGIHK5YrnAwT5lDI2aQ8h2UuNaj/OLMJVbvymF50GIQCubK75g3vhBKq1
	 qGAACVau9BMfPG0tHCGJSep5OWGHA+I0uQ5KW7EfxhMtRXYLrL3Gtp2lbLSSRLDnWD
	 Bz2e5BjPE9DaLLepZnvUWDtNksKpuAWwR6RBWB4rlP7omk5nji3jrPdjFMJN+y8MZ+
	 gVeeMnaw/SqSJJHTCt09C6CVlx1GscPc2KPEwbiuc93vQE1b0BzqUXrtAEhk3MR7Q4
	 /squDgeBlcujZtHuZ1eAdhAuA0rYk/yg3ow2VLcdDh13RMLwg5aiV/JOnfaHhBTXWx
	 5BJPFFXnRoxkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96301EFCE53
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267269359.18098.7032673961299231690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66fbf52f77823d6a0f6b9e8602602cb02eac6746817c6c3c514d443699064430
Date: Thu, 05 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772672693
