Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395C118E1F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721635554; cv=none; b=lQlx+6SjBUSNI9f4J3l+XU0UJkrauXn1LOS1xpGw73tdFTxDMvPjaf2SCQfHYHmGk0JQG68JagQ+Ta3D9MulOCDUEHIm1V99y66GOd2nchcyeak3nsJVJJv+XP6XCE/Gw/nVoPhDzgZrmFFMTUgIUmqfrgxmgZe8KB0oRLUlOtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721635554; c=relaxed/simple;
	bh=6vXXTJ0X3FC9l715d3q8/4O+KhWSf6d5bV6NeDaX6k0=;
	h=To:Subject:From:Message-Id:Date; b=BXcSdd6lE7cz/RXRhAUGhCcuQfZCBcrORtJcIAQ2oJNv2xALxSeM2auyqzTlGjX6TqOU9SUF9AQBWUA6h/JIN3DdzEksdjbgbgNHp6opqZRwR45MiHj6rRBz+QEwtJmt0Vo/qNEzIHhcbepo4S8pdy+HwepBwrtJnQAlPSEzzzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xioz5dv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xioz5dv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCF5C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721635553;
	bh=6vXXTJ0X3FC9l715d3q8/4O+KhWSf6d5bV6NeDaX6k0=;
	h=To:Subject:From:Date:From;
	b=Xioz5dv49on5y2z4ucK6t6mESppRYpI4evsbrI7K7XSXjSJ6xFWgb5cvgErwhOnlL
	 MDWr7A2g3gvcepampdZPqUhyOJ/Hx7MrE51adra1e9FnRvdHpuLx2jTrPQbtO0XOeM
	 k0fh4Yk2DR1fs1B+BKoqvn6RvaoKm0xPSRjCx0SPp66O5Lfp2n7rIuXUWEwxCzzKQo
	 7wF6zBsa8S8qAMObYmwNLnj00man7/u5URJQNHI/lDhJuhz0MR4TgFufpGDEpSl71V
	 B58E5Q2zKNZFVxklHSiscMC8FwInOhjkxihmw9Ux+UmTHkSlvtYpR+DTabt+5m1Xya
	 l4Q0eZ+CS78sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E64C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172163555364.29158.3304952264941945574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ccf9688f3582f740514dd559c6f61eb794b650beab23e9a115db99e6455585
Date: Mon, 22 Jul 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721635553
