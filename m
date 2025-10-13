Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C33199BC
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760351394; cv=none; b=hj9KpqktzvXo/Uc5DQSrRFrjEioTXHasTBQumcE7nRu1HpvtLISZy7HRRjiMP57bALfS3Et7YhE8YgxiD8njOd771pnuUhYB6OJ6av69NCqBEheVekmHOwNGeCm9RK6vtZAly/J8lXycVGmyBYBFKAI3QbM/fwaxLNA2Bv3pN7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760351394; c=relaxed/simple;
	bh=yYsovX5/9M0kivY0ITUx8aGCno/kwnQ1PXT7TessW4Y=;
	h=To:Subject:From:Message-Id:Date; b=G7YnC0OOJIxg+RGFJlruXhN5BpsVhkVeKsiF7Jt8jSKCfi6a+6tf3xmd3HaaFd+OwmKSLEaiK5UiF15vyRTrcOU3Is1O5Y5XimgNjBT+k3fAZIJjhGsG9U5nnrXAFghtaJ2GDNKToXyY4cvS7TMcY++sGF8fYfLNI8b4UjMeZ90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWsmvXOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWsmvXOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E0C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760351393;
	bh=yYsovX5/9M0kivY0ITUx8aGCno/kwnQ1PXT7TessW4Y=;
	h=To:Subject:From:Date:From;
	b=mWsmvXOv2coGA6+h3Q8CEc4fdHzsq55PZSWXhTs588911+rybGtr2S/XG08gWgXuJ
	 Aghkp5WHwuItCXvoq4mqTnxWXr+XvS4Y0kf4cbxPmLgHwyOSNqw8B+Qh9c1nDS5woV
	 KvROu05Hmu6o8G19v+17T3tEHeVNwkeMwTXVTcymykNXS2dzYo3uN8ONNIoByLHGHH
	 R20C/Mppi7FWC0UNqAAJZuhVAHAut/Rb9hPEAYGAAXGFxGMl7YmDgLxvGl4o7XaEoQ
	 cYTZSjt9Hb3OxCoObueEvr37FSnU/NpaIA850LCKtX6CEUzPYohHGp8gmbLjMKbJC1
	 BE+WqybPwVbrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F437CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035139357.21484.2558281673746711284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1600cb609702709664c78e952cd9c6d2ea467d11bb0a88b7f537bef3a15e50
Date: Mon, 13 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760351393
