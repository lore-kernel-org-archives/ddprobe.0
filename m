Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84C4344031
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790553634; cv=none; b=NcBQuPYwr8zVpuAsL1C36ZRS8SVdDtKXbpfSQsWFwQAnSfkASzk5gh9B6CKIxpwZSJN1PY5gSbP/wcHZ0sqvC/LllqsfKKYbqz4iOJrcTNOEf2YGuz68LY8JiB6iS/tJLp/0Di8ofBLa5BHKsPD67ygyP0GK5rLMZ5ayPuvGgfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790553634; c=relaxed/simple;
	bh=XO2F5dzsVsTq01oaZ+kFaXp1dT6+Pj4vMgo42BJwf+M=;
	h=To:Subject:From:Message-Id:Date; b=jEmj9hu77km2ciRKxhnc4l7FXxpz0PNmqcDFBi5HpAl7+tq2hmTNMw7JjvmlD5bA7y17NPlqfKZjAwz0pNNrjGkoqh4tUfjOQRAwG9c7ghbFNDw9hNImI1PfMFdKa6QWv1iUSRRLWgLFQkdEaflaXYrlRwX6WgN955cGVizUk5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oo9XnaXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oo9XnaXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B8FC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790553633;
	bh=XO2F5dzsVsTq01oaZ+kFaXp1dT6+Pj4vMgo42BJwf+M=;
	h=To:Subject:From:Date:From;
	b=Oo9XnaXIN8AQIF1KYpjDGJbtIUkCLsOwGXU9qqwnOSVIb32r/36DR/y8lm0l2/nio
	 NIgE47ut0rcerBFY0r6XiS7k+Mrs0LUYXH1jO7d993XUsA1gvL005RxaX8fU4qM5Y2
	 FWqtp3rB2kzupbJ9mEcCt/OCqlfr6ueZJWh1/ITj5yS8Scl+d+wIy8WWGsdqWZtYrB
	 AdpeRLCa4yWeOrRsWAozivsZdB/86aokqbA2O45U6rJPoUoCA0Swzh2QHzwShtzkNK
	 shYV7uB7wtcyno/rlDDtcq8jf0dNYmOLwxxWVxSRQF5f+vyrSDp6BzPWeMtRvLElxa
	 cHdwGxhNKG0aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB65BC9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055363374.9952.6616638861703138288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5669f2517ec7faa0c640de6d001ea38a97fa9ddbc3fffff2d01ac228149a48b6
Date: Mon, 28 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790553633
