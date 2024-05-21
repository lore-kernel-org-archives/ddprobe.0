Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5D16125
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716267143; cv=none; b=GOVm3PLsW28rW+Fse8mYRLkysZQ8jR/d5FBRB6hMpk6P0Dn/wq5RiAhRvyhz6JICXmpQY3BjvOhIzgdIzlZHFwBZQt4M5U6V5VuypXoIjZqQd5lGjKSKIUPDvHDpUDEBFJHnhQivIJuIApJfBUO3dJydtY6uN0yCqANF3O3fMMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716267143; c=relaxed/simple;
	bh=lhOW6dO5+ipKkwm7pAXIeqfaf+S5VipvqKwDIX7phr0=;
	h=To:Subject:From:Message-Id:Date; b=fO0pRb5cfNannrJhXVAzG0twy3PXB7+lcsUp7h40xekAgbKMcZv7ho6YQEppLh17QzVfCtG277vcUYaj5S6VRVlFRTRTI5LbJTDj9u7u3tXvhBr/ymLgHm9F3slkQE+YuUdSM166/LlJNAIGLUtkcgY/NR2VXQk3P6cqpi8rvPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Asi4sGyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Asi4sGyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55FBC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716267142;
	bh=lhOW6dO5+ipKkwm7pAXIeqfaf+S5VipvqKwDIX7phr0=;
	h=To:Subject:From:Date:From;
	b=Asi4sGyWreWG+iD8UDFzwTZ5MRtwahbQkA19GQY89gfKLJSjzlHuiL29If1Ffxn/+
	 Qyy0X6pyH1F6OIeP1viU7OJvNXTuTzxzIlO0kBOgHwoI4H5+3eFodsFFAq1nrXQUX+
	 M2Pzh4eOD8EUnGjlnhStSk35wlxugEhEWLSWbs7JFCihn8QBYLIq+w636uAGZzAp/T
	 +n2vEnb+9n9BJxurth2G3FkuFFbeuIci7xYLfQl/1gKGJOk0Xkb/k+ZI8FH+q+2H+9
	 p9LbD3jDNhxtyEQfc9/pmLMYad6qdnXBtgks2fEOTf8rh36rAUX3Mbzrk2hwx79zUf
	 Dz6rLDRyrt2Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D35C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171626714278.12342.17990563660410633784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb745ce7a05d372198badefb3deddff439f32117a0942f9f836b8ab41955de3c
Date: Tue, 21 May 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716267142
