Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8DC352C39
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777670254; cv=none; b=bvMhLf5fic3rUu6fT+N5+SzDMgTeislI7/3ERrt0zdoKAWRi8lGt412iiMJIwPJMmZKTy68WwBrtaxgJf5C2ElFExxljzcme+DqI6uHWrjQPOIzrEwxYOIs1XJYWK90bB1qhOH7pM1SJTJkr+EftZ3OTR+dU+xkPCryUm0UC8oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777670254; c=relaxed/simple;
	bh=fN7OxHaULR8g30Io2iU5SqkA4ZXB/MXc8DTGY3I9Myw=;
	h=To:Subject:From:Message-Id:Date; b=gIwvQ7c8vIpioghmhUUC87S0I8TPF7Jr48AiU7+W4kddY8o5yC/THoqHP/a4RXcWmcNG5u0Km88Zq3bjJ0ZMhZXqG5peJKLmcAYpMcNq/+bBHSfjYM4KaZuce/+dkJ+4bEQp1xqQ1mu+AtvPkljZZ7ZB9hP7mrNbL6X52B2jtwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnnuzP0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnnuzP0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC16DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777670253;
	bh=fN7OxHaULR8g30Io2iU5SqkA4ZXB/MXc8DTGY3I9Myw=;
	h=To:Subject:From:Date:From;
	b=QnnuzP0n7noVqGix+oWbk+L6OChIlVGIB/cL7l8gsbWhWhcvImCXlHbgXM/YfxRtX
	 hheXrpicGG/memrIuDGShM7eVJ+tHkNSpGfexpjnBQ6E82KlfBZiAlkgzG1NJCfXAS
	 YmnQlDL/ABXoYq5omruVv5sa6etO+NyNMDzbfElgmkA3GESZy4tpJjUSMBnxjiFxPf
	 xBsXLV2+PttVs4heK4/2ta0uU5eVwEKwqIixQblq0J0Hro6ZbUi4GDTEU7mfnqcez5
	 1CQ84+D+MF6vpQjblx9TlxC26OVT3IzPd/+cxVDq/dohtSGVzDVlY9fLqL0Kr5Bcdo
	 r/rG6Swor1Qbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B10CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767025368.32428.8683915455922707145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126d42b493a925cd5bfc803b188ec6f5570cea241cfe6e5171fb4cc64e0c1e16
Date: Fri, 01 May 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777670253
