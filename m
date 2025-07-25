Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ACF24EABC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753477195; cv=none; b=LlmzJ+knWszRp2yxGPy63iD+A0IKgXtFwM8MGZQ/CUnyVcbtlFMZdwsJtCoaebNCg40FxnbeRSwmBCYJ8uQXxYl58KRxkQ/lELVQl2AovZSlOVuk8nHnoMXwtRzQKKxt54RujFWewJcNq1DUreVjN9D5TRH4v1jje93WF2FKfCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753477195; c=relaxed/simple;
	bh=TLonHS7dU4IU/RmCTJsatzY07YhOzwB2SZR5IcdPjBE=;
	h=To:Subject:From:Message-Id:Date; b=qodwrrjSusiFCtNEp4ZCQBX4Y11j3qR7Zj4F2BvpqCvMtg+OCvhraVKRnNEPHDzOP5DIMi4QAImiJ5tJd8UKTO2fRwNiNeLUTlC5heoT+hX4ujTrJvMegPiBlmhsU0AQhbif+Aos5AuRf8pXA/oMqkV2o/DFhB9rahqSbZ1heE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oa8xDFTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oa8xDFTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B6FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753477193;
	bh=TLonHS7dU4IU/RmCTJsatzY07YhOzwB2SZR5IcdPjBE=;
	h=To:Subject:From:Date:From;
	b=oa8xDFTwj7ixyH63rrxpPtFPsCPZNxVaRJjMQ8Ky+gfrvix+KVJBIknMKV8/iEYoA
	 cb40I+Q6b/eKQ9CEZsdGADCxC4vQAzBu2c4OA3ScusCeGrL6Ul8Sv4kMhiQm8z9e8a
	 +MY8RgZb7nbmowuaHfOSWiXAzp2PATuM7fKeoOU2L87qOykVL8lAGE47XsZSCKGfqL
	 uXCchu/JNUd+LbzcCE/IF07Nx/1JaD6vbf2mLkRs2HN4bYpiKnfPLXQZq6qe+gk99z
	 /mPCwrrcBp3CpzgpNL/g3ztqNj+mUW7q5XrvDAEbuh76z5SLdZ+CEwjmLJmg5g8AN3
	 xOLvim7eIx3Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95779C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347719358.30463.1641103918525398166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37994854cbf6abea2007e3a94dc3040f00cb223dce42034e56a3b41e6a62acb6
Date: Fri, 25 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753477193
