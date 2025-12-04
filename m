Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B371DEFE9
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764811974; cv=none; b=N33/CKT2zaj2i1EcJnH6+p2WoWkBvjg3oxAGAIxcL67fJR/G+BleiHVhQ1ipDG5SrdxUx6bPt5ncMLJgl+qmZnewfIZlOzSTIATu8C9G3TYlEBTo3Hzim9s+n0OuhVCxITVm2kGxbuJJuye87BUREkbVE3gmcfy18izash8j0R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764811974; c=relaxed/simple;
	bh=UggIsnHvXLBNqiDK99hR14b/efRBfItp/+5QSxTz78M=;
	h=To:Subject:From:Message-Id:Date; b=K87JiDxDP1W52DmTxSOcA1oNxt+TcdoE28fdLCQwh0Yq/HsD0tEok7eWwZeaWwJI6AL4TnsJdWQfSv35irwVSMPpb3dzpM4y77/J54cekuVBQboN57OtR+c9nV+fm0pqdqWUf79emhuxiek8z9P6llKgLfQHGk4KAulFxMg1L2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPp+jRf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPp+jRf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5096C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764811973;
	bh=UggIsnHvXLBNqiDK99hR14b/efRBfItp/+5QSxTz78M=;
	h=To:Subject:From:Date:From;
	b=FPp+jRf66t/FL7mzSIvGbIem5XjXjx1iCzLrc33wZnmFzsh5x7g/U3iMdh9xjekcg
	 9txOc+4zVohIf4Zr3n/GAZw70O80UXCfZ4UR8Uyx48tDmHNPsQ+1JNhUuAoGiuR5+y
	 3xo8f95kC5vPcIibU5M8Q5rTgnLb+imo1S0eyGudko+nRtlm1/PquSVlBYwy7fo5At
	 xGuOqcY1gVu1paxuTCqxFJtaw1Qbo9z3GBCy4GT+OqZP6B1ntP1pTJA1/bYJxNJAdR
	 KPffVmjmDo3mESVwNUYfRHxH/mp//kIBZgYpWAmWe+5WHistxwgG1y+PPbRjJuYdNv
	 TTT1rKy0NfirQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A9D1CDB7
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481197358.20849.8061118788425605871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3232f0cbcb1572a27b7a0e9362e5851d64f1c18386d260922596c70503c0e16d
Date: Thu, 04 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764811973
