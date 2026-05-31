Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499B7286D56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780252474; cv=none; b=LQxM1N3U8HPR5pgI0FQo7Mi878W6c88yG3995c/l0yvxarJ21BK7fOB3Og+o/B2bhavGahC6rdmI1uUFXw18gBN3WpjLKX21T25fglNxVN0jWapVzU+mnxUVwU3UzHR9GnbHcnTGSm9byt2CKZDSF839pBXZiD9/gvp8jPtbmlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780252474; c=relaxed/simple;
	bh=zrsc29Rmja26dE0fkX1kbHpKffFbxM4UcTQMnt8abAg=;
	h=To:Subject:From:Message-Id:Date; b=suNhKUoGShnFX7yt3u9Rit7eLzEzUAZIgt+RJi3SJABlkd6IFiBsFRuPj6Wh4js46QEV2cZImLZgqFmvxKuNrz0hUrCO36BC4rhPTECD75uQPc6XiE7OnPTkBvuj7OCTsxnXxP6c0bnfX8jGZL/mEjlpCyxxtP0YlF8LEImKqxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWwgEeYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWwgEeYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46B5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780252473;
	bh=zrsc29Rmja26dE0fkX1kbHpKffFbxM4UcTQMnt8abAg=;
	h=To:Subject:From:Date:From;
	b=HWwgEeYmwyusKfO7VWZgDFePZPzdaZSuzzAjSm8Pp+I3WEVkXW0rFdSbSgaqPgrDa
	 tew99CoNfuBFLX0PIz5SmElmXxTugfjGNBWpPT3HxhebBv0bo6Fl35qBotq/fhKQ08
	 gzputEFaNFoK06sSHxSdzKnfQw6vCQBQeYcInDK3Ubt14N/C08vL2q4W3dMXauCyt/
	 GnLzYLXu/J5tZ78eOX/nk2TLPigX+NH+BN2/Z5WY7Buob2LOwMdmI0FiXKeXHDJyMq
	 FFRIhKUG9n0evVtfbEuSpscEPCNTk7C3crkm9/mrUX/LI9WJyE+QLWX/Lbk3c8dfSt
	 20FhfE1AhRzeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A9ACD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025247367.17098.4182031354429340023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef256da201a3172ebf60d6d8f6c51f89f2a634a828541d668101e4856913052
Date: Sun, 31 May 2026 18:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780252473
