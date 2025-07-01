Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A38827E052
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751404194; cv=none; b=F0kGJZf8umITl3/tAt5+i9WXgSQijLrv2S/oqFFtAGalgNwtSUtUmxv7j7ECEbLVoxmYJbAm8VieOT5QtzAzMci/HfE2wr8sIrR3Rmx3y59IEfE4aECQAVUij1Y9jpzffgW6VJT/A7jVv/A8d+yhmC4yMAOaiwHLHndVEVZ5hNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751404194; c=relaxed/simple;
	bh=cA1I3HfAwb+NEdW67VnUvLOXGZdvnfflVWNRhhdbw0U=;
	h=To:Subject:From:Message-Id:Date; b=SK9sCs5z6E89qASdSmA4vdVlXiTW/xqJE2qibtJurD1ZdIXCT5JgZFx+fbSOlhRE2fycyLdb/ZBsplJ/8bDqnAHPUrSMR7YIUAFEfg1Rrp/sqGhbzEAGs6nFpUIOfke4zxgVQnN7dneP6R5yRDU9dlS37ka9LlTXlx9kBfxrUc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZgbcUnj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZgbcUnj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70EEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751404193;
	bh=cA1I3HfAwb+NEdW67VnUvLOXGZdvnfflVWNRhhdbw0U=;
	h=To:Subject:From:Date:From;
	b=DZgbcUnj3NId1fwOaSW9tzE36kAgnUq3tmlUXAYCosYkhlTAhoso1p+XSmWjAfFdw
	 TeLYTY9qk7+8NxmqhROKOLJm9VXSi7z+Qoad40Ly+WSck3r3f6HDV2sw2x0rtfuNv7
	 fT7a95NAKJKE9MTzE01edKmtdGeNhGd0hSrRHOiyBNcg4Ges2sI7PBdaO6nNtr48Wp
	 RCGyF4RoNcerunxNsrWPSTCmNon/MgKxpJxBDYJ3scWjT7FvEbJT6j8tCA/EelpJXl
	 SbEc0K/3W8XtQHFc2NmDzLpnmkbzXJlonnVVabBi1YU/IBV5/XZj8PDArcDJ0kBk+P
	 eq9QInclznd0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46BC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140419357.19251.16989648034528885165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f813a7744243d1816950c4481810e0dbe6ecaee35d96b42ddf035ce6c15f65b
Date: Tue, 01 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751404193
