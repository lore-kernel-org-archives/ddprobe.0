Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9944238836A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792045834; cv=none; b=Ow4551NW2IxaJpo4oIOlaHc8yQXFpJNM0O14ltSmcuEqhrtiWtL3folRzfecDEIUzYEUbcBd7y11J7HkmI551JA6EW/UOYeC02zV6ixNEONLRpwtGT9cZlKWeLyZ7yyAYF0tFQvNOoMrgf/pc3Bh9VA+Hr2RnjMmZnz0MD7pn0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792045834; c=relaxed/simple;
	bh=XrZz/8fjLnG1izIIlVItiePf9ji/EPlXA9bv+g1qmlU=;
	h=To:Subject:From:Message-Id:Date; b=DKwjyitsoi7H3JAHYu0Wospwu0Q6HHKq4IHdKR3rxfAsMGwdDrCn7WCmVWBuf7XfnIE4vS6Ue9SYDH4iX37x64Dpr0mTn61lBsuI674m94ruRVCiIytN3TfboSGTGIJ/dwYarC/fW6CcSSL0t6dmqMeYyTQVZSZYBqRj1ehoR/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cx8KwCw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cx8KwCw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E40C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792045833;
	bh=XrZz/8fjLnG1izIIlVItiePf9ji/EPlXA9bv+g1qmlU=;
	h=To:Subject:From:Date:From;
	b=cx8KwCw9NQUyK0LTl1SJsvy3JrIba4cxqmna5QGx38Y43WavMvFamMOFeprsyW9MN
	 YKA+NlqXjkXigSW9oooblOcm+VgFYiuu1eORTzBd8k0FVfAOczWvOuYlf3wKeWvjTD
	 aWCHlIJYym3g905CT1lY5nYtI1z89FUr/MY2unyKF1LlNsQO7Geqe4OrhHe/DYitG3
	 he+JFBT4umnVSOfcoHKi+j5lnB2z7pAZ18gZO8fIQa196VoB3nK5KTYO8Ng1+1/J/w
	 0NGtNBFKRCxJEFgT3keWJLZwq2ayMKqm3tpkRIoZFQsKFCQMhXZ1aVblQV4fzzA/fS
	 /3vHOXNONMSnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFAFCC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204583369.23523.17203875187258973315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fcdcef77e663fa9b8d050415c6ddf8e92c202a3dad31d22320a2252089cbea9
Date: Thu, 15 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792045833
