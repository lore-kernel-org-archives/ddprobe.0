Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D183749FD
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782320854; cv=none; b=Fad3h5PEoQdkmabKIdTvqojHhifX+1otzWLo+WIAeEkGgsOIfx+cPKkBhhxGT6eeW5IxWbmdKsVsADOJ+1285w+KrB8py3TqHpfUNaUEiSGijkYW678fDf6XycZX6NVhjqtuY7eFZJv33tPuWgxEVE39S+OG8Bhm8V9H0UvLeZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782320854; c=relaxed/simple;
	bh=PoGI10RuK8bXFeSQFo7aM9QvCVuhLH4ZtT0BQ+ZrXBM=;
	h=To:Subject:From:Message-Id:Date; b=VkhrUIE5gw7Imh3l9nKgKLkFD8zlkTNjeKb+AZuivp9EuDtImwquRqWvKUT9EoNkPXtBxB4ghd16oM5YZAULgdBpLwwHDaFOOpn4vhpdmUF0vFiqLZBXWQG47yxzoEYDmPCHXIMEPOIVJ+4U9VNFFruXB5X2rwkgRbLQvseHLy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ho8BhXwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ho8BhXwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA061C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782320853;
	bh=PoGI10RuK8bXFeSQFo7aM9QvCVuhLH4ZtT0BQ+ZrXBM=;
	h=To:Subject:From:Date:From;
	b=ho8BhXwrzH1NRmocS+XyBxvhoxcQkskToRbLydpAbRzy6/mK6mLTXgzk1AfONgnsB
	 oCOv9KGlODrbW7S516bRCb6NrtfqMr9JCh0jq7nN2U73pKi+3m7cN/t3mE77jbU6XU
	 xmvHNFd9wLkdBjdytuhbLTWfm4Q6JdXPkNxVKditscN8QYRs7joxE+f+Nq882IqlEV
	 ZO0r/SlOIoVwOCxMS/t6TcofcOo5xh179UgDXMtoRfRUASnEZyg9M8AWDSIdO1LJf9
	 havOxFKxm0lTmgCMeSd7G7cG4aTLfY7T1k4zYCy2y4eAIJCECFVeY5w65zCSklxpGa
	 b5rSG7lB0xqlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD048CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232085372.24728.1918500056672704475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f566a57ebbebf8eca1954a38bc52b812d6e5077a88b72e71d7aeb09a7a3e901
Date: Wed, 24 Jun 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782320853
