Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5DF1B86CF
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722003354; cv=none; b=ARrgt2tZNo2hRfwR7rmQUqjewirjxbKqvoa9H0azZLGdLG2NPQLhGDLDDEwjZAwSVbF8KVFftktFI8J8Td0wz39FLTgPkLnUZaTgrZQ5aKhGRzeJaPjAVaUWR4MZ04q8mQqKlrbiljwJMjcpt0HTEE7dRp1WsPGapIOpK0AdTS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722003354; c=relaxed/simple;
	bh=6vyN29nTS+8FWSURL4Rb4ev8vMr9QQorvMYUxSgU6cQ=;
	h=To:Subject:From:Message-Id:Date; b=AwegNsKQnzbcRAImjEHbPyFWHD5Wkb8MXF1068YWhimTcIrljwvJfCHjinH+JLp/hOKXGcUZOPtsMwfKcaI8yueZZXpBpgg03IE/iF4C1B4q9ZpfV11UOag4k/8/90eDbpSe7kOlOqqOzcpG6qgejKsHSq9gaCSUaMkgIdDS1RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/0mrGug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/0mrGug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7863C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722003353;
	bh=6vyN29nTS+8FWSURL4Rb4ev8vMr9QQorvMYUxSgU6cQ=;
	h=To:Subject:From:Date:From;
	b=V/0mrGugbXFpMQq9s/vjNYvNfWGE+fjGdD9tAj0eq/xttf/aMTq/ZIvZjNbzCmGmJ
	 zeQdSt9hXEbQiXi9Iw+Eciu3U//FZy9JLCZc32fmKmv7awKgUTqG5I6HiokI+bleV4
	 U+fP7BfmLyQmE7Wn95QvXE1bObBpKEbdiFwLw1fRO/cPlE0QEgQbWejgetKJ2k0FMw
	 1L0y4BAvZbWTgKdOfvtNXeIndt5SLhzc7OXfRBp/oKZPd4uB8L6Ex77pjCoPUA8f3F
	 5ikK6OSxN6Jk+xDNMx7YFIuFe5pkkTj1HjfLx8Rne9fOf5iDPyqsmUNMVDqvKrUdNS
	 R7vKCB1nMMltQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965D8C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172200335360.16874.8391122922357438945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81344154bbdb17828fbee3c528371a09947db0b966e85dfbb5b90b8a6219d273
Date: Fri, 26 Jul 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722003353
