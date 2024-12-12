Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2954FB640
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733968554; cv=none; b=aA9WHj6dgQJocrVFQDGTWbSnezNEaZUtUaY0KqNfQ46XswCMWDKSpxbc92WwCZOKzE5jvN6/E4/syjW0AeyCboXqevMqhLiM1ab2KntAwCDRXOOejVCnKijtW4fbnQJjvOo1pPr3XwwWBcIioQfHJ9l8W+V4YRWh+yAK2348tws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733968554; c=relaxed/simple;
	bh=R8pNLncHkcZTLrobxM8jgtfHNeo6r8Z/QX0SKWwCBHM=;
	h=To:Subject:From:Message-Id:Date; b=iu5WL/HumNvcgv1qa/vYx5wdT3BptfZ54VBdfLOfn1fdEZH8Xu8oJ9htY+um9IJcrwGudBXWWCn5Jfkb0+xbqAWvBEHYPUHTqbSa8j2NYxHlcplCQCCP2JzEoNpufMHDtayCQFy/miaIWI0MXqhM5mauAabq1rVdz6TSU2f/zSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0yzBOv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0yzBOv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB732C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733968553;
	bh=R8pNLncHkcZTLrobxM8jgtfHNeo6r8Z/QX0SKWwCBHM=;
	h=To:Subject:From:Date:From;
	b=L0yzBOv2Il60c6y/2f2320DNt4PVUYGT5b5Z8Ds09sZddPEg6FOLduZW4ittF4tqH
	 KntJG68QpiuVjbNGnnKVlTvzUxW5Cgk9+8XAnKOljh/9DZRFy47MLVGBW4J59Q2BA/
	 Ua5d0sjDLSoViX11lqzuwf25bW52f9Cs5zRupYzP8caWNRIt/ksKaOHxAhINzgIUnl
	 XoDKjyCztnmMHXSsHHgCvW3Boh97y7p/LKcpFv0oJXjCGiXHGmMUYF7/6d9hCrj/+U
	 am6K//ni7HhFXDhwZsRqTdcVFfMfYoazd7mJCOssHQ2lAjYJNORSSW0P+TDKgimj5q
	 l1RenWzJP6Jig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E9E7717D
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173396855357.11191.13875097364645002267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3c052133efa1b0369a57afe8fa9979748edc44f1a72464ea301f798af51495
Date: Thu, 12 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733968553
