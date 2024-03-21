Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA311C05
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710995297; cv=none; b=mNzTeviwDKVZJlpiH5xLz2Ddw3WjVqk0ujUmdlBxx/go+PjNsw41J+5HzbIqs3Q/Pebvn1G0/FAY/jQmgvPeUAsjYG9x74aCTgbz/M4gONAphoX+hOUTPX3kRVYtudivlNhAgDuvaIzto1wDgKWAZJNN7WRvG2i93ZLwY42lyLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710995297; c=relaxed/simple;
	bh=kOmt7HDmMKt3mndCMQe86jnusmQfSRWoAqE/PEmN5S8=;
	h=To:Subject:From:Message-Id:Date; b=QxotDej3Ke7OPOYHMWl9zPECFOUHJ9J9U4NkOoxzG4IYg1G8IHu2gC/oG2fyosg/kAFKQW5jV26yGCOcXVvFmvwTQdLhmuRjNMWymX0J5lcRDxb9qyH148INZi8rKQETOHJNp6pB0rOuPzB8WbM5KX1zlP1QWTQ0F8Z+8mmi98U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU05MTpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU05MTpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771B5C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710995296;
	bh=kOmt7HDmMKt3mndCMQe86jnusmQfSRWoAqE/PEmN5S8=;
	h=To:Subject:From:Date:From;
	b=kU05MTpRIVzUqCnY4Pz4qCHV0wJyf3oj/3jkv68OneVeBwCzfaPtE92memFc/XqRl
	 hdi4dwOal6ukuPQVCSRgZTVFjx0uO+kt9Q/ZQxHVekv7wVAqAenLF1mYE0xpcbEvc/
	 c5STGnWODalCVJr+ywNKztWLv0qBX40yvIGZuynol5cmHw0BUsHE9ekWoFWMx5WPyv
	 ObEhmu0xG6GgqJnUSS+/d+hFXpkPb4mB725ZSYoSK0HED8iw4s09lLfpKQdhHPqh3V
	 h5N04YtqWcfQPTXkykK5XFjDTW5SLLNLvFD33HgbKH1vt19+zjQaabvncJx1HNYJmh
	 6QGv+IJhbEROw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685F1C54E68
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171099529641.5181.9412324162841163192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13de68e7fd986637219a64d2439f691b37b7e56e9258776f3f559f919bfc546d
Date: Thu, 21 Mar 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710995296
