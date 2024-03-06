Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C4D79DE
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709691497; cv=none; b=dKQcQfCkDktq8CSsqpRBZF7yYj/nWLmw1WvU7w9liOiwRpPpnNMvc0IV0mY0Zx9ABTNbV3b9ZohSFfCyLBMghHVgT3vm/jdIBGvmz685QoJ7q/f5C1jgPRvXdnWWOmwE/PdYLg9lvLyx+8GixCaMyEutONE4KQaPBs6U3khC5ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709691497; c=relaxed/simple;
	bh=YwjClIIQ4Mtn1r86hm9DD9zrmYrtLJyMOycmcGPGTIs=;
	h=To:Subject:From:Message-Id:Date; b=uvUSO0RDpcUq3QZINUFSXemOhUu2uRAq2NeJW7ejHucdWe4vH0IUyuTuJB6CsBZAXmBvQMKu+vMB76PscqRSoeKQe3yZjOH8Fq2neUswP4cWXdeS8GlFnouP14Co56OUD/lD6BUR8/9XwiLWVrbLw5bYRGLh3Npyj68GDuwvEkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZYofMnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZYofMnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E457C433F1
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709691496;
	bh=YwjClIIQ4Mtn1r86hm9DD9zrmYrtLJyMOycmcGPGTIs=;
	h=To:Subject:From:Date:From;
	b=AZYofMnqdExCTjpJ/y4h0PKQvrPECNjUBfONOv+chgdiXocu7ZcO5ZwRA1yk3YyZB
	 NIjHO4z+fYbj31Ichm48DMPm5juXrrVhFvixT+Uc2tSQcOwq7vQK5t7sG44OsZzEUZ
	 hDsMH6LcsMgcaydnd/2JvN9f/n+aMMrUhwH0HhVTVXpsAajiiQKn4bz/g/jwq821W5
	 iEpf+eQ/yu5MsTt4OY+bwy276eF+LHPr+jWgJGJiDVMY52/h8kbK03d/qHErTx8Qfp
	 vmb9ez0iVJnM9ukV92neRrIKA9g+tL0Ouue+kTGrCeER8koOHqQoF0v0O0V4b04vte
	 wgqVC/qBi2RDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630BCC54798
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170969149637.31873.3726592025132545845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f7b600b4303eed04a9d02440f02cae765e64d99e39a531c7fa7e1338903764
Date: Wed, 06 Mar 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709691496
