Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C27DF72
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761254394; cv=none; b=teLntDxR9gVl9ZAAweGCsr72wbfS0idt4IlRqS7NEbrRzNap8jiNiOir69g3ccmWAwLtZLuFx10HKAi5TTaq+E/qxkvEaR52t7U0t/HL4RI/h4mMv6bXpV3Z32tSakr2CCF74r0PcvYga9rEKpbtXpbtwFzSbFkGTxfu745V7dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761254394; c=relaxed/simple;
	bh=LjJwqPu91d9/5d4VQ+rYcO1qFQOa8CmZxyKeJtVdvaM=;
	h=To:Subject:From:Message-Id:Date; b=jZxiAfL4V8bnW6a00+e3zgWhBqsdmRup3hCtrq/3o82TSscYTntEgbwIjVnRIPuaRPSksxb3UJbjEBFp68q1jmTYtz+hZVkzbGFvVfXFT7PRPCBsqwlxGlnK3KYmNgKZS5r2QYwgV9cXBCABPQ2/xEteVuQnz/3uP33s63eBr0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2mwhA3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2mwhA3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE0EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761254393;
	bh=LjJwqPu91d9/5d4VQ+rYcO1qFQOa8CmZxyKeJtVdvaM=;
	h=To:Subject:From:Date:From;
	b=i2mwhA3hUIY4DdUom5jYYIfVWxTYXzsNt13iIwohjCgyeqOvxAneM35NB9Jeb52P0
	 XOMu+t864tKjpz16BornAUW8ZzYTObcnaPugGRSak8TDWSHe6kpP16KFhJjWHyNn8Y
	 +ZjLIFxNSjEuHaUdaarrlmD2iG119UZ5UoKv3PS5K7G3Y9bR9euXdgQVF2aAcz6bi4
	 JHFz9M99xsDqVoTFflKe6l+4Nmaneq7kfXS0bLW2yD4PGb50DjqwIPmBI/TAbpHSC/
	 MG3ay8/fbdqIHX0dToWgma0ivPfZYICTC9c88xr0WeHMcWbTIOToXPKXjaIx7D0jhP
	 KDPG042uIXOgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FFCCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125439361.12335.14741413384235093787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25a16c6f44b33b0f055dbd6d35dd403586ffe616b6fb0ca909840200d3e6c40
Date: Thu, 23 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761254393
