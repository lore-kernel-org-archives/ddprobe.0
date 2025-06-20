Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B02199947
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750415394; cv=none; b=aRszj24gtpaAhLlSz/2L5te1bqWhe2uMz+8rI5qKW2Vy2nR1cKJgigIU4uMMQN6rDSu+JZou5O3+8T1l7DREC6tZs1dUjiKUVkaG8BPZZ7yCo2Hi1maMm2hF4IrcWpOncphR7r2g3Uuo+hyooq5es5tVx/tnRcNWqhuFeHVeKVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750415394; c=relaxed/simple;
	bh=ag5kwB5O2Xzq58uCVxxs5tvKt3YGPRV2/YCCM2vCqec=;
	h=To:Subject:From:Message-Id:Date; b=ezD5RZ9m1F20+KEzC49eOMl8Qg9u9xNq+GkfV1Z6DrVJi2Fm8HSV2lT//eciFzqItpdla9cHtSExwmPxSUnysqJRXtscnQHhfXuu3Pi6uPSl4CKhoD1MNgdCs8+95QcgSqGgCF7OqZEY8kmMiBnSwYVFCNffVgYPm+pe5JcT2TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZqDImiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZqDImiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5EFC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750415393;
	bh=ag5kwB5O2Xzq58uCVxxs5tvKt3YGPRV2/YCCM2vCqec=;
	h=To:Subject:From:Date:From;
	b=GZqDImiZLJ28OqCN+M2H9S6OyUtmlu2TAVD6KPW440dk0zMvmeG9TrfZexy52/Rf0
	 PdPSJXssgo2Cj4uTR8Cvle6xzwFpne5KPR44nLSgoL15mv+XJ/FUq5tTFA9zTAqFXo
	 2v8GC5CCGkgzFeahCp1fRlIWmm8Z0HstDrgVdGYFms9Nn/Ttn1eEtmlerxrtmJ9TA9
	 WNDvwjuj2+MtBl2XstW/3lzqcvoGrQnDFWBFy2QmPejcao7cXBKEet6nAFQmIniPrS
	 IK6u7pq68A9PHO+TX+Lxr+j8ixWT0FifeiuWz6uJNsct+xTyIdDw4Y1SOSABvB3Ug/
	 5znkUOjrQ3jtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAEFC71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041539362.11903.12345154308914568490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa318be4f5b73ab1a681272c2711b95fd4f70383cfd02ad40e189c3814b3913
Date: Fri, 20 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750415393
