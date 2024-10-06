Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534D2EEA6
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728178554; cv=none; b=kbcZUzz9jL67WkA94s4hyhYSt1wJqT+WBTXXKwcNSBsW741T8mDTj73KxkgVaZqJSNVCDFvCDZ/e0qCi5WT2FA2zoZDHS2m8qOkoEEm7INl/eSaa+0u+bG9saJ2iaNTmtjSiD+SMAlGegXTm5xbN7YEplWVAKmRvQ9OetjQpFb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728178554; c=relaxed/simple;
	bh=SoeaBvHlrwSsFx2+3kOFDWW5rH3cTg7eJM6ZDNOVBWo=;
	h=To:Subject:From:Message-Id:Date; b=tgJDVNLyakAE7uzsGPHOWJYDSkLikFjqjKeGrffncYB/aR6Hio6ncNmZ+nYKhh6/C/oGOsfKSLK2S1qA1D133LNt420UOfeAJSn3GF+lgGUEXwdSRr4YtyYO9ENh/ICO0HCU8JpmCnsRq9wVwwirnU/5N7JO7eB8d/5O68Tn6Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iH3/vyqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iH3/vyqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0432C4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728178553;
	bh=SoeaBvHlrwSsFx2+3kOFDWW5rH3cTg7eJM6ZDNOVBWo=;
	h=To:Subject:From:Date:From;
	b=iH3/vyqDGr+iwjPsNdfaH1gsy0cItyMkZq54oh6NRB6li9b2kkCtrAXQ2lZBJeBxT
	 g68h7X+IUavDzU61DS7mqFABs4YUG+J2kZwXWKdC6tfOKHFWRwTvymZMeMfr3+Tvr5
	 dLt9x6dUhZO5SACiRRAfmQKwQMgeek4ZHrOQfSMKm+swIwFURgHt/iKl//gyRkb0ov
	 b+A/AByELhOpCNoI0b8nHtowlGqXHCYatebUG4BkKEAMv/LDbtMe7+VtQnEaPuFeba
	 jhB1KHSBh+M6XdSo4JASQEndCuHcEx8T4P5nGWiWQoQPA0o654knK8NFM6QF16nxt3
	 bwln2kFoNzlkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB08CFB422
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172817855366.7178.7919279931335990929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34cf1fca592635f1b018ce85a43a75a2dc34d8a76ea10a57580900e92a2a481
Date: Sun, 06 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728178553
