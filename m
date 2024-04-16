Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590801272C9
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 10:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713262763; cv=none; b=RSJvLP6pn/VVo2a+ilxL0EK+YaO37Q+MwHYISM3YpPyIjfPW3jBu7IFFW1BTThve4O6bjJD1iD2dj9eBUNxi95YybtboZf9CpD88Grw05+Dedtv1CSHMQY7ivGMQeaylSAruZCpwO4UGsZw0lTsci9izBwyOz7L5WuavzlTHy8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713262763; c=relaxed/simple;
	bh=lMKmIB/jG2FBV8iFU7z1DUd00Hic2poF5JOAx+we54w=;
	h=To:Subject:From:Message-Id:Date; b=Kskk+Ck0IeuGa6lWB7UHY40O9siYXmDrdV75rSCF1DfSZMIQMYZy1m5mQnWi7HRDbGNpstFVn2BwKINEP+Stjuemo/j+zS1+B5KxyidLmEa5Jvq+fvi3GlHgyjq7nF+6d/r3qfvqweADi7Y02C/g+X/YCj05d5VFINIrZUgfSGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXXMJFEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXXMJFEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2BDC32781
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 10:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713262762;
	bh=lMKmIB/jG2FBV8iFU7z1DUd00Hic2poF5JOAx+we54w=;
	h=To:Subject:From:Date:From;
	b=VXXMJFEVADE87aBuJVUCPOQW1MRNWiZ7EfcP1t2TAgpAhShBl6ZVsWLCydcm98NMD
	 qbwRPQl0PHi/Uv/SDHNiVMUOGCmGG1pnrk9I4DJ47O79bZjc3vZX/Vh5Z91RQqrxek
	 wN+H6JhdwLmRf//N+Z9Sb+BU+H3ZmOlPwHOZMRNMC7Cpmmm6Z5p0SotBpqNnlTSflf
	 jXHk80PASQTqSJXhL5OqZK5Zoo3fnbP9EwiaLtTCkyckBLLafAmDO5VQwE1LCHC37z
	 DTz4Pj2GGp6g7DhD3xexa7SEHOD/xi/ZvD6xmz26c+ueviunSHQ6INNY0JuJjGpNY3
	 Q7LoDurrnMqXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAAF7C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 10:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171326276278.12036.18237686654014701062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4976bada8e38bd77ac0ec226c66eee1aa20ca837d060e4e2dae82257f7df53f3
Date: Tue, 16 Apr 2024 10:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713262762
