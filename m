Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1774D381AF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771062894; cv=none; b=lgCuAycyNKL0FZp4LVGiC5x16/jlZDIFsdk5JPhMmH1M9+kgS+1LTBd31vLxYFxCmK1VcmcUdD/02VDuZjp4JyHBkRONCMYQV67Wr7m4QD9EzCuBtz0kiOz6Eb2rEHXjghWxUiS6bCoU/N+LwwuGVMCiVnT0ig3EFFSHUv9phDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771062894; c=relaxed/simple;
	bh=295fJLYzPMSVOhXyxKFTc/e0r/J8mO2bX+EKyWOY69o=;
	h=To:Subject:From:Message-Id:Date; b=kdGoNNivyUZeqsSe0E2iiZ3SZhrzOO+MrUwqza1kEufrmIiQtn7xXNGEtwWgWfOr+Ywx5RvwbqdZzUsvFCuQoyYq7NSff47x+SAUjAqZI1EYHN7EV2eOtmUxlkOaiAPKVkQMYL/z7mYHLeDmATJfvCpmxDRW4FnNMWmYa/JgISw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXfn7gSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXfn7gSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE9C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771062893;
	bh=295fJLYzPMSVOhXyxKFTc/e0r/J8mO2bX+EKyWOY69o=;
	h=To:Subject:From:Date:From;
	b=CXfn7gSNb6p3LyibrxZ2pShrmQZZuS/+3FgranFjBf9cyGLmJfMBG+ecR1bJwoDTi
	 M+uT3Cw6ObwxhXbAiG1ecX6Klh9rmR05sz2c+f/V66nj86goruPMXn11USnOL0eQSM
	 uiQEUzJxtnjj/zJ6IFA7SB/Ap+TWu9tIkj7YBTipIOGwan+eCFhHFJC+yHHUlsxwZ1
	 qvOdsj/qhWciAyLLiOrHH5asBO0tgl4ihAYVw6v9QlhrG1nL4n5YWpCJyDchGVr7r6
	 E4KIP+taZxfgNT1+nj9Dv1JeZlxRhnuolNW+29vF31Ni+a5EK3Ln+xdmj1GWKO1cB+
	 N2cVVcglMPSZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937F3EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106289359.15195.5207023756053236455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf1d6fdf7831005bd4b69d84db30f87795ab60b53fe45cb6462a2c3beab7f13
Date: Sat, 14 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771062893
