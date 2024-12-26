Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1E3846D
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735187754; cv=none; b=ZrnlVy4XitvRK67UXotjdPJ2phejFnxBbB+6Jc8psu/hnDQ0pKQ1BvGg1EjSxtRhACfVYcqqpMzJoK4KbwSL687JKe2XYpbB6gk3tPrXXXS+AU8utE9UATC/NUdCz50jsIopPfn/wyvSrfZ6S/CDZBOVAE7aABMhevcFrOZ91J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735187754; c=relaxed/simple;
	bh=VSYgBL/kttJB54EBEZIAWX27PkxgKiTNzarWVbal5Ik=;
	h=To:Subject:From:Message-Id:Date; b=eXVForMIEk1+kH3vqMNOExCvp4mxa2U/5a1W8xSIhDnOxCz2LaLjEleGX++fEpTYD+ZqbKew4mlaoXGkWwYbwVcGlsRs/ABaWUNcvClCemNK2LTgmVXQ8Wa7lfhR3zOz6KZHazLXxUU9NVPvlKXLOVivIj8rxptQq9C9nGdHUQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gy0PnRsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gy0PnRsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB32C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735187753;
	bh=VSYgBL/kttJB54EBEZIAWX27PkxgKiTNzarWVbal5Ik=;
	h=To:Subject:From:Date:From;
	b=gy0PnRsmKmQsEmGlrUAoZgWhsOb402zH4e1INKOXdyw7QXgG50HVoIiy+DURz+7sg
	 e1r+YV18pkWPLEmLUixpAwxHo8foPW/sdqeVN81LD99LapKtV3Vx7m9QOfekq9sNYF
	 Fl9i4L70sA8CPT3FNCLFqQJvItPmcmGBsYwCWIqZyB57i0TdncqBvp5xidNlgTHNx+
	 76yUQ8ME8H1rpGZrmYCuMj5im8h6mnzI8iRpwYUQTCevudYuz8bkQyl1DXXl230JUj
	 iPVCHgpIDB/eFqDz0ubigYsmnA2oUnwwUrUZamhy0rKgDLUtkxC+PM06VnBGhgf1sj
	 /JMucN52DCh2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D54E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173518775360.14034.422495107663270062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f4632a90dd59ea96945bb92a90b2d2e137ae02c4809566f7a86ffe496f0accb
Date: Thu, 26 Dec 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735187753
