Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2C63054C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792275634; cv=none; b=U4HIm31xyR4u5xYVoKXHHdJusBaSc0Jzn03rZs10jpBlOR7ir/tq6jxPQ60w6vgAYIOk1fNmXxuN6k8wNWywZPpgeP9Bf6d3UZ06qnpWSAm8o7ZSTEYjQyib8q8Q0o4vKZaWL+qQmoQv3dzLOgu0OCz22WvTUWdzr5dTJadd2Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792275634; c=relaxed/simple;
	bh=wSvoptYQB9kYZKLXxJbgRa7dPdI4wPTdQ36ke2YTrQE=;
	h=To:Subject:From:Message-Id:Date; b=UlXozJM8QCOEpj8XlG898VFQpEansknWtfaoXEFgp0NyeZ4s8dOpWx//sm4Zz3LJmPfLoPwOOZWAWpXPluQN+UcBhZStK5kk4XaXFhsCrHzRXNN6PeUl+z4NEj4343fQSUQZnbuy02uxOFCimJjt7Aqoen+vAnUS3TgHTAdclnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0OvPtuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0OvPtuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9778C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792275633;
	bh=wSvoptYQB9kYZKLXxJbgRa7dPdI4wPTdQ36ke2YTrQE=;
	h=To:Subject:From:Date:From;
	b=U0OvPtuVvDCtRuZMsbL3gQpQlBYDGdmdykNCiI8nRcdlrQyv1vYFGU49DckPqbPeS
	 ccwNHmYCOwO7b5MYXjGquZWFTU7+vXu9OFx8zAhX0SeMkfwTxnuUNilX0HPADAlZWo
	 PVhRuZ1fRWHtWJCv4A7ClVz33KdVW79rAT6iLiDh7v1F6zKtGLaEfb7F3Tij1A+W5j
	 81XzBO8jN+vYwgFWRczxNQMHSkFPQ5nCU5rE9Y5oMDCq1lZbEK0VsssiYeSFxiHmxY
	 yV01XygXkJahY7vTnyRtj+zmf6CRnBQ9EvYXviktWJEKTa9Y8RtlnpVuNRGZiiC8nF
	 LoSUKXoBhqjFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D80CCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227563370.12130.13511967515205626739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9152634182b617867dbeb3bfa0a2c6e297f4d8d3cf604c6dd43aa0e643faeba8
Date: Sat, 17 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792275633
