Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF0617554
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 15:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119103; cv=none; b=HKbce7+TQX3blCm9Vr2Q4Nb+pvxxbepR/E3sB9zKeCChlYl8NvwBT1q5pCBsLqWW25Xorz5kWgwkxrl77V772OTL/gUjfxmi7N0qJvmgpOZWfDkfIP3teAa/qhA24pvpvSsBCTHnDUEwmVJRxonYEHks1wty1BAvLg8CKRq0Kdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119103; c=relaxed/simple;
	bh=vmltyQ8V2kPetiF8u554kN7YGguck5RrMhHuBfbTtKo=;
	h=To:Subject:From:Message-Id:Date; b=GKkq/H7NNU+aw8iw/M92Fl/3KIH8Fb9w8q3ZSKKyN4/kck82L5R2Pe+X+JE30a3g1vQ2gLSO3V2eCPCyKFvITsbJRFyIey+mcuILTOozCZzmKZxgV3+3UqERT/rIY2mnGGBO2w72DyE+igHTZR+aOxs+X5UOrwvVu4fFGLrn5nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4hM/9QF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4hM/9QF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6996C32789
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 15:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718119102;
	bh=vmltyQ8V2kPetiF8u554kN7YGguck5RrMhHuBfbTtKo=;
	h=To:Subject:From:Date:From;
	b=Q4hM/9QFp1hb2lmLGblgxzZ8F8uIQA7z+EIbFLw4WhO2WxeO2bY0xYRJ4a1Y2WayQ
	 T3mRHKU5hEa9/InAAHiuHhKoWLxQQKnhd0iYZae6+rb4YdRh9kO2nyZ/LMGHn0amtu
	 VqQk5gmcXtx25qPYIEgJ+hJuendtRLSTAEY/ycZB4TaLpYSi3/PWu+jPgCgwuGHi1V
	 mnuZrgrhB0LTWIlBjKbrpH0fTdbeuF60b8sH78F17Zcme8AO3njiaJydSke93FuQ3p
	 JjzGa/j7y0Z46fdVbu1q22GeY6rkJieO7BMJyNAt8PPw6ZIz3NdmA7fFzWBFCwWtFP
	 PoCjBEhkiFK2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB2EC27C75
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 15:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811910276.21360.404320890870680811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f2e6596fb2fd7abe5aac491cbd7d0e61612ff7a11bb6d40981a589647380f4
Date: Tue, 11 Jun 2024 15:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718119102
