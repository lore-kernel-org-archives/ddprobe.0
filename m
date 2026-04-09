Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2DF2472A6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775764654; cv=none; b=IJfmXbrG7makUknMeVDazBVI9T8m4GTcRo7OlgejouxrQ0caNj6Sq+K+YoR3r7hGZJJuYd7KCx+6j7usvTgCfFtj+LbSHHRzefW/7uDFrwwFc9Nj7wwNUtq58LSsG546mN1A4jQ/npYPnZjnu2xsgyNUogTKDmYnRR7fUg2CRBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775764654; c=relaxed/simple;
	bh=fSJoNkaeeJZM8qz0zCbLNL2fHLm9aPGjGh5xleIDoQc=;
	h=To:Subject:From:Message-Id:Date; b=oaDAIETm65KjEqh1E1o48tVtAoIpa9SF8aRPq7qHIJCML90g7XpsxVUJXKUe3SqvG/b57fVL3vUoFDP9b7mPBRksDV1mNHWpGpkHaqwtoDvG1VRFb2oEF1fxFEDC4ACXY2iVyiAN6/xE8LQRfKnQpQpvOcBsSigMCaA6Js0vorc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMuQ1h5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMuQ1h5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C055CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775764653;
	bh=fSJoNkaeeJZM8qz0zCbLNL2fHLm9aPGjGh5xleIDoQc=;
	h=To:Subject:From:Date:From;
	b=iMuQ1h5hrFhYI+LjsoXvVsbdSYZ6io+P3wRDGg3JYcrNIVQ4l+BjIOP9Z88MYbRpF
	 CjVH/6vA4tiXPW2u/x1XV4RnkJxPpTxe1zk6Its/1culU13c1YZUXuxJroDkTqWudR
	 mFply85BX/UOJntEh1Pg0GmUSIRV4PuUSOahjZc8Wp8XBPVJtDhn+HdZxh8LxXQh2D
	 32PN7ub4a7tkIvgAtsNBA3znv2k+dtRoaf3gBwkuUT2xl0w1X0uVc96a7wTVU+x23O
	 tjx1+7R6PA6Lpxs0c0wV3m6cNHAM/CFJsk0uD0JqH+2TEBvZq565VY5yP8G0wFwgmB
	 YrL/N/vMUajpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDDDF364B5
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576465369.20957.16690039842192781823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9216c196472cee50d9b71e1e9b8d6e3d1a7b0d74020ced8b7a43256e89e2f417
Date: Thu, 09 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775764653
