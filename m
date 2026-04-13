Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8D140DFC3
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776042454; cv=none; b=hs/z8umKlx3n5YlCvY6a8l94MbdZw4nk93pS0w0jvDHhgIvjtlE3zT0KDu/GO7JHv1mzehgnzwPFDzHNvEvyrLETggF++/NcQVfa5krQlesw7Gu/YoZNCuDBs+ngQEvjagMUVzNFBnuL6LQX2jI89wN44F6Qwftjjt+bh7Flneo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776042454; c=relaxed/simple;
	bh=k4/GGdZyhOJejVO2vcIQ1/AHEsz35guO3cxWCaA/AVU=;
	h=To:Subject:From:Message-Id:Date; b=XHpFEP8yIoRzCer3R8bGxQQnq+YZJDmWjZQoy+XoSUVSjds5NLqQll+b/1YqMzp3kNhW+9wKuT+2wn8pjHo8WAO6Tyom188H+74vthcMDiQ4/OKZ3pqKlh6JQTeYpmB2DdYe/SKdoK22+G7svAnI24fBMoO6rKBfXFc/pEqlRmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFHtMslY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFHtMslY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21ADC19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776042453;
	bh=k4/GGdZyhOJejVO2vcIQ1/AHEsz35guO3cxWCaA/AVU=;
	h=To:Subject:From:Date:From;
	b=YFHtMslYsuxZ9tauhFuXRfAOZQaYULL7Mtl+2cJAvHw+S60pavCpfLTz5qpumIg+U
	 qCsAIfqZY1+G6RKjaR6bgSRpQ1FOpwZZ4DssKYuFYhl2RUx3rvkkFT2wNzMKy35xVd
	 e3NcN5pw2k/66fG0MD2tC6e40YZ4I7o5uzOcMRaz5ipx+/apECY/iVOJWMgdV9XXJx
	 1jH4hhJ2VpMBlui659qQmW5tg6ECWr1pyuu9JtenFt8J5lP8pML7SbaaHhrxf/PtFs
	 rQN7OECj/2hTxjvnkG3fJ4fSypR0fxPe/YQJLJKeYy3vfzvOKwhzdY8MWs8TY3bRoP
	 pM6wbg1PT78fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0608E93808
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604245368.26963.10707463988191491043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b343e1361c85a4143724ddbcc32c8a95162235e58116520502fffc282fdc62e
Date: Mon, 13 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776042453
