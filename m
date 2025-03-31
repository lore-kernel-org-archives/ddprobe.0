Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C888635B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743446994; cv=none; b=e9sLDZmy6AdWf8QtyU3QyuYkbadg4ncDCB+q5zImauUjkehyFcB1A6Kv1GHjFemyY++wDPTMFOCtmizTuR+agIm/6NcSjHTU7vnkDwhgPhj2OzGAN+a+asOnS2ttVgYEI4kdB/qgIdHdaOWk8vUJi6/oBwJq7e1nxxINURKP7sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743446994; c=relaxed/simple;
	bh=n9IK9fRNcdAMQYGVhHJDecfah982H3jyFifQyq98wAw=;
	h=To:Subject:From:Message-Id:Date; b=i59+09JttHsI3LUcxUf56JPZY0QeTXDFI+XtkvDEGX7e3SK/XTC4lzYf7eJR7vMwKj9LpdfkmqAbh4f3iiaVgmIqoGIayMpPbQ45Wc4Fn88118fRxPfFPCLQUaRvw8amvE1Zj3RzFXHJ1mfKsufxKm6E4ejktcc8BTfuiBMG/Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNrB+szu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNrB+szu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE4EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743446993;
	bh=n9IK9fRNcdAMQYGVhHJDecfah982H3jyFifQyq98wAw=;
	h=To:Subject:From:Date:From;
	b=nNrB+szuRfw3Yu8n2Y39maNhp2X13W9NGl39MEYeCgmvoGR6qnYbfDH+RjLGVFAAO
	 TRzJ7CtIT5cI52/jc27d0toMuLkW2YK6FObxPygCM5cLA+Icgmld7h4KB4SBfG8tlV
	 vmE90G+i8cWNN3kjAb+mqCx21iq6H7escr4ll9ibO2sa/yDYSvvKpYEIiwJVNeSSyu
	 TrJVEB9bCdhgNjG/4Lnf/ST3uC3QJmZZNBRx7CA59RL+UCJGsbUUXp+EDke+mRT9lS
	 Gk/DVwAgvZ51r2tWJ4tIUzvm2RappcLiGw7jagZUNWZt3yMYRLAAOCPUkiVuvxnIWe
	 vDYfNQBQP79lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57B5C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344699372.6386.3248243826607792956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74f7a58ab30ad2d8fd53414cbd9f0821f9a886be2db92e7d799d15f5f97e399
Date: Mon, 31 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743446993
