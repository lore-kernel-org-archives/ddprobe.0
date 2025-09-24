Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6D01E5206
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758681594; cv=none; b=MYQTww4cYorzjMFLiJU3Hat9FM5BK8TXa8HU0AH7RMFhfnDH9Nyu4FfV3HfsUrHpqdMxdg8w8Fb0aFTM9dT3Gl9bPIacKp1FngIuX1YXNUXRB/DzkxJEWh/ijTbCghUsyrXK/aUOL/V/YiekGrZ3xF8amicuDBOv/9/eWWEwDe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758681594; c=relaxed/simple;
	bh=UWUSBMjiWZdw9K0onFf2mnDBrUabz1xaCZvIEUiN8Nc=;
	h=To:Subject:From:Message-Id:Date; b=rbMSuDsCZNQ5E0SW8fJqcu3Dv6sz4wBaBw5O3Zoh4ndWV6l54XyQ1CB2HcGN5LVPNXvRMKjHJp2kE6lTCHLHuXU9SO0pQa7ypOYhGlBZf/rfTr4WRSbWm6HdzUZLGmlR/qOl1oY23JOec5ch/2MJI30eq4vV84oTRPZ+vzv80Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjBkzPC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjBkzPC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9B9C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758681593;
	bh=UWUSBMjiWZdw9K0onFf2mnDBrUabz1xaCZvIEUiN8Nc=;
	h=To:Subject:From:Date:From;
	b=qjBkzPC2gKY98unF1d+AZRfMKqFSQA9rXRvctbljkn0RfxxZroVbO0KW/ZlT/nEkw
	 Tn2fzAtaEq4PtsZU6zjLLJjNOcnpkbaB8xtzz/CK7vYbZoyGMqdLIEIuKHeApDv8/D
	 /9555DsSY+K7CB6fZvpgdG3/yJcUV18r7Rk8jemO6MS6ru7FX1PMw32Oz2T6pL3aoX
	 Wv6RmjTibQ+f3IDxr9i5rImle1+jCl7xIWAwl+Oh3e+WUNNjUEZ25XphHWsxj5X22+
	 KSC3zw2M6PxUwj7e8Rgx+bsegmNmVTw+OuRo6sZHd1fFpwYgyNkTbyHjEzHeIH73Bg
	 jxhIvl5E+5Fxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974D0CAC5AC
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868159358.6836.3645817656103179883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26cef8ba779d4f1fc3d35c5e355c0802a91d08afbb443100818017178e0d3126
Date: Wed, 24 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758681593
