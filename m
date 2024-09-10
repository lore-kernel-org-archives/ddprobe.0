Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A7014D431
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725966354; cv=none; b=sWjwfm5Hygvficxj1h69EdNjQkrDoHAYMpIRargNf5nED9NK4yVwUyo2Vbd7S6H5Aa83ih7xDIaLMWYq0B9E/ysxhx4gemqWRpqmtBP+mRHdjzyGUfLzWfmHbO5EJyflJIClPN0YwJbTfZzi6NXE7MsiPDly3jFKfopxSHQtmYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725966354; c=relaxed/simple;
	bh=xW6XdBitN/meww+k1rqtVh+erbXYB2md4bfAFxo3OBU=;
	h=To:Subject:From:Message-Id:Date; b=bmNwrhs8/FHr7v0ChCjrrFaMrPKPrKy9xT/E92rxdYZuwgd40GDToRWxZLIma/oRX57LpKN2U9wd02cZggwrkILA3l2M7f3R1qXVrI2UXiJhKvYI84nSlU4R14SMugNiinyVD/xs/IAfXsx6ocx+ISoUXG2ItrahoJoMP6H8pio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNOb8YiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNOb8YiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A761DC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725966353;
	bh=xW6XdBitN/meww+k1rqtVh+erbXYB2md4bfAFxo3OBU=;
	h=To:Subject:From:Date:From;
	b=BNOb8YiAXadjocoDvxtb2KidE0jMfFJQpu4QA6+4lufqKDyao2jq8nc5UtkwECtVe
	 94TnwCqePtkBZqrfGkXryidKtPpnGHAR0GYvijaZo6mO7bRcIeUq57BlNRhN4gf9lW
	 SGDw4t4P02ixmHOcD1XWRTNBUvAuDU8eQz1F+gVw8dNsmTw7EdnMPqotmtyRET82gq
	 dtf+EiN67QwTR2Jf3c4/Xm2XxbnRZGQQkxf/Qs5BZERuZFP7z3cD1yYkCgMyXLT0RS
	 9d37d1ng0jRMV9eMOEFnjVdGyUfYy6eFJBUBWstzdh8TDhYyvqAE0paqkxneJBZCTM
	 AFEUDBH7aXd+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97109EB64DE
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172596635360.32621.10315176212816131364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24aacaafc8202507bf542940c3e3a4441f297850e3401241a5417b36b50d20db
Date: Tue, 10 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725966353
