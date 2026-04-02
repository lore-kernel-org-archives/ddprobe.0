Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C44336887
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775097934; cv=none; b=ccx7jamnoJ2DLQUSV+eXzsZWPOAObis+tpQ9GWLLDLHyl04aXJicFEzeLbUCFrTFf6TnvouDPD8JOUwsAXm7/+d6ea6v0ws1M2n9rc/RI4sL1XpzK3snAxOaUN0DWPIMsAoayYsijBb+QTcYyTQvidb0VZwzB+xmn7EKF1XDKo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775097934; c=relaxed/simple;
	bh=Dz3tSFkGkZJvW2VA7dW6a41JU1QwxH6dT+0Sp9nuNIE=;
	h=To:Subject:From:Message-Id:Date; b=CDhNIQRF+2TD5ATYqd35N+7v8w88jncZX/KRKkDxQSEGZMdXJoxu1m6s1m/yjHmpbgUmzw/kNcDwDio5jmDWTXt9Z85MZp1mkxrq10xO9kjxSEqPU1D0IjUhPynxDsgSsVQwocZQm0QdmjevYX4a2HfKApabGkJLQs7zkacVN44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8feAkiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8feAkiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8ACC19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775097933;
	bh=Dz3tSFkGkZJvW2VA7dW6a41JU1QwxH6dT+0Sp9nuNIE=;
	h=To:Subject:From:Date:From;
	b=E8feAkiFG+k7/cVOjRJxB+dclC3/Eqe9GSYHkLAO3VyO65VBB6FmrnTACrtQE/QXO
	 NOuSTiZezDQL7emfk5ZKfk7cVm5LH8NpOkePZQAbZCxwbpJ2FoC3pFZ4i56x6bsWeN
	 StcDTb6e88fOKLlzSVLrxELyRlvkcQqSqjChr7VqWuYXm3hmPPb8auSTjyebyBt8dd
	 oZBoh5DByJAf+OvQrY2DIiqi1440VfQK8o2Uv4JAL/YcIFLq+JACbwrIS1HTMk3QwE
	 X1dWIoQQU0AF4GdsNi0PL1Bm/PeyjlkP70yaZKgaWe0LD/QL1/o/1SSSb7ZRH9nGdz
	 4PHzhjGuk6N0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB41E1112279
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509793369.30977.17774514744968953890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ab1b3c4898549762b10785608845bfb0fe91248f90d604e1b0bedd6658ce46
Date: Thu, 02 Apr 2026 02:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775097933
