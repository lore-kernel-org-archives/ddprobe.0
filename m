Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A147BB01
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722206754; cv=none; b=VH4ANiIv5cMuY+h06YmA9PUjLv4w8NbgrNqHV5QUsOvlC1DlCyf+CFJiqXmRxDnypnCDtBzR5wNvFMiGh2EA0GgX+DkbjlGMiUtuNamttECwa93nfh8YHq3L6fc4MkrMy10xT8HzEu2VaVXorkfhiYUVUEgjwLQrgfKou7tG4rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722206754; c=relaxed/simple;
	bh=56ZKWJ5XshFb0+TV7B6uTxWL+qOkt7Brjup0a6ugzrQ=;
	h=To:Subject:From:Message-Id:Date; b=M/kJRRFDR8AKwU9kSnQLYEMvq/i3j/TcEo3WTqBU5aWbQtz5zLEKJJtSb9rO3hUSxN4+woRxRi6cvgq4sziqM/1hOVPNZqGSpGazyTM/8Hcsh6K4fVLPewu78+Iup12Y5UvfHjYJQg7SxSUAw6GpyK1LTqiYIFzfIcErqQKHgUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZF5TBPEm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZF5TBPEm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB3CC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722206753;
	bh=56ZKWJ5XshFb0+TV7B6uTxWL+qOkt7Brjup0a6ugzrQ=;
	h=To:Subject:From:Date:From;
	b=ZF5TBPEmqQ8dotCHXI2oBdLXBRPL78h2AhhnsZseA0cYRAta9Hge/Ie8LrRnwuG6E
	 3Itq15eMXXdyhhwp1iWj724KuTprxydWnWj/UT89xER7s5j/LnT5GsFLmZDOAJq90D
	 VzsDWrg9wgNCoD72TF5q/0LmueMlopYIIjSzvTvER5OPEOcJ6slf2RUFQmVopMH2nD
	 MpplFtpTNhQAE5TLvdmCIfvDppPfiG4s4eyVifV8ykg+4LkGTcWALntAjnP74MkTND
	 mz6dCp1IfNuNZ2TMXvbEwZ1f4yNICVXySHXwTNTdmce8QB09G7W6oDHvcSxy/wNFFY
	 NSJ/RW67TiVQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9976EC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172220675361.1070.9868253787012381498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339ed1de309a641a9c2c69643d2ef377afd335840c0f924b52ee46c3fd478c0b
Date: Sun, 28 Jul 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722206753
