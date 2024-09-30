Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D2A79EA
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727665554; cv=none; b=bqBcy84DFEH/f/wm8kSxllbQFjHhDjcThhmguLJP47SUtjsriqf69a5hMohYEZH9MxQ8YGk5vSrlaIDuq6fjJiMwfaTRi8cm974l3jHimHLqgShXX+ZUvx7Ber/IMYHZRx6V07Mpx/ZP/0EJq3T094U+FYYAPIFSY2WuVMBBVB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727665554; c=relaxed/simple;
	bh=BPMjFe0m0/ZbjPeXZbrLkIfxi8XkGv7nAC7XUaxCaLw=;
	h=To:Subject:From:Message-Id:Date; b=o9qhI3j7WTKyToPW2o+fEChXAf7uzJAMcuHTqeToaNsc8kkGUMV5THCABlC2TGj6E0oQHG890Z/4xH+UQv7rYpkZsYNUsrSz2/M4d3115fKBBF2yvKjFST0bTwxtCjJqXrQ7kuDc1IDL2zxNZgY0vOcY7Uowg0PcOPhaALmMqDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujQcOCfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujQcOCfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A38C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727665553;
	bh=BPMjFe0m0/ZbjPeXZbrLkIfxi8XkGv7nAC7XUaxCaLw=;
	h=To:Subject:From:Date:From;
	b=ujQcOCfwlkMb1GnjrHdNMGBL29fr3OYUQmsAxhBvPbQRcDjF/ou6IuilyHKOfnddO
	 0wRm/bT8fnUWLyLKBmblv0R9eTnOb0upYtj/is9Wiv9obwR1U3oMNO9ZqkIkgWpZXa
	 4yc/zvR0taA3MkTnh8tqe4euWQxSWefbbfGq4JH86snsm8yeeeHypjU7uMwVGQ/c1c
	 5pG7jbt6c/zRiVTYcsDmJwbWgdASrLeViAY41Wk90miBmOJT/82hDO/JaUJarZkag0
	 dRv3zV1gn4KLKLtFpJ6qUNOCW/aCk59WgRDlRLpvMP2mRIQTCFormoeT1kqWWhlkmO
	 vi5uiyvruDlog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995BFCF6498
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172766555359.10319.12082835261513081865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e196ba30c0401a419d12e9d4f9e7fd0530843e885340872d94348fe7761019e
Date: Mon, 30 Sep 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727665553
