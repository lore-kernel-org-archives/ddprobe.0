Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9CD3C455B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781511994; cv=none; b=IEwaTG3WPXMMbH8p7bqrpfPmn9/uILvlFv6q0k1TYulN88HFaEwOYIi/mooWYJ7WJCkVej2MZHpyHmE6LbWNJMBr7UEdFCd7cNFuR3YKK+iaxrOQDVKG1Ocq1HcPj0dR55Y1NfssQsCoV6lm9GM2VdJb2OLZ+gbn7DH2BrtVF7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781511994; c=relaxed/simple;
	bh=U48k/yzP+MjeBrqpP2f5w/s8wc3DULbula21vgdR0Tk=;
	h=To:Subject:From:Message-Id:Date; b=oPQ2U5femxunD3uuM7DZyGN0jHA5usy3fRvN9vm96v+1DAZzb2y9TiodJH/wZHJecOxwugXLnE/gABbBiJxUkjVD3x7ph5ovFruhKcEJwGp7ii45Fe0MmO4N8s4IvFoItgUZYbIF4YFlFqn9LdwLBsPAyXj0cbSiA5nUVPD15EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btfcYM9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btfcYM9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F43C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781511993;
	bh=U48k/yzP+MjeBrqpP2f5w/s8wc3DULbula21vgdR0Tk=;
	h=To:Subject:From:Date:From;
	b=btfcYM9cBAsV0HuL59OPQQi+f2g9LjNZf2BaZJT/qNh94DjAusOqVD/dIb7U1yJtn
	 i3xAxcW6bC42aohGXxTDZUdlcEMCXSEZsElEjC1plG6QcYQqTAJuGVqP+MCG8qmvRS
	 a2Xtoq2NB3UE29NT32KgUeoZTqA1xCNYVvn2S5Y83jAwOhKH/ZHDmKTbYxnZD/WUqu
	 suwyLOQqk40IZHYO1W/DT91nx2ZIbL1U24NNm61Mr5Ws0AXQDN5LswXmphM0dgCoFE
	 SGnlJknP6jiyRfrl+Wn8ieGXhW9Ew/saI9Wt0XyfL1ZRcUrCKhXW3uJu3V9cx/Ctos
	 ern1bslxawP3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B113CCD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151199371.6861.1397934899062387468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712d17a91fb997ebd8226304eaf5a5b934afa5f867e25d158dfe29885333c490
Date: Mon, 15 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781511993
