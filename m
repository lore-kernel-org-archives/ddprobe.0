Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C482F872
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778558434; cv=none; b=EQUOBeBn8ftF2Qqq376PFJDXftJirYD1xz3sOH0lCs9zrI8OiZGAxW6jj6l6/g+DD0i3oFG+Y1WXlJUt3wU+2Ck8v/+puAKQl3Pzsv9/tDVZZnm3SKCwCDr6LnRrjiuMVFotHBJUmwlfexwr2rEL1qCLZzUapkSddUMTq8Tl+yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778558434; c=relaxed/simple;
	bh=9Nil81kHaiTiHyxk7DiMku1GzUrcA51Xx5emwuLg9AE=;
	h=To:Subject:From:Message-Id:Date; b=FkppnXDbiWiHu945XWgDhVzOt6ggjVdySaAmb2q5axP7VX0sQviPo6PzfshA3LPyj3S6Wzy4f90BC8d4B1eGG8Dd/EhP2O5D9S8O5KWbDq6ffKi3AzqDsigu20FJg7Z54tV2IAhjdoMvY4kr90ypUpQlIy2t3k468RPlO9bsbow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJ1zI/C0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJ1zI/C0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0F5C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778558433;
	bh=9Nil81kHaiTiHyxk7DiMku1GzUrcA51Xx5emwuLg9AE=;
	h=To:Subject:From:Date:From;
	b=lJ1zI/C0qec9sVdXcUU/JtC0XoVXJvICTOte/BLVfEcH4SmuBUtZh3g8BK7FTrG6/
	 b975ElgdnQe/2M/xN/CNLa6wUenxdpksAHm7jYRqg1ZvfaPUJPiAPJaCeYUxu1MF/M
	 tJwQp4eOBnx2STAS8mbBavhhKs8nDQyAlISOlvSe+4dN/gqI382WZYscRpquD9+EAg
	 hhIlO/M0dgzH9xd3YqAO/KOTeYJDxYus5pUh71fgkRkK494KltH00zcXc9v4pC00wo
	 CoMrGPbBkQ1npYgBbXt3xmVJPSBXJfkeOcqapkFAzGYKhzNYS/w0JkA4j8RUcBUUUg
	 FI74tdmqht8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7C2CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855843368.11521.12042565386891129346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbb794836bba3c3c9a30d444a591790ce2b0ce6057f47c4fe8b4bb269e01e15
Date: Tue, 12 May 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778558433
