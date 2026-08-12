Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC8B21D5B0
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786497634; cv=none; b=cS4bKrg5aBffzqebNR1ESYK7MMBvO3EUTJPt/5tOAFgiS7EJp86wDNCY9GeKn6U5eucSgp/MzS/64NcXwOhtpUTc6Hgo2w9vqaF9t02id+QD0lHP8fyNLcEa8DVtbcPTR3PF4SjAfJCuxx63agZKvWX3pLJUAtW1+Zyb3L5XWNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786497634; c=relaxed/simple;
	bh=KRhCPoDxFTeLOaurOCD34HUYh8Zmg05OoBhjyjHMfwE=;
	h=To:Subject:From:Message-Id:Date; b=oufXw3hi3YSuOz3zBLy93g6jxSC4aMT0AyFPAIeVC1xAFwiaETNbk2g4GmvKBt/19ZAUYlVKLRZ4rlE54bBV1A7MeXCrkLJoWgG/XNjPqgH86fbc292xSYTzKl38Pfo5vR/yufnIqpdLnRD/aSbH9KMZWXlv0dwzQyDjvcF4j9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uz3aH5uC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uz3aH5uC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE3BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786497633;
	bh=KRhCPoDxFTeLOaurOCD34HUYh8Zmg05OoBhjyjHMfwE=;
	h=To:Subject:From:Date:From;
	b=uz3aH5uCTVxWhigmYzuitGPKefYmjty/ZT/snmm9cvxd5Ms1tQ166x06hJcON4ScU
	 lIwn3z7ovcl2VXteSDbz7kUfUqLpHK3oQm7Qiait4vSMwvKQ+cJfzhwh4WTNhhC+j7
	 x0jJz5hfT7a6FCK/qeYE1dFIdE7RMbgLRNeOAW0saPPIBrzN9N3Oc7sAVY3m/8B3CC
	 dLgy2/mK+nHqsLRADN4E4j5P/tPxkIVFrfmgctjYtzDqNiO+BfGB5wT6iUu2McDyvG
	 rfMpamnCqvUTAQoHU4ryj27hltrtvAKO2bfZLuews7WvpTpFTWuPuqZK5AHe5XFisp
	 66RHFDtBZUJiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82A8C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649763368.21223.8841555203571593106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff595a025f5b54d3d83e3c305c760ddb92be526c5bd74bda0707284fd48405a
Date: Wed, 12 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786497633
