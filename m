Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FAF15990E
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725710754; cv=none; b=mt0s/iI5PCLcxY86lhyRxOXhbUqCHcO7kEEkuzuqTM93qo36sBJQ/qLKmiBdxGbdak60FgQcu1SlHdiYPUzTMXW5jqbh77cfjVgUvzFOcV+FlDn47wqTPHZSrGI3LE+i/kMXhka1NzzLRAxLuksy/O51FqPI5mf5HI+Jrr+yOaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725710754; c=relaxed/simple;
	bh=m0M08cBe4gEnfgnUYm2BmHMv6/77G+jJFHXaPyEsrfI=;
	h=To:Subject:From:Message-Id:Date; b=HQlnvQlr8zrZnvyYFajng00uJsIrFNkyyHPo66IqjbAAiRoPO+6dGJgm3xnmHeKI5Wo64K1nGf4lppFs+txy7vy15nt1uKrZd1vSZ8SvtbX2gji3hTby3wjSD03wDfjMFrxxp+bjX3Aadk79uGEMma7AurJDv7SVQsaYnrw0iXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1JHS0+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1JHS0+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9791C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725710753;
	bh=m0M08cBe4gEnfgnUYm2BmHMv6/77G+jJFHXaPyEsrfI=;
	h=To:Subject:From:Date:From;
	b=h1JHS0+q6t2cMLhlTtpf0N1slNaapbUBDZfPEty0DMbxNnaNpzJ6LbJd317IdCtjd
	 Z14hIgUDjONmyvrRuN1TTB6z4evDro4EC+BQrPqZ0O3ThdL/STXYSxfjgJI3HeMN72
	 NEQrwTmhcSsDDMTmqr0bFI3v51WprBUZ8yJe7+/Yag4c7igPbGT9Ic+B29mWsyl2Pf
	 oskHSV27raXSBFUeGs6JeZaJ2nGMQwQw2UVBXH6DKxxYKZX4ItiPhwpgh0ijZZhnvu
	 mdJWYOBmf9zlmhA+Xu2I986yHLMMKdr4aCuqzMoMOnALlKX+BLIUhXL+Qp/3EoghzB
	 jhO4eWnJvi6qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7948E71080
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172571075364.29311.14059246920110582850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cee3a0e640539eaa7d598fcf7af2b3701b1c8af7eae99cc6fa11eac847e198
Date: Sat, 07 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725710753
