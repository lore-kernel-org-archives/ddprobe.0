Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27439303A0B
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761934194; cv=none; b=rYacSUm1pjGlvc+dPUwAhf2BhwYiXYSqhp6r8k0PosHifck6WJSpq+taFHNBwpFlVc7hu7wlonzr5f6NHOcIM4zd3KRoBvRb7yyO6f6jy2s9FRTtiwcXjid8RBaHVcKkYhbYbY0RxV4FMLwqAMMhJnPQlxFfqh8U5nHGeo7d034=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761934194; c=relaxed/simple;
	bh=Dm2iiYuBDpCHPCe8sWTpb0jxu2vt7EQKzLP4aPcNs8Q=;
	h=To:Subject:From:Message-Id:Date; b=KxyOohfP+OXmGpV/mB9JWHIVQqEVhkl2sd5SljHnrn3w5PUPVVusHbKl0QNJFfHQeTpKLNYHbAdD+VdVNgpgV6p/E0+b3Nk+tUHxnwpPGevWLaPYZ75uXndNtkCZK4BX3Fg4jocULVv8RxXiBabYfQUonPJZrEdrzr/JXXjCG10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll6kUO9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll6kUO9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E54C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761934193;
	bh=Dm2iiYuBDpCHPCe8sWTpb0jxu2vt7EQKzLP4aPcNs8Q=;
	h=To:Subject:From:Date:From;
	b=Ll6kUO9IRp87+b/OWVY8UOvn//N/iu1Wfxk6bqnWl1pkAZ1Fr5+IsRBPAUhm4vaYh
	 joJZfOhyrirLHL69vAsuDxv70ufJ83tYNBlMHl8wenul5NJyZhTcsx4hr3zud9auDp
	 mb4vo5UAcoG0pJD0BsmT99XQHIu+TTMgnOxDMgWYPvXANo8knUXlIMRGQlIPdtEW00
	 C1CIeT5cZyX8OAWxx83Jrw00RNoYwuhj/j3ovz8MRNVcSev/Oc4x646B9x9uNADtOX
	 tdML+Kle9XbvRvU/Vne1xX8MmNj/I7e2Z803JEGhSgbWEmeZsBVl6BB0ZTOzjuJr3+
	 SEQT/9AAZsqrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DFBCCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193419358.31835.2422349213893853612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34589f6a3b685304e1901d741a646cc72cd18b5fb1bbbb34b09d5a1a8af66657
Date: Fri, 31 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761934193
