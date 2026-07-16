Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9251DEAC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784213314; cv=none; b=kQH8kswwO/XwFy2V8tklAZdt/THKidU+4Cg48lk0cnsVYOZDw/fGiER2+28cr8argmN3ioHCtQ99/54+WVzT1rwAtI/60qtRe4oDDpSGbjJDiYJ+SKAvqR23G3lkeVKec/1BheeUYuZWZzSwhbihsbSmNtNAPjMs3THaOjvHSEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784213314; c=relaxed/simple;
	bh=SquluDX3htz7k3O2+SV5tAIhR3B2y2VCF/QM2uGC1WU=;
	h=To:Subject:From:Message-Id:Date; b=TcL/8tQO0QW5p5mJ6N49gG4onlb3ladCPocRz8v85CcEI0khZgkT7au0S1C8nV3mUzuFdIi+CWX+DY/TskPUwuXnql3g/+6SklQ7zJ1Lfk7GG42If4q9ZjK2ARNse6MZCH19PQGz0DUlPIsSTeqc4UFbl09H3APbfez81WF9VsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGCKzDfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGCKzDfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C57EC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784213314;
	bh=SquluDX3htz7k3O2+SV5tAIhR3B2y2VCF/QM2uGC1WU=;
	h=To:Subject:From:Date:From;
	b=oGCKzDfYN40lJhw1gBW0awb1U37ouzAgrffJkzvDNDKgUQVtcjd5XwouJMpLl0QXL
	 JmoRMXe8DUoU+RL0rBbaUXDxUTYjEu5BeWuw49CBxGHp4fcsrzB6ut2njn87SLAkut
	 OWUfmiCunPa3Q2QSNcRkyKk5SwweuXnEAwcDj3aUzxrQ/yHTXnuKIwllO8TczPUBWM
	 roflVTLIxADc6qzc5sBw6CSu8ahyuFQUxdWIdeUI9iFPOMT4tc81grNncJSs4/R63E
	 ExaqTjaYmDzu/tBJGHHrAJXYxNew0BN7D54gnYZjYJ/+NrfwtYNe04W/HZkjfdT0Wf
	 zVAYHkt6fiHKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9A18C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421331382.16802.14521325324195907287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ecaab0819c8e55458942d2fb9daefb826a039382e2ab27cfa011a07585c253
Date: Thu, 16 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784213313
