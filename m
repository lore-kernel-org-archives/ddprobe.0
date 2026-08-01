Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5880F481DD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785549634; cv=none; b=lA4GPaQE4g7HtRFHUpeSjqL3SYe9a56gwP52wvq/Wj1dmkngIK+jb3O7711SaNfGSV5vxD4itxjgyE8iso7blm5+C8c+jpuigPS8AmLLv0DZqXoYgRGO2AvKh4/8xOJVBLnPy/+J3wSVvZ8FFPhbnA7ITBm07lyWmolS9rA3Ogg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785549634; c=relaxed/simple;
	bh=9NpXPkdC7C3aF3J7QLHIYiMGAjSKihjJBXZiiSbDwrU=;
	h=To:Subject:From:Message-Id:Date; b=NN8ZOG1T670Jn9MgQ9M20FI0qUbx5geAT6NGrKyMN/asNXOH8gwJTEROiMeZhY+IOMvIdll8Uki6SUHrUOVQChwkLrEhqOTTHEnzX0KtppFqZFCXPKirVhWMYtynwoUIJ8cb1vvUU+I3CjCKovDpEqncY/50QNqnr9i7+NBoIjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOXwF9/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOXwF9/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC4DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785549633;
	bh=9NpXPkdC7C3aF3J7QLHIYiMGAjSKihjJBXZiiSbDwrU=;
	h=To:Subject:From:Date:From;
	b=GOXwF9/UNeXLWdHncIXGT+PSH5Llhmkzg+pZgJw/IRLfGid9CBz1S6OuqOtINc/nT
	 fmzNTa3tteDhIfbSOULu/dQZlEEVohMX2MuYkPo3kRt2FmTwZWl4vTd8CVA1F2ZYyb
	 wdcVIgJEzKiVDz/AJYp2QiOFxQ+KTnIltK59uC01QJsKMpv1FkLz1sNLTXrQdqQn+J
	 XU0KGpfUSVzG0TwG6Lfw+SMvtHskIq2m6Wp+kag0mCCxOWkS90jbpTmtoObthtNDGu
	 3fCkLSSQwnNV2KA672vDVf/5JTSC3dQ1qGYoh+b5rOYenD87/8oLzR981mFUBXWit0
	 CLuEb58cZjd0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2756C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554963369.30948.2768606246726121486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfb308dbe316ef4b8c5f6aede1b3cedc9f8a26415c6840ba646f6b29e0330d8
Date: Sat, 01 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785549633
