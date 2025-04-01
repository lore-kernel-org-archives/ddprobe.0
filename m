Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380B6EEDE
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743472194; cv=none; b=ughkjgGos2Jczp8ZbLM1xBi59WDL8FcfROKwRfoyUlFvPT1jfS8tjH9j/l+Bse6G62f8Eprskm8d4sut/8CP0eUD5HwIyBhLV+w2TgDkL5M04O02OWIRUA4z2UxxvdDICleukChd/mz5i8aObHD1kaO4RWR/74PZeTtXhRU28pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743472194; c=relaxed/simple;
	bh=cOlXUvET65krGLB9r0d+b4ta1uejg44x+CzV0/DUrKw=;
	h=To:Subject:From:Message-Id:Date; b=ffejuHySC5fZzsPWBKx+n5v85ad9knFMTHWaoBL0k/+mAG7v8NDJHfE+Hxv8TEJ2oHbPgob75drz/sswkKu/gCrY6aDdvhlO8LxxhdH6y4NejIHyEyNSbZXA7tFQgzfJSRzSDT3pAl4R+f7/61EymQdlzP2uoFn3HAvQjjl2ZCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiF0BmY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiF0BmY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF5AC4CEEA
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743472193;
	bh=cOlXUvET65krGLB9r0d+b4ta1uejg44x+CzV0/DUrKw=;
	h=To:Subject:From:Date:From;
	b=XiF0BmY7w2bL5/bhQfh0Dg/0fj2RXZTkCaR2lIWd4K0/cM+b7WbL8i1VMbM9sUQ0e
	 XmTV33BJ51+SL/xyWH5zhCOt/LWJLgQjiPNZdMlm6JtAk1Z9WeWbe2JTuQnhpv34C+
	 DOXGwReqcGBnzTNFZErJDaxHDuTrCcdqOCIAW5XdZBSh+NJ9ZG9m56Jcvqay6trRCH
	 facyMaeGALJJhbwzIU075m1tT2nYyRCPMhyk2pUaERgmvLVhodDR1XKm6qHfHieoqX
	 R5fDjLGs8ijBu48moe3NR5Z7+Al6WI0jkDEOfgrmemXX5QiCbdVsnVxwyAWoft2kce
	 TJ+wGSVCLRiAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EEDC3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347219359.22434.15534408029195013312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0295b33ca4b79f0ea733c207e05b49f72fe74328077e2fc16fd04339a9d2326
Date: Tue, 01 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743472193
