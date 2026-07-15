Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F387436BF2
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784108914; cv=none; b=X1DK8toY+YsAz2FqeJqaNjnkCPW7uAnkUzAdePzR8if45LZvpJfZKAWXYrLofAxf1WjWS6f7UBupI2Hi8OOG3jwwEIKV8ExSAxz9Xte+lA/wNObtmn+7JSPnK2kxkABWLTkof4U+dBJsFBjtBsghWn6KrYmjrfSYKXwmtjTCkX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784108914; c=relaxed/simple;
	bh=HiqPS7M9naY724YLqbNVYzSpACdR4oIFDXUAKKPNtOw=;
	h=To:Subject:From:Message-Id:Date; b=gJkK6HGjU5efcjv55XPoUhxW0euP6gQUmwa2YYfEEebyiNqB9zl56OK/jYt4GvoVPu/4NH81sTSgyAa5qfM3dGyPXWS3bk7n/VhixcLQYdgU62BfkcZ6ftUNJHx03bAztzbfFE3nisdQEqnhtEBapqMkPHfyZMPUVh7zkopRf4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJ8d2baZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJ8d2baZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D980CC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784108913;
	bh=HiqPS7M9naY724YLqbNVYzSpACdR4oIFDXUAKKPNtOw=;
	h=To:Subject:From:Date:From;
	b=vJ8d2baZnyI5dT2bK+OWJ092PND0l4xROyPV17xJrKMhKLkgsfAq0X6YVkO05pHyE
	 mEtjfuX3HXRYhyedxh7ozy3TbA6MVMQ45NcmNRVo8/roxo/qEmF/3z+E4crj73SbFn
	 SPeUajibAspLM5+b3mgPKHkb5Q/CXcXE5ni7gj6B6pyiPAsQgi9QSsNrqDwPhgsiK5
	 vPF0WoSXubwdm2IgDhEpzdVtPCEuGDIzB6hLCwF4TR+2RtRRIPyiDwaydqKunWGQud
	 RBs54Nb3qXPWVO7PumEytAUY32PLoGlUv6X7UVt6E/uviITkvtffw++qBGlrRgaUPc
	 5Lv1OeTrJ08tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1594C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410891370.6664.13796187633370386636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d936bff892f7ab79326ef26c709753cdef3726c22646538558ba91275eea519d
Date: Wed, 15 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784108913
