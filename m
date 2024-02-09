Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F236A00B
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707490697; cv=none; b=sIQrwHtYabRsDBpcDiBXRYbtUA6sum9eFTB+M1lfTpHcWpXHiFxIGoGQ2cxinF3ZbnWIX4Vb3tF8FeYVzOfoVlILUTd3NpQMJxznEHJwX0zqH1oqdrWjvV/i+uuwxF6vEfg3PXsu6RAa7Yw95n9KGp4zAycrLjIWnkB/ucMKM0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707490697; c=relaxed/simple;
	bh=LUiFeogxtewU3HUFqS7c1g8MTY7EGBPgEpaP/dsIxmo=;
	h=To:Subject:From:Message-Id:Date; b=eCYkwtBH61X/+eUtbFqWDChDFPoPFYUB5xRldyeJhn3eGu3AC2Xz5JGXhoo+XH9XViU5wNHlx70RHjyaIZHFD5y+BL2KUWiIkjf9comGdb9SUffk89N8sOg+mu9eGhemale3kNtF7V2hlCEFcKESAOYccailxxvWAwHCin28sSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpo9UD9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpo9UD9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76409C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707490696;
	bh=LUiFeogxtewU3HUFqS7c1g8MTY7EGBPgEpaP/dsIxmo=;
	h=To:Subject:From:Date:From;
	b=dpo9UD9YgkqXIrNfkW6SIbg/oCZ452fEKoyrHTe6v/BJ3kJBMBymttevBLHeiK/0Q
	 KhQHaCu6/KeLWj6iyq+TYR/H618W7HYmIO2co8qJ+8umYmLf4y4NElWfjrUtZf6CBt
	 JhTiUyY50+/qAbbFe03UbnsJ/CbRCOH9qaWAeveOjpzJMNnZHZaz6r8Th/fvwJiDgN
	 4ckRDvOzomz0U7LE4unLkcersWjsbulaAdYw4vd6ZO3R3Lf8+DLplxk9g01KyW4Q3f
	 GyZKOoDB8RGQx8X5sVJTM9xAKM+tcLTpQRsA/wFPxcz6l8Ah/rzM7UB71Tj+O7z82P
	 6TTjEJGPdDDJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D3F9C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170749069637.31063.13667274431988204129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142632d374a0cd35a431c1a7e33d08831102592b6d04b0f4535c16986663fb33
Date: Fri, 09 Feb 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707490696
