Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2777C26299
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777695454; cv=none; b=H4v5wluLadckJOFhneDiVFp+Qyn8jjCQ5aq0IYsZNZDRvCmogdYAneO9gzLa93ZiYpIB+nLkLDAPs+5wzfHVhjktq+FQyWhKlhjJH1TpYHZNIUSMeTxAqW2myhQ/4QRGLgKuINMhde7wNElWSIJ2HFXFA/KYD6vzMNWBqFkLbWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777695454; c=relaxed/simple;
	bh=invFhU2UQKwumpKVVm2dZ5ob8A9qaJ2irAByhde12MQ=;
	h=To:Subject:From:Message-Id:Date; b=Og2wiJNMAf1Rp2i1r5YJCviMCoFmrZJPc8Tq9XtLC6gDzY3PSIMyC3oAl2entco/mjPwLDo92Kd7S6PcUajqiutgL5hQBn6QCi1YaU28G6aogOtQ+rObsn9+YdbMLm1U+68AsjQfOqUYWS49SaWTDJDJV5ddQ/F65oZNS7z/oxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZG0jElZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZG0jElZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0092C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777695453;
	bh=invFhU2UQKwumpKVVm2dZ5ob8A9qaJ2irAByhde12MQ=;
	h=To:Subject:From:Date:From;
	b=ZG0jElZVc/BGGC8eoSLCQyG2kxezlh74v34uU0gpZRsLhZu9pp2Oav815K2oAe52Z
	 d1DfaWFDlVUABbB7Ds7/SFMF3hYnNMupF4KCSk0stsBsUqX5YbvZ6DFb5i72vZvAeb
	 5oW9MSOdxdZaHUuzkWtpm3ERS4Y0dU/1I5Oz5fl909dgcJHHvcLt3eQ1o5mdj5AyTZ
	 kusHjpvmffhN/E+yVv7jcSngT0jJMGQoJiWIyHkTAPYb0G9A0xNE1zvZipyzvwrc80
	 egVwzqqHLT8KwoLd+9Tyqf1azGauJt23GtsYM7qgxF/RQbZKTo1WDjS3flgW8Ni1BC
	 SmcRz66F2OuGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA36CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769545368.16727.1664182058583061501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b285eb68edfc6ae42ce6b929a207c04e1218c0934ae455c57ed934703ad25702
Date: Sat, 02 May 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777695453
