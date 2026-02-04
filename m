Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3713B262A6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770242634; cv=none; b=UwvYiQx2900+OvQn2RwXptB/rcEz1fvjMnNWGQ6vhm41dmO3RYW5hJS2RPgbl0J2Ygf12KSYdGtIRlO5zN01FWCebmO/r/7ADmbW1Q9roAI6UKxPgYS82+CIMa3kIHInZ9NTysbsrkhKYQWwOVq0Ix9FxcwpInkfUP5MMnqBiRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770242634; c=relaxed/simple;
	bh=hKkq2dw/PcE0tjUKef9FBYwxBygGPCf0FB1EiepsLcE=;
	h=To:Subject:From:Message-Id:Date; b=EQDbK6kHNNUqy3g9CeOB7T8QKPftWYZOIZ7wUtYQI7RPUEjAOWlfcUiE4vMQ86ErwmBdC4Vk5WoKDIL954xqZkAIW3t27pNk67qOhgep72CAtN6/rMv8nhDmyBpF2FvNTyZxkB3h3epbq0/n3CjDop9Jcmd+uGPJFZDaxch6sg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxT2LPLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxT2LPLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDA5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770242633;
	bh=hKkq2dw/PcE0tjUKef9FBYwxBygGPCf0FB1EiepsLcE=;
	h=To:Subject:From:Date:From;
	b=ZxT2LPLHZQCPKG31tttYXRiouv0djbG0JLDUXV2NNx3sW56sxuxmp2IF9y0KJ3V6D
	 Oedwdj9XkpjGzTiVzXBPsMlQOqDpHLxlEGTPYjEBL2qpnPU1UfBK0hAdQ+CIp0et6d
	 DtdBVPDREPv4DhxKM01N+oTIrqB5LFOCKpwIyvLMMQS4o0jJziPb8aoiiBX0rzyDvo
	 IroUdPimmI1vgYo2OFFgkUHal7RFkJEPKcwR+tCASr6CAOC2mMYEbcBMcQQJ5i+Cdo
	 vhEOSZJi67FXnfA6WWHLQVfWpjext1HQcgm8oiVq7JAweUvdyXfxGqe83BfED3+/6n
	 tGQ/t8UzQPvsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87B3EA7946
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024263367.4906.2782172582317143996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7e72353e9541e0b7f6e83e3ccf947d1b72b358b40920b0948cccd17629cd54
Date: Wed, 04 Feb 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770242633
