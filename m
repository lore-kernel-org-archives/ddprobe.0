Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5ABB2853EE
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774349093; cv=none; b=Pdom3zofHlSuyy9bkdx9gDPqfM2TEUPNeTQKFgQDXMluuTfup3wJc8AZADs/Qc7sljlZpV9vsjM+A9KdxAa088lTQM249MO0rnB+DX+sjsnvus4QDLLwshQUb3shCXSAx21daFsCZNiA4hHmqA5TrtcAtDTbYZinfDFo02QpeLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774349093; c=relaxed/simple;
	bh=0H/XfkFl4YbxMgELbU0GZsAyBv8auueLx8olrdtm2OQ=;
	h=To:Subject:From:Message-Id:Date; b=A0mh4eqoTdZDsS+6z+4jSzfLU9ws42Nfp0jvJnS0QVDOdESZHqhWyOMBlLGmLXipDtBWt6YKCNTykr7ib9DHx4tYuMiiOI1RiNpaVEZ6/dE9bhXR9ASEGj+GmiYB0XIM91+aaeFyjr9NsESeN7SDOBvIK+TL9qmjuz+Fwx2FWmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLeWHK62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLeWHK62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CF5C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774349093;
	bh=0H/XfkFl4YbxMgELbU0GZsAyBv8auueLx8olrdtm2OQ=;
	h=To:Subject:From:Date:From;
	b=WLeWHK620/zvefELzfk8AMo0b5O2YAX+CFDpKRpHgfQEu9imaDGwnlYS8CO0IYO+j
	 EeLiixGGFjdrvJMe6by4CDvWlwhXb/+ev/u68Ru3Oh6gb98GjEpmwC11YtGFp1X3tT
	 6ZelyH0akISX15s/buLRNbKrXJzczOdvh4exCApaR1S6Jix+Rfp0sXHZApTCU9kA9F
	 cGLFCT7YsHWRd+A19CCgLEpvgdCkG3Z46pc8ME0CnJ8IO/5dTgDoh2qKu1/zcxMHxV
	 MQJA1gyCTyPluCB2MWDVsRIxbHDg4PFMWoi+/sB8QJC/YMsFYCVEXNjdcG7+FZjt25
	 pXcD0WNvK7ZwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97203E9A75A
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434909358.9103.15276817831715843442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1eadb955466f8e12f5e6a371404c5d5fddf36951f87c0b23f0c545c8325659
Date: Tue, 24 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774349093
