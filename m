Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BA221146C
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777004854; cv=none; b=dFwUnI8uwsKeG+4COlqEb4v/Q38mSK3Ay/tcxGiW4lLRH0lCxiGbwLuJzA2AqSacpRSLEtSFD6F4mNX/Zu/otVMdftL3xjJk0u5K6mThcWLwuqPI44EJLjITXtlGjJOZV/qpYJrKunLVkLDJHWOYBUgUiXx+/+ma2n8PCsvslRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777004854; c=relaxed/simple;
	bh=GvfvR/FT9qu+Uv+Sd0QNBwG46SWio6hxX/iQsmgQ5pk=;
	h=To:Subject:From:Message-Id:Date; b=TUzXHhAjtA8FYwQZ1NtNHXmH1MuB8BzmrQjdcQeF0Jtx2yGNzluL91QuqWGhEM0Zy//iLQRpknrasIZHfzUt+x0fl857GSWZGJ+EXxuACN3nbJJSws1bhMrC2LBcRC7XN5+wJvagWvh2FdFjYAL8JCX230hCL2gpKQJwY4gShGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P99LEwZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P99LEwZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C8EC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777004853;
	bh=GvfvR/FT9qu+Uv+Sd0QNBwG46SWio6hxX/iQsmgQ5pk=;
	h=To:Subject:From:Date:From;
	b=P99LEwZqDvRf1R08LvWIwD5P8+xza1jqsmWcpKeANJW/NfNIXbZ3CIpXFE+nX3zxN
	 4sBUI6/lhIEsYGw9XtV0+TjeZHnU18X48ZSpO2Z/uRn/pQUWc7u5W5/hQG4kku7/S5
	 XqEwrraacSlSLPQsP4WLWhHapMuHJKtnBesxSkUnDlj2lUY7YuB8GJKrl5v7Wu5U3H
	 FN6LRTBW9NGbbLbxgyUqfUpOQGg3P6jzJ/WbpICE87P9CECQfm89N+avDc5ZHAVyPA
	 FpzMO6oof3Hbo+cWrP5s3B3qZqMTeo/ca+sRPGYlbQ3ADFyicnpXPZw84R0GDOJk56
	 nIx5Owr0B5Vwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65D8FB44A0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700485373.13444.5471216077704253727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eaaf559560ccea1a1ad07eb0058122cf846d6c634b8dadeef295ad8b9eb1a94
Date: Fri, 24 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777004853
