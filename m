Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F37D3845CB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782174994; cv=none; b=TveA19t1FpxYGPR1XxQYWatRASOZ8Y7/tcqp71qhfHkEWO5NThYxasJlhruXibagvz37WJrMuC95R/bgNaqDky6t+pQImtUcyHRy4xF3Fx+hcB/SC8Kv2tCSJtNdSzzF6lyg4remlW1zlElJtr1Jljfl48/xKmq5JQTOkZxooys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782174994; c=relaxed/simple;
	bh=jRww+Zsfc4kFonyw3F3KzY9FdqCE5FNMtevs2/+y+qI=;
	h=To:Subject:From:Message-Id:Date; b=ag7C4AOsAgF+eHj0ecBA+spj07QbVuggr/mQll4lGITeG8+XdYgIk2WfCjKeQzOpIscmGitX/rXwNwOvLksgyMhraHmYHvtGC3yqyon7n7PwwaN2TTqtqgzOTXbGOBVdQVrYqZ8URX3tj6iq+zmrcWpdyzL19ieutWDNXy23NYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPKFFShu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPKFFShu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C266CC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782174993;
	bh=jRww+Zsfc4kFonyw3F3KzY9FdqCE5FNMtevs2/+y+qI=;
	h=To:Subject:From:Date:From;
	b=kPKFFShuqG2pz1rIxqPFKREwFQQ5Btn2YLr60gjTf8LfRAJfOnatZ3IpnROdZN1Yk
	 nXjK+5viEa2zZrOcFaBn5Elcmz01sNaYz+15nm06v7KhAy3QOW+i1tlRVoNDzWJnoL
	 wyQynFLmjszgZHJCI9VrP2cGPy1PaeR5EnQnIHq+khY/nmuZk5T5oMCzM8AecgEShI
	 POtH9yfho/sVOL2lUCHWaPXQQoOR9rudAVSu0fQU1nBmzjNZ2OoJCANQCicPUIE1XL
	 pFP/e4fXuXuCwrZ5An2M28PV9fvDl4jsQOLYl/nwybvL4zPwturjWwgNZGbxE0kBJz
	 tAjQvHa2Rq/Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0C7CDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217499368.19144.16329616588595910574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0fc23f2bf0749691cfd284b1236bf713d08e090b9b2ec711cc606428fce458
Date: Tue, 23 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782174993
