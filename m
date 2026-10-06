Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AB2200110
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791260434; cv=none; b=D4C6Ddz8lGRJ1c7FCAbj5laBawBDPxuZ4+OwKpMvinv/v18qkElk6Ct8ZjUVOM1qF1Iy/n+5D8OGn8Dwhd4+pmPx+/tABiSiR2RMiLVBR3dfqIJikXOCcAFtLMygkkBOVVCym9Vx52ZjXLwVkgX3htrYiWeLwbkG7znBQ7ABdDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791260434; c=relaxed/simple;
	bh=vGITD3mCwWBwji9pCZwdOw2PyhqogJxjbBsf5QYfQV4=;
	h=To:Subject:From:Message-Id:Date; b=Fk1oHsJhSixVhAT/hm/LhX9eGnZUwfgMZCzSlEiV3WxSeeY6dtp1OzVlhe9eTU8FaqpvS5JgBqyI9Hox+V1N7FMguAjNuo3Yzcm7G2vJAizpmOU0hD6kWxPQ02lUmrNoyH3kDpj9fjHN4C2Wz5SUUIuSz1LA/2hsU18iiskiAMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JK/6TjWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JK/6TjWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB3AC4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791260434;
	bh=vGITD3mCwWBwji9pCZwdOw2PyhqogJxjbBsf5QYfQV4=;
	h=To:Subject:From:Date:From;
	b=JK/6TjWxgI8cI4jKuV2ytQ29qkigX3npfTCvrcO1Wr/cPdcYYLE/8Kc1vTFbgL99K
	 pt8MagNjFBHmyF/4zG7XAfNe+o8epKP7iqtm/09PkSyBZxOPmnwfFG5YInfNonTl/X
	 sj8SQmBsQXeipdLauyiUs/68i7UJVcw6Oq+iLKvS4mIo+wsi2JABKsKVPI5ntrGq8E
	 JPv02EkdTlFWdcdx++8mtkY0VfUAm4U8V3fKg1qyuOlgC2sm51A1IFM3ZUqCtPzB8A
	 nQucikHkFhur40hAG1FtYQijxB1xRzyAC9mNn23r4CgdtTSw/H72h6PlnpmHFvolsA
	 oxaqoubC86nHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BECCA5FFE
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126043380.3635.8774121394779870048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c661d15428752e3fc6fa5b46d34e48094b140296cb51bd330e7fc62340c0bf5
Date: Tue, 06 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791260433
