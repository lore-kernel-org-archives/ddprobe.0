Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBDA14F90
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752194994; cv=none; b=Vyr5pBUmvH0khlV4N8eUCtUsqjMsW7PvZmXsZFzHplJ0tFnX2Wo6ZFXJl2MNjGGdO7kpwkWVbsUyzUzYslsO+a/7eDqB0Bd1TAM92qUwG+7tk36GtCozGeOJOBd7dgbis9jGnuK9Jc217nPasJGniQEY9q3UdDeUsw3GkXsptNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752194994; c=relaxed/simple;
	bh=CWHZpec2nNsto4YP72qlDxt/pSttlMXJt3WLZkYEiAg=;
	h=To:Subject:From:Message-Id:Date; b=dnzshgMcdInWIpcaBY3ez6lkhQVA9q4EYMkMAFgXH2lXUdLk/QDMhb6m4Sbq9+rsWnBRG9lZEPa8DToRfnhIHYlY/X+b50Ku6cb8VSc3+Lh0kYNzasWgGWo+XLSqkzEo+8Lm6v27rkwmh/s3ltLRt/tYmhd+ICU5dN1d9FeCiTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJAKHJSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJAKHJSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31EBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752194993;
	bh=CWHZpec2nNsto4YP72qlDxt/pSttlMXJt3WLZkYEiAg=;
	h=To:Subject:From:Date:From;
	b=uJAKHJSWBXADTyHTNgw/QpndJdyt1frXWknLv5dXCh4dvfX585K1RSNgqDayrKYAW
	 YN56PT/GxtWGxeQnRnuRDS1k3g8J9R+5y5YC+1Pn+ltatnoyXNrlKE5pTA0z8pbDHB
	 Vs9aqcBHjimtXRCCCuEYl4A4YwrfBxDkMG/ZbO4AZDlsOcOClr199G9AfdmDb+JT7x
	 CQfu0j3fltamDCnIjfnMw1qv9cwlW6wSvyoXFRhy1M3sb+pQHP2/V6CCWfKi5kGJLU
	 ZJQWBhveuL/UNlaIexDD/1WmyNFzq1r4tj5ibT84KwD+U2xXU7szUOfUwufOUh36bp
	 gsb0CedPPX4kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22BC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219499357.21370.1709268429288094799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf03f26e18ef6c730d642b51fd463a05673a9d72de9c66726bbabd34b4bf583b
Date: Fri, 11 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752194993
