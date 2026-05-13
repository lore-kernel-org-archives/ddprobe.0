Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B893C343C
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778663434; cv=none; b=l1Y/S0ij/NUkaPHHXpX7TNCIhejrO5/wfayb097Y701NSv/55bihXtxMnAClHoi40MS0sWAFb2IoBgJPMf2slXJg/db1st7plJuRrnHNUOdvdLJaCEb9vGSLxBxl3/oP8WN2srFCtu1FQ+H4Ub6TmcI9eNt/ftz/cmPmMMjNuYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778663434; c=relaxed/simple;
	bh=kuebrlz7MJonfBU+qUghHyEYD+BE8MuhFKYTi5drnxM=;
	h=To:Subject:From:Message-Id:Date; b=BsCYW8jhkYluTtE4QA0AJfID61bC9phubTAwB/p4Thj5c5L7QQB/hXMoiOqugwzwxwSdD51Lkt92QPdrN3pMoL7BYybcdv34/sGEwpDOxPYXkgCKTKyGuVzywbTB5tX2KqbQEjdKXmquE3bAq1nBTh7J6sTLf5FadrQlPbNh5bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdR5YYQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdR5YYQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2C6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778663433;
	bh=kuebrlz7MJonfBU+qUghHyEYD+BE8MuhFKYTi5drnxM=;
	h=To:Subject:From:Date:From;
	b=YdR5YYQyVGgorJGuaszWmRqVFMpRqgQ2HMc0hhKRUGU06PRViXSmKqvqQNmnkxDoZ
	 MBzjlvJObBJUVbYC54S4uxwVYHCj+lssgtNshXXp37/i206KNHEBSTw5GAEK/TBoH+
	 MZP7Yr+NGdf+QBYBhSFcQxhF8kl34r+uoy8pKfV3YAiOAy3WJ/eIRgEYg8hYzQcd7b
	 qniIta9n05zdf+vGisC5a1H8ve0e1i2t7Ck+DnKKC65FlPaxYiWx8Uv3qBxUNYnBtp
	 XmpRIJOgBO+meAv7ekBqbVixGkvNPY+Dw/4XOFPWJYDl0uZBDxCaNKfWtHS4dzZESq
	 38n7dLcsuKa8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA62CD4F24
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866343369.24340.4713393484406331055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b82e6366d48f2cb65bce010fcfffbb9f459686cf72102ee58e1a51ed8a489cf
Date: Wed, 13 May 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778663433
