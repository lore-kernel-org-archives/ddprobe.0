Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EA616B3B7
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750990194; cv=none; b=OVosBbrn5oYwU5Ku6dIBL2ueP2nNpxcxo4SUnn5oyRQLu24ZilzM8LyQXz7BeWHUBqvLsPO+BMTvzE5HxR17zkhVCStA9cpHkImSuo7FPOU6ZjaRfwI84n83kVaryo838F7bN4bEkumy20f+Rmjb35QyihSyQTL1oIOmKXGHa1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750990194; c=relaxed/simple;
	bh=YIRN/mkd+vV91DjHQPTZbwiajmsmKVlOyk2riyGGGD4=;
	h=To:Subject:From:Message-Id:Date; b=jN0FnK/h7h0EtVapLFGjKBv6hj8Kz4xVViivn+p5GirIQeOYzcthFcknQT7W0+YwT6IVRQ1DhqhokLuxUspPIRq7pV++bmqUlJEvdMBjbY+iyzc14kZmiHu3ztOQuI1PirCylWBgZlLNtOUqctsi6MfZv6GN79mzCJ82LTjbdAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=li66Bb1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="li66Bb1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D83C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750990193;
	bh=YIRN/mkd+vV91DjHQPTZbwiajmsmKVlOyk2riyGGGD4=;
	h=To:Subject:From:Date:From;
	b=li66Bb1o77jZde8ldDv4yUW6zLNAzc1fEMNsqF5SVhIi2zBjmF0SFQvPmNpZ39GCb
	 9JbT3XshGBx2h5m5a/3qVFOaprMcMT4XSPYatUhzYtL16XnZJGLKTxHmrjv5jHsl+r
	 h2GFbQMiuvs8dTxZhcD2QjmaLTKT3gfC2rkuD0vqXfb/YsQaSo69vrQMUa75VHqYpa
	 A1I06bh11ms7mkSHPbZZ6nVNQHx2EnasWJON6FEU/Ee1Q5aY6CSsvsRXS+rWXUrROb
	 fd8BL4ohCkzuw2F/iikeBo5L1Bk4uGve6rvw0jjTFMaW74Ucd1q9Ca9hO//BLFJB6B
	 dcFtGNOPX7r2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C603C7EE30
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099019361.22012.16551793916019118926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5593ffc62cf937381c72424242bfd120e147a4d7cc6c98621bd713eb57101a32
Date: Fri, 27 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750990193
