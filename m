Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7503B774E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774618494; cv=none; b=j1/2vY8P4zUdhukj0sy+0YNIRlg2satR3edmqpyioG97t/lQv02uJnr2nFPILSTKL3CFEOJ6SLiEH3m9h63zrg9annHRFihTZixRfAxxVDk9SjlCa5Kv2RbHqoA5516hpeCtm2wGOrdln5iF7VQWetZk84AA7w0ZQvFDWx+u7S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774618494; c=relaxed/simple;
	bh=WKBr3DU4aijjtHqU/VMVOpXPxWK6y9VAS9pBpsN+KuI=;
	h=To:Subject:From:Message-Id:Date; b=AiHh2ksRUQUwhWz1ZDmi2N3VlhfADFAcc3bc+tVCkg1xVPcMugKZYyjWFqEM7jpKOmeBW4gOEhPTYKFusdNuyV/oY7HOLquxgx9vkCxOMbM/vUCz1BKFHzX/POS0LIPf3MWuvaAVjXG8kZ8eNeWqI1Kp3T+doSKqtqM4e7FOFMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaML+Tis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaML+Tis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D8CC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774618493;
	bh=WKBr3DU4aijjtHqU/VMVOpXPxWK6y9VAS9pBpsN+KuI=;
	h=To:Subject:From:Date:From;
	b=YaML+TisgEDnO1qJgVCT4NcyAu255TAn0gIgoaLCxtyHhym2T/toJAwZh/D8L7K2l
	 sMyHJOrs2CpGOccBNQSuAQ9YFpGtf15Y3Z0bIgECH7vPtnPA9IerKvCH34VC7XjLCU
	 yEaYJC6XXtQN1J/bP04tfJ2O1dYrVFkdCyz/A4XOU/Xo9nH7LenFZZ8jbaQL9/ZGdn
	 JZyWWLiXi/oyaFhn3X5KyS6L/VCBnaNsZL0zr9yjQZRTo2uH1axMqOM/mrETNecoTp
	 ALnO4f5ANQxH16cUksJo1akqyzZbnNbODNi1qvDhaxvQbqBoZka2nJajizkvg/Iw6/
	 4TDCrIsp5P2AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168F10ED674
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461849358.22154.18188812974888014448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05acb30c445917c84a0a6626500b699f949b3d79cc64f27b6fef99daa8d89b0d
Date: Fri, 27 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774618493
