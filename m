Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007943CE4B6
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773927294; cv=none; b=CaHp5QbZURKVncdivDbjy4Q2o6c/cnPtmtQqevojT0Mkh1xRjBJ6hBaCKmwdrsJUci2HyNUC1mCgaPWXcd/MGWZ959fu8V70Pggd3NoQmwDRFuLy1frsZzfowBPJYxpV3hrx79zYzoAfS9fnzIvK29qIEDFPndcWzedYwq7Aa3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773927294; c=relaxed/simple;
	bh=SDUpbq6wtqO+UQQhbCk8TbiCR7/3+wMuIouLJQpX+kI=;
	h=To:Subject:From:Message-Id:Date; b=DBxeP8TpJnY4bM1fZza+UU3GshZYoWZs4LJZLLtXxjLV1Mr6J3UFUhcO4XrB/Fi57qjy/Rn0ygwNk4BssC7ld8RtbF8KGag22yT7X3qAfxDtwRQ9Isj19RDDrrUc/kLO0okUzvr2A9M97p5BZvEffaSexevZT4itmfJRFkrWGsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyjH3vC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyjH3vC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E503C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773927293;
	bh=SDUpbq6wtqO+UQQhbCk8TbiCR7/3+wMuIouLJQpX+kI=;
	h=To:Subject:From:Date:From;
	b=AyjH3vC/h8Tc0g5rNTEqxn39kdTiyYb/p5P9/vJqB9YnFqv2uXrAWdcfYHKfaLLir
	 98zgBWJ9VDaF/xp4tgLYN/Vzoe90t5K69k5w7EBscuU34HQM7obinQAx1j6rg13Vmm
	 KnElAQ1rGnQq3o6YITKv6GroBS2zEhUJZgGdJecZEXHkmYMjft7GzH9hu5k7G+DoEL
	 mNJmu5y7BejuyHnMhJ+NtdAMdjGn/z9N3zCg8gDUWh/KB1FLbQAcJTQmHAhSeGZjwN
	 yBInY8qzbSOR2Yci/qn4AIkM+Z+NLAZY38CPcghPfG5mv7wBm56brTsWeQ3fQ7+NVO
	 6dyysHuwbyAkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21E1090220
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392729357.6466.13754198745527748417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3950105d9861963e43aaf0efd38de6245e4195607a1fa8a90efc3063fabbbb
Date: Thu, 19 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773927293
