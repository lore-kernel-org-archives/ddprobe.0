Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085573CB8F1
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787485835; cv=none; b=l01IozuKsXnoWH3SOy3QHtf0B2cKJ+ISNzIypYxcYHQMKVovM/LEqi+Zd3k6ERK5YnFCnwBexNZ+555M4cwDAatZppwFI8TkRbMKE84PHmNFmxLljuhYuvfcPIcYGSMHQ6MUM2dSafekFmyrCv/Uvp9FXYR3ffctnS/JfLtUSK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787485835; c=relaxed/simple;
	bh=0LPOM4DLcAZmnk2Q1pOIxDXZzR5cvczkt/EjKb8nHa0=;
	h=To:Subject:From:Message-Id:Date; b=emmc4D8jaEX7KVtK65JFsYW6lAja47iHJ0b6/Bq8Tcp0Ld3uYLJVrvsVDd+XSsMjlYgA3kUUPFDzlBYmJkfl81Yqk5bfKiQHxi8b77Gq8nwlbkK+FKbB05Ci7PpPHSgh5oZ96BH4YIHXhynWbmSXakh+GaiFOg9BNNPbZbSB+Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiEvMqX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiEvMqX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE49DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787485833;
	bh=0LPOM4DLcAZmnk2Q1pOIxDXZzR5cvczkt/EjKb8nHa0=;
	h=To:Subject:From:Date:From;
	b=FiEvMqX0Sncs0I1BcxElkJXJCJKXC3mEZQxJbgpg9v+y02taZ4H4MmLXRpG8RiytI
	 h4XehcePZpEuUqwaFwsL9fQRablTd7mkj9+EGOY/xwv7pg4SgVZMVnAahsvCX16Hwz
	 3Q9V2ljpn9cxAgTVtYupscflpTam5WvfpJIM6fV3wxV3x6YxiR4k68P6E+DrW3bcHZ
	 +vHV5qorlGz4VjliwsM5XU3unUbfhKQyu6QS7j2Re612kZhTW6yqFttiK0gcmNzM+8
	 Eo7/1a7MTDDr08KZDvWd0fY/nIYnqby/pNqbjyDR+gSlaDgAptzSQqJNafx/fc58Rc
	 KEgHubOXETEgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB8BC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748583369.13444.537922006321562687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db848f39636c3cb3a422b85f5168b2224cbe765c383c6a3ceb0ffd68b349a6e
Date: Sun, 23 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787485833
