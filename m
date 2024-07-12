Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9689C16191E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720801763; cv=none; b=UfvUKs9rsFRlOvP5iTP0n9duj7xHkLMsX8BntiWlYz78F7ajlbyUwgygOWgXdfmGbFTMbVcVNAtsnUa8cTEP64C75I9nX2aZHiafgg18EWgzJwnxP1lhoK2zS5TzxJXgJaD72PDCxadHOgxWvFM4UcMqqMo0loOfJ+pLMcYI9cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720801763; c=relaxed/simple;
	bh=qGfQPMyctHF9DlEqX8skSCFTiLCKCNM7qL+BCz4GOYQ=;
	h=To:Subject:From:Message-Id:Date; b=M1HZFBMl2vxlP5eRla7ljz//pEFWIAit2wh2HZ2MPm6sCxQY+hAK7raTEPQuzZo17h1KQTUoO+N7CFqgGLe36dcmXaclwyf8pGiD2tPnCYkWxTZ7gWalS051g7QIUoqaZt/QNcjJpP98qN/tgJsIurlk8ScbgbFYm0qjwn2ZQac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPqyCI7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPqyCI7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10955C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720801763;
	bh=qGfQPMyctHF9DlEqX8skSCFTiLCKCNM7qL+BCz4GOYQ=;
	h=To:Subject:From:Date:From;
	b=oPqyCI7raUpNTMrL8q9MqJTlSneDHqvep2E9kU2F32/eI/y0Jrc7LKgtSkGBLU6vW
	 0SFG9DTd7UJygrrsRhvEGivtjGG04zA7hB4SCvWh6h5l8Y9MkhzBPaJSEZCBa1xzlg
	 v+x8R/c5QxV9dgR9W5XxbZcZ1vNkYky+VgDRQlw95U9z7EKJDkGDlSr+B2S/B65eBh
	 xCVuBroMG5ZR1Mo7I7JIxoenapUIi4hBfJpuLebQNFdgjpRKtXIQlk495L8mbOqVN3
	 ymfqmIneaPjpx3DCbH7CqluTs678+1VctwDp4aMbpslZwHeRlGShBQy3Qz8NJp6SOI
	 T+0f/NyWYBaOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9B60C3DA50
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080176287.13792.3769699506587353196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7b68c1912747cb9fc5b250484c2d6350682fbb0356cf6149d4351f4079f545
Date: Fri, 12 Jul 2024 16:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720801762
