Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CE9328B67
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761064194; cv=none; b=Ov0tO5lTdKT9HBLXkyj8FW1yIiWG1SkCpe8JD6XFGICEkojt4eav6FTePVIgUct6tgP7Oq+e13L9fEIit4+aZEMs6GT4qF5CB2uM3VRW7PfmkEYnY+lvZ8cSpn4bHvkpn236h+mzDjc5GF8KT4hUC3xHCCQqPH97kPKojF67ex4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761064194; c=relaxed/simple;
	bh=InSq5b/WALdirsLr5fGUy6CnGLDuZp9P5/XMmQPjsnU=;
	h=To:Subject:From:Message-Id:Date; b=qHWM9NRQzOqqEI1IwxFYu9G15Fnoybj2oURIODJrSBdxeMqsYuRg+XBE59dHD6vwKteSEfDXSXiLORIgoclqyBzyPHNLEB47C6xIR34OmRHWJeBbgEJ1NT89iyfLrpocDCTd9mpUTQekbk8hK/iDR0C6sfl3MzwrJWb+xDrSRrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtdiNpBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtdiNpBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBE9C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761064193;
	bh=InSq5b/WALdirsLr5fGUy6CnGLDuZp9P5/XMmQPjsnU=;
	h=To:Subject:From:Date:From;
	b=CtdiNpBDVrJtqF9LPNwAZyVdY/XWsj21pd0rRW9sAFVD0Mj/q+9Rm9xaCuBFgNfJy
	 Qhp1JJr0FEvyOkbLHGnbjp5XMOnHEpE9I2nhf/WKe/lCH4U+qsq0KYgM2pMv9RKpFz
	 Ra/l3r7Gd4BP27fFFlRp1FqfEFiGKYxCXC87IGeTDrrzi6YS11jNvHkZVTzV1H7Vl9
	 cApZHkW9ARfkyoQaFFNlrQ2wJoM4ypb4At+3T2bizAP+GQSZ9/0J198IbGea4TbA3f
	 Cnz8PmO4GNP/lBw0NAJpC/WWxn06xFLzUWfFi4rXsiKo084ndxpLomWOLwAm2ZyBBv
	 cNJnSBwkVEUfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950D7CCD1BA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106419359.9817.9191817063514206285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eacf2caa1640caa7a943a5077b527d37bb5c62350e63734f02e36a532e1717f7
Date: Tue, 21 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761064193
