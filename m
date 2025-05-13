Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B28D28D8D9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747138194; cv=none; b=pz0FlqTW9ulxpK4i4Y3PzBXxO9eag/UmSvYc99rMqFITIEUGxkaI1pix5xu2GvBk+JpaLMU1giXGpyAdtuDX15nRVxHlCybYZQFTEdHwD2R7/SEnHo8q9yHzOFCPSe9kCYyARpgBmXqrpmp00jcFlKew3sPSAnITIreQcbhqy8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747138194; c=relaxed/simple;
	bh=CWVKX5jBto6pFSTqjEOg+FJxQaNBeX+DhEFhqL5Lwyc=;
	h=To:Subject:From:Message-Id:Date; b=c5eQaUMpvBNa8WalZdw7un4OEhJaq1BDqBRy1s1ACojQ8QPK6/Gx6K0xx8Yf4iy7BkN4hlshNdDDcjVTB1ghFz7xuPsRhnUeWqs/2UEIIL85v9zeuaRu76my1G6ghB4/6cp93CzdvSKpmXReDnuQT+uqVwqwGw3GWxPDzi7izuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kki9Ilgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kki9Ilgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3F9C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747138193;
	bh=CWVKX5jBto6pFSTqjEOg+FJxQaNBeX+DhEFhqL5Lwyc=;
	h=To:Subject:From:Date:From;
	b=Kki9IlginEt3cFX8bYOokNwgQQhaT98A8socOMtDzkJ4YeAqe8/rz98NK+rpNIjoD
	 dZfDx8niOjxrqvXp1qP/U48gzdtGwK6CH7KKe8K2O+MxIHDMCJEDfeiFVyQcHOEkOD
	 XEjYSJfqgOBGIR3u1aRoDqsEkYoFcyhinDcrqFQtqC6dpNLdLfKtfj/lo6wazVS9qA
	 Wl9asM7h29+yQoUoyUYthSmTBk7TYoMgfIBZbRNUNzgT+yzRpz8hluHf+URHnNq7Ha
	 6AYNm7gl9ZCkeHQwuLfm71EPRxxVNReqEyzisy9WShm4yMJBltz0nKAuUHBT34BCsF
	 dBIEvHT4nhvKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F477C3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713819357.15495.10244159883079674547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d8f3671a7bbe0d3e9ce1ef912ea7ab2e8e460b209b28a27302850586519cc1
Date: Tue, 13 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747138193
