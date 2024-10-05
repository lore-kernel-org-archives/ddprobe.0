Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9D813C8F6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728135954; cv=none; b=qrUfTqty6EFDAkqu8F3tso0KB0Zb+XVU5yVoazyh/8fZR0u5zkmo1xSCM3qxFYSx3fB7ROz0MweSKdrDvMtEEeLW+LzTTT2f7azTb6jvScX+Erc+5/lhYPsdHFaEaeUDsWbnDbvP5TAI74LCUFbYAB4mgIeeG9sxCuOi+tA9eHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728135954; c=relaxed/simple;
	bh=M2Zay1mZefIEG7lvlsOwm04gE+oiJxyBeqeCKrFEpfY=;
	h=To:Subject:From:Message-Id:Date; b=BC/XgEuIOTSumZPITY0RiIv2qgr/Bnd7//cZGdifq4eHiAzUdEa6zrS9jRKfMttUN7U5+7Mpp4iYp47H7JievCzvHdMYjxLTDWmph9Afwit1U+P4eiDx6EnY5U8ljOttElC8X+jUFAtrgJhG87hpipn5zw3MK419COS36ZzLDa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTFer8Uh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTFer8Uh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD64FC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728135953;
	bh=M2Zay1mZefIEG7lvlsOwm04gE+oiJxyBeqeCKrFEpfY=;
	h=To:Subject:From:Date:From;
	b=pTFer8Uh0asRoWKlI1VqJYvoLDMN31UypaVi/Z7SEHYpg+aG3IPts5sMm6UIIsS+f
	 YbMcCSFXDDPcow8MRa1ko1ZhgpkQqpgnqgf3fhbum25cn/zcwcKhXQ7s2B/qre98VO
	 EQgc3oDjDXoBaQ7WBoOwa3ciXN/IiW9aampuCppvun0SEi+XUJK7O53/WUoC9u8QY+
	 HdOuZwnGXcNxdYKSeyGzJSgp/NwxVQ7sfqXaNFHm/EoZO/nc6ZrTQNIiRmZ7j+6s8X
	 faw2ZT93v6oqqEkbEaIz+AcodunZtZiTaQrrA3dnTmNGuoRXo5XiDhxIc8AkgPlsyU
	 0WEXanhV368Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA66CF887F
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172813595369.12180.7486251449320754996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: effc09528f0adc70b0166ad67e6aad0736f89524f2df20668d60b46418d9a9cd
Date: Sat, 05 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728135953
