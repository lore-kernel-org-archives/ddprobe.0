Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3948334DCE6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775143534; cv=none; b=SRIctMY6scyYUJTGz+z5roo3i4XlMYHMnDwkMec9kvV/qULItmT3Hk6LIYX/xKBfV1esnm6r7S2QKKl68lumhKrT2lMGgij6d3cK5SpJ3MBYOZ8L91ZNIW1Mh5MP4iJnETAc4rs6ZMGE7SSSFMzsOkAhJ/BFwUeSRmP9CYOtWRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775143534; c=relaxed/simple;
	bh=JMmYmjrrwf1SSObD80n6cN+YU/v8T8DfUapaYyfMULk=;
	h=To:Subject:From:Message-Id:Date; b=lECm1kcU28Sl4pqCDVdYEF7Dg6Yll6k4FlNRNY6QYon9U/l3gu6RMpWi4PIwn20muU+OIDonxE8yiDLVrhzfjfB0x8K4nJndiIHxPC6ixOjtCi04KCOFyg87eJlLRE3hNora3qh3BWF8hgBHpWQZEYdGx7H5Xgdj/xLAsJWGBFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shl+P9FU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shl+P9FU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32E5C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775143533;
	bh=JMmYmjrrwf1SSObD80n6cN+YU/v8T8DfUapaYyfMULk=;
	h=To:Subject:From:Date:From;
	b=shl+P9FUQf3FJNuSC7hfnex6sRK42BN82oMShzVVlmfeKpN3iUxa1D34F+Sxcamvx
	 +LpucyLgzT+wq2GgQjVggWxdLum1OSvRWyUWpgdWBxH67sWt3qFFZtucW+KQYOStt8
	 05h6UGglB+OvRWI9Wk1UCND74rnXtGq42qw3hTCkmQVbHHTV69R0X4ppv1vB0Cc01C
	 HesGfI92cgU5+gqRy1m6GbSUipvTX45S8VelM8K7p5phSCWsmQy+kCFnMAohRN5r67
	 Ed1hYoEzwaTnpcEpFLLtXiFmmlTUsQ/9B/unHXoo0nIWTZlHnZolLkVGTP6c2jmF1a
	 coGr2j1QM3NUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB941CC6B3E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514353375.6618.137417473088488233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e54a38add9d441edf6f72582a361411b96156a4a9bee7351b621493761fef5
Date: Thu, 02 Apr 2026 15:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775143533
