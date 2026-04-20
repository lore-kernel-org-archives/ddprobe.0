Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1C238B136
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776723454; cv=none; b=WZHxMnnVLOBCqkjks78XP0YOgZzXpoe0sOWSNsbl1hXyTJKWNgpaQ2fuY2Y8xEdl8t7Z6+t9le1+z9CMR7O+Hj4XafvPSk6HIIubEJEshZTz2n0W7uN1MWcUPAojLT1pb+cUyYuNzOINqq9itd+ZUXG1GZwuWQM3CeTezwo6mc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776723454; c=relaxed/simple;
	bh=c0CPZKUP2KrBm9/3vsG1jRXWgFjj/9PkWRP22Wj7BPY=;
	h=To:Subject:From:Message-Id:Date; b=WBrb6X3rnqXpC+Tc03yGUsSxuhKFTS55Exm0gbeMnu45hiaT3eh02otxQxQAgq6rgzcZiPHUAAp366eIb+kwam2WcuVidSjM5fz0NK+z5cXT15n8CkYaWMpi6GYgp52Dg1qZ1Ni7zHjI5tDDEwKPPXyQjjGOz03H/t2Br0tY+kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4/yrTXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4/yrTXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD3DC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776723453;
	bh=c0CPZKUP2KrBm9/3vsG1jRXWgFjj/9PkWRP22Wj7BPY=;
	h=To:Subject:From:Date:From;
	b=u4/yrTXu78PCqwDxFNBaI6V7Klg9u1OA0EEHhsUJBB+XxnBDFkxtOAgzFqXq5PC0E
	 e0xkTa4a22c6tIZ3w+8roXd8LLiWtu8zdkte/aAYh1oG0cW5UOB3pEHhnkouhUhhxF
	 A8lJu17Akc8DeI7PYsRc60PAsgg8K8hg6504zVUDjMA0f0HlW5deepmhvekNzrbdPB
	 ADO7hCTqtNF3fFIq18DWDIMgP/+xL++4CCh/PIdB9hW+7uWQOGtWO+vi4wUpJZyHwb
	 wyew+JmTgT45Y2FhGLPjeKCGOAJzUS4CMWe39SjMeg1c1uLWWdqXv63ErreIEwefgn
	 N4IQdPz88aKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8F5F5A8BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672345368.26912.12121131865219619063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b886146b41ccbb765c0098aff0240ba4f67936cb8200b7222de81a4f1b49a8fa
Date: Mon, 20 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776723453
