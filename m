Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE916F06B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737650154; cv=none; b=uZ+v+SUb5gf8PO2LIrAiUhEMBQDJe9Q2dODm2MxRtlISnLKvP+hZnarYuIilpyTlq1LPmnFGnsfnUfEBPFQ8gr6hEmhjfIlVUMDTXkFWM2CkTyTwDiCr0W54OL3mZceVDtQNpEbdWjFswBmCuiqjf8KVvgpKVRNMcYI4k5tHfEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737650154; c=relaxed/simple;
	bh=mKIhzF4Kd0HH2FK93n9dI6NA+xVLbjPQNeMlDCS7uV8=;
	h=To:Subject:From:Message-Id:Date; b=DAR2zrcA7X1cBTLw5cHfaFXIyShi/dt9qwh849FozClhuyM8TeE5xR922gWLoviuVju9hddvguzyOjkBC2LgJVWtLz3QhSHk8sf7g6VwsQx1nkVdOPI0CVBhIAsI6ZMkrgxC++XT2ecRLP1UxEM3dlnPonT12OT/oqJqKYKo1/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZiKT7uQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZiKT7uQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B024DC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737650153;
	bh=mKIhzF4Kd0HH2FK93n9dI6NA+xVLbjPQNeMlDCS7uV8=;
	h=To:Subject:From:Date:From;
	b=DZiKT7uQpDoc13nIHzu4hYbQ869havilppMJOikHCPTdVgWw8u3htX+kw5K6VfRrE
	 862e6v0Tx/7FwWKuD/F0YmvTbkH98bnZi/B0oXYqw8YHc9Sk16HMXmFg4ovmssEc2k
	 OK+h6MCIvMP7PNa0muPGT0mkexD+vPKxfgexe0RhX7UUYgWDNQjBInX1DqzH7epIbx
	 jHmCNhmXwoYi0P4zaneGY7hNn/Js0otKP1CQi6Bluxew7hjfNs3gF346vaRCdhkASW
	 zSUdUfFYGGlsOQ+qRuwhUkUHTNz081+5ZCy99KINJIgvapRfwMfRKrEBCLeawdkkKB
	 wSOrV67q9CYRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A818FC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173765015367.10618.3587149082765197873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7109460a23fa72938c9d13bf4ba69a52396aee12615082b76fefed9d87b653f4
Date: Thu, 23 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737650153
