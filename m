Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FA61925BC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770606834; cv=none; b=iolEKO1vtlC/Qgfv3z+ioTDIpELniodPmYu+CCnmxCW/tQQFoKzdqVStYq1QYo17IAv734MXEaLt7dWIl1Zl6wnqSEeqjvw3glFowFrnECNLcS0i/eTnNW30+uN4QUFKdR4epbapN42Xgz4uZ+rOIiEdOBNri3F/4IJiIVQczxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770606834; c=relaxed/simple;
	bh=E7C7ls9xxEbt60wn3jy7dB97hF4UQj7jNUMYr3WvPoY=;
	h=To:Subject:From:Message-Id:Date; b=SGpUCEmc/m3uAcBP3cZXqC66dkn92opLj1iJaYKhFmhrNxpRNr1fgrdv493erUiXPHScMl0W8ywATmw2eGzKUYu2XLM/RmoHPEajGPc3H96SmjKrgZJawF/xqdLhqgqQ+OJqS9gBPR83Lnx961bw50S12ZiWyf2hnXNCG8jGt1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skmlUh93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skmlUh93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3224C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770606833;
	bh=E7C7ls9xxEbt60wn3jy7dB97hF4UQj7jNUMYr3WvPoY=;
	h=To:Subject:From:Date:From;
	b=skmlUh93ehP6gt4trEvNifSERH9E2G4vJBBxwiLNU7oLjD1VDl0IvCo+aUW0MjffS
	 vKLFivlQKZSafgQT+wNdp5BoszZVXBslXaNQSBFxAhoOl8s1PLZmEA6tK/MZKSwVdI
	 RkbfO9WRkovAc23Ul3EAlIR93QqKvpAN1dTk6PcbZjGtyf7sUXiCTarul6hq7LOLjd
	 F1pB9tvKbOxU6STViomwqaGLdUWrlf7DajfNX81wv6JCS1Gr5IsPwbWQE9QXLO97Dk
	 2omIsvZFkpv9fbfbs2y+07DJwWnEHrqwHkI+8jjsZX9SXOnPqEVPvFnXEiNgHicjuS
	 H6Z/QMFuIhZQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2F0EF06EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060683360.30495.16942254203527491591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88dbc5aa3f11ab429e55f730fb90c4d9faba00b5d19b66bd5ebae685f9b8dbc2
Date: Mon, 09 Feb 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770606833
