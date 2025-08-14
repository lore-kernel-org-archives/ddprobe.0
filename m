Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA583D69
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755145195; cv=none; b=u2VvVHI+BNHD+0uKpnSMvHo/WrQ1IjlpO7BjGea8aDZmSEm4+rRKInf+k9iE+HMn0YyD/kGHgK5WBANFx6VUMo68/iFABlqyKE1f6KG75rCx/txxdssvH4Tafw8rcWap9qCzrT8RCWOCtF9yC2vir5Wz0oAunyYazc9YpbsZx18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755145195; c=relaxed/simple;
	bh=eb2KEEn/x3ryy8bG8Bi/Aaj7WNqdPtRv9Mc312a5Ins=;
	h=To:Subject:From:Message-Id:Date; b=tfS4B46thOMuEZkzq07eVnkntJr+mHuxbozVMNXrkkCqfvD0CTLnIo9Rmp05CzVM91Z35Ctt5+/vWuUSqMyycqhyohrhtCVuavM11xcZiE6AyVpnM0bIg82VOT6fgK/E41YEOo5CmUODurOho0DoIQzJvtZfrsoYwF95O0k99tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbLScQlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbLScQlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A357FC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755145193;
	bh=eb2KEEn/x3ryy8bG8Bi/Aaj7WNqdPtRv9Mc312a5Ins=;
	h=To:Subject:From:Date:From;
	b=CbLScQlcCSDHUeDw2JmWEJDP5ITmdrOa/ngthjqmAASCmg5G0rkL3S/JF8cF3ErnR
	 vUBV6hDAAuNXb0Stm9XepWQ6nGb3RA0XI3AY9l6zOR3VYfyUonI0WMX0v7UvpDVeCd
	 qT6pO+7nv4ClNmuIMjvXjVp/wvBp299biHZNKZwf7SAxyUzOI+xsvhzENUJY7QPiIY
	 mIpGMYGReKWOwCLYgbCs5GcsU8ziM8hatGFaA1MDcJfB1xE8dIejJhMyMUsD4vQLXO
	 uJK0VFv9zhHdVocZlmzJ/fy1mZXNfsp9DHcxgvX3aY2WHJYQRNqBz6L3aEw4SYVsrS
	 Joz3Fv790LsAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EBCA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514519358.18223.16934284744746807054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9e7ec2cc8600d2e26ceabf30494fd942e7f09dd589dc9ca6a6cdcd51971438
Date: Thu, 14 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755145193
