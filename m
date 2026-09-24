Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301373DDDD9
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790244035; cv=none; b=rOtlXxZ3wcovPUdm/mTe11ISA/PCIkqJtPM3tLMQm/W6d3Z1fji2QYRpiKmzjQj5a5tcERF6S/kYqwrtItKT6wQbUIG01w9KDa/jKzXN89/oQbZFpOURNTgfNKTJOFEnneTJR7Zj1+QjkDdtuFhH/FJ6lLMpfXINzJaWYOAmDU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790244035; c=relaxed/simple;
	bh=huZpj+q7S5XR7B+57NjDkN23EIJF8fQyEKdHFO00u7E=;
	h=To:Subject:From:Message-Id:Date; b=uabM792e3X/3PePJ+eup/EgunZourKtkJrsQltPhTmavLOGzjrVd8ScL+MHEQiYmGTL5AsJR0X55ahMaIEb6kN4DnrI/tsoi9m8DG0o1CvDBLGUSl79UWkrNLMn0hI9/YufL0T3XMAwqaNv5b7obnrSxWVH+4dHO4TgDqMgvv+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbA1tzsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbA1tzsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB18C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790244033;
	bh=huZpj+q7S5XR7B+57NjDkN23EIJF8fQyEKdHFO00u7E=;
	h=To:Subject:From:Date:From;
	b=CbA1tzsj88TN5fNli5mmYcqI71ELkEs1+VcLULDKNbVC1hP4C+vL0Ig+uJ9nZSYh4
	 O5j/ifit4PoJ7Ds25+gMPT3k0W6mTKBHOqpqPyCOS9ocz+2oKa2rKW/zWe8KiJGQnb
	 EcG+gPsotg73ajL30/W2HJMYERe4lCyBo+BIcHKIJKXrtXQs0AXcaMYLKgBgFX8CCq
	 yaziGA2wCSXgNLAJG1HOIUlngZQquZNCQ37D54NBBS09jQpWddKIQrYVj50mfe8RA3
	 pR2a6bW+ojFLnD5EqVf/0fi0Mbf+6LKv4AeqqnQ+fehWaZt9CWfOjZOzPN+y4taJjC
	 xjK/8de4hROTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46CC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024403368.14954.2085990317163300237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272e05cfe233c2bf4d8aa4fc17f8f5717590f6dfec60328759b8ca3315e352fc
Date: Thu, 24 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790244033
