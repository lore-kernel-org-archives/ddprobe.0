Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FFC28640F
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764628974; cv=none; b=ayQIvaGqoENzNSqEAktS3fSI2CQRxDtB3ptDwwUVcPGfomRdxkjKtsfbF17YsTlYvrsWYhPJA+c10BOTmazMiFC1KTPWiC6mivC51/qI5N0ZHpM92XBi8ySXRo5ikPWY34jjM7c7WEOP77fnPHtepuS8KSJaInxGmwIb6cLNR5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764628974; c=relaxed/simple;
	bh=4xijSHY+7ixgvJw53XjyRST3y8dOLFtNzctzKVdqGt8=;
	h=To:Subject:From:Message-Id:Date; b=m7MnxxJygtBYHlUoyrzGUeXTkb4X2eunyrC1R11m+YdZTqQbedrc9FVrlq7GGxxBOHntkbyPK/Sof8EMdc13jjq0I3yI9XMUUSEBXCmWI64ki2rIvPh7G2HQ3xjCxsR/Wcebt9C2sEpPucDqqOD7Zok2J/8T0L4ZexYQ1UQ5kBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9WDh1rm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9WDh1rm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B861DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764628973;
	bh=4xijSHY+7ixgvJw53XjyRST3y8dOLFtNzctzKVdqGt8=;
	h=To:Subject:From:Date:From;
	b=C9WDh1rmy2vMI4YtNXIxaHJrzhfEviw088mcZbsEihaIy8gVqwuyAq2o6USsMyZEp
	 z2/RsOqz11Ie09fLQ5N+bRgd6AJBfb7JHofuWMbnEYS2t2QsCHdXVO4jjevizJ1dVJ
	 RZdm6t9wIcGB6kowcDhm3KUVBN5bSA42e4ERwpYlKbX12/3G67+XdRx4g894xXf6dU
	 LZv86cy1//Xz/ZrNREjBrpX8QmwR1BYGjff2bRI9ez6zZU069BDzbBGBy20tMtPei9
	 axgpM0A6VMeU7fSA2BitqLYx5/iLinDPGrTKtFai9JfALBK5DuVZqBCAEpD117t4WY
	 jB1kxW7iUP/ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2470D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462897364.1588.15897437581570278507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f395f111ffb3528615e679c16c368c9962abed56dca82a88d1933604d2b4149d
Date: Mon, 01 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764628973
