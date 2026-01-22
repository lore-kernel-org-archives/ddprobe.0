Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBD119C553
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769085234; cv=none; b=sxGK5Wuu1DIywLzoOQyUl6z/rsI6nkisjah7/VlwaakgKY2MyoSC5IR1wlJe8xcKlJcNrYnBkqlbh875GbFQZVmj7/zYFTFfA4rQHINIf/Tmz+MedO3tdKxObsiBGtDaylSItyLTFgG/94XXDcVk2U/aJgtUJl7W2JuodYIARic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769085234; c=relaxed/simple;
	bh=/wb6XZUI4YM1+LPGZCDXlbrBG7BnqbNecbcuwTyvAOc=;
	h=To:Subject:From:Message-Id:Date; b=DmjvteExuefNc/ppapkwEjHHW6WfIGKMkZbx2LtWWX/jEgm8Go9mHQTxMN05Ye2pWPRi3QM/pGZ6Yj6ThNDzRGjfKMpvOyRZ0KGr2/dG9N/GRms+OuJnzPKNG7XCUQhWysZx/RI99OlgTCatUjbNki3vnlDDklEccTsR+csmXGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXsmmP8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXsmmP8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D4DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769085233;
	bh=/wb6XZUI4YM1+LPGZCDXlbrBG7BnqbNecbcuwTyvAOc=;
	h=To:Subject:From:Date:From;
	b=CXsmmP8l0llNeq+XBl+ZvLn0bs6T7qgEAXxdy3Tm3dGwfsZuetvp7QRQlyW4aJPi+
	 SXHY/a+uMnmgR5seauaSa6F7OdCQTkr+hvVOFSQxK2poykUYCG3rp5xAgGXjv82dj6
	 Wqb1RtaSSbrO7VtUk3/XRKvonLnhG43FWDpaTy364BUPJ8oXt6B7q3ykzihI+DVilB
	 aYPcKVjUOLut9HqRHPG1Z4sIrqMRBfrznztdZGGjVXqL94kZPos2wE1nBk8V4/T6ZD
	 0SMht4v6tRdgQGfSz7YWRUQqwwXtlca9D5iJCQRAE4NngthqpfwY97SjlD+nMj8kVN
	 O5GONRjH+s/dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904F5CA5FB6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908523358.32683.13813659345199544229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da91e82d6255a1b0cc87c02c68580fa8d3e65351b107529e21a15abb94d52433
Date: Thu, 22 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769085233
