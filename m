Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FBF1372
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750205994; cv=none; b=da2LypVREmnHV97a/9mYOGXGx9nA6bpDriWIuMk3D4EgHkFmEnafxctGvxCxEuhRIUmRDIKEzDKnHypYET4Yj+sFXNYFY32qDE4zAwHV9/POTZdHq6aa07TR/m0VH2piPupFwqCXJ9baI0yhPKoFfCcxYYMNtWdabIrrdstqIe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750205994; c=relaxed/simple;
	bh=IMJCMIKgoNRrL21qyhIOgYIZnh4InbNW7pmagtlYgCs=;
	h=To:Subject:From:Message-Id:Date; b=Zj4hMcGGX16nBHEmggGjTS5RnpR/XoGpAb22+50WylnzMHL59BwY69q4OPGY6FLbTETYkeMxzKaoxR0atrwOhRkZE1AFBAQGV/lCu11iVvsHXEZDdQCoB4esObBBndDN+czrPxk7rJHfPOIQMg/MkaAolmc6gM5Wn0K67bAyYGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTFlkZyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTFlkZyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A494EC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750205993;
	bh=IMJCMIKgoNRrL21qyhIOgYIZnh4InbNW7pmagtlYgCs=;
	h=To:Subject:From:Date:From;
	b=FTFlkZyuixawSsOqcDCfUVn9LWao+9R7djdL95jL4iWKqLS3sA3Xg64I1NA/X1yaT
	 FGLnRnSOIWFVqcStFFoO+EsMNXdBXiQh61cetdv2FbyfU+uQHK+lw+Mot30i8kSp2F
	 RTZMPJw12A/WXcJDY/gHt9tSY5tRPoK94gVgR3N3Fd9GllreZCakbXADs+cQ0jeCFp
	 pqSnbdYixBd/8x6fb9Ab8Jdvp4p01n4Hj9ahy/kR4tuFwOVAYb00aTl2JHR7Sn3Tra
	 KHsiWbO7sago43dWnx0Gs9Do1vExCnFgAXiNndk2lqaWI+CuSGFxc89xjkjGAdQUwH
	 v0MthnYi1w/hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE0C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020599357.653.10597543090956267601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac533f8365b7d030bbb30ebce43ecb33fa36fd126bf563ba0d3c1f9b94fb4f3
Date: Wed, 18 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750205993
