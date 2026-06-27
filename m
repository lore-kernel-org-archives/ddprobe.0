Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404F12F84F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782530314; cv=none; b=LkWFhHZiC0oOpKpPZnmm9X9MlCxBc5J2r2MjyQc7qafYXD1pJ59r+xCFO/uqShwjWbyf/k0GzphTqYDcRql/dSHvJIx62/Mx4DlGCu/so61yd8JaOXTMPiiVyvoCr32BSCEsaHd+MPMJddIkU6DlN31yEGFhYVEdrR+AQcqmqfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782530314; c=relaxed/simple;
	bh=HHjH0ms04tdWlZ24ZMpZ0Hf9lgoVETo8D2yIfZabCmc=;
	h=To:Subject:From:Message-Id:Date; b=WbnhzHpM5PYfRhRcV9M+0Jh7p7gDS5zE5CxbgxzE8XdhrLT3hJz39qNtDtWT3Uwdf2NFeWcWt2+NEyGB81dsnRXDSPzLaYdpK6ny0X1q3poT6//jPNQejpX3FuCpCapPniz4rIp0R+cT/RdoM9LyNjnjOfjuUqUrIuarCbWldJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ralo3cLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ralo3cLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB468C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782530313;
	bh=HHjH0ms04tdWlZ24ZMpZ0Hf9lgoVETo8D2yIfZabCmc=;
	h=To:Subject:From:Date:From;
	b=ralo3cLPzMRvDYY9sRTuM9t7CRQ+PkF1b4rhs5G+sAbzGwr8lbAQpJpjKgk/Y9RZu
	 JjVJ+dL2sS5d5fdewDbkP+VaYGPNucp4Zr/zm6yKfuyVngkN15BFjy1S034mOFxAWW
	 nKg5AOdswsNDj2jFqHrwAjz/SgrS5x2Bx/5j+a2AXTQKImY0HfY35DDXma4pWlMcvW
	 /P30L7wgPM6SaBsDJ/RahKDauiy2iiBl5AdMaI/Pgs7nHGEtck1HZ4A7Nmp+7A8gVB
	 lG8H1/Jr/+o4SpffWhItuPckrXVc2ihi5qbrB1WWyEX4TreI/sRUjxQLt8WlQpFyT5
	 MJjpj1iWsu6pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0148C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253031371.16862.5960012249849001680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d94c783a2e83da7452792ce627e3afe7490da47f629c408fb134722f7883cd
Date: Sat, 27 Jun 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782530313
