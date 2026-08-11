Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535D73C1D63
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786464034; cv=none; b=nwzhit4Pv0i9A7vm/j/8nsqZM41i6jm/mXiAuho4xKJoTuykwrG4NGfv4IGpks7Uqq0dqQ1u6zTd0lL9kSxB/GVyvoEyfmVtefoLVt8AVJKNK67QBLGPTFNyaSEgbY61wn3CwKVxcoNY08wOyt/AMoBqb13HtbauH5PAC7I/740=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786464034; c=relaxed/simple;
	bh=dcl9TTQ5cLT7JGictiKqj0+H++GwoNnUO08YIHV3Te0=;
	h=To:Subject:From:Message-Id:Date; b=KCWke/WjsOzNWqdOh34UIM0peJzzOaUxbfBdIpYEnJhhAyeEbCxu0Rhly+ItHdSZMYDGB+97pTZ7aiOm5a8Hhql2MEvwBg0bBwcWwguwTYLqCje9ngBruyopEeVJTgcSkMNV37uMu00rHa5p296nUqGHSUypTMNxMnNjzDWteYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dp1JpW0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dp1JpW0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD08FC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786464033;
	bh=dcl9TTQ5cLT7JGictiKqj0+H++GwoNnUO08YIHV3Te0=;
	h=To:Subject:From:Date:From;
	b=Dp1JpW0uOKU8bcd9jIu0SxbD7Z5BoVHPS5Hp0SlGtDnDusEBdIYpzb2mB/RWSFsVu
	 g93spwEXxda4GVHq5+7/hkz8nioshmMocZ+WAGuqqa89vTH04Rt0uCnTWTpbS5o5z4
	 4sLKNy//gSqVQ7h4Mits5CJydNfRCoVu1Pij5xneh7Yu3zDJUZ+P1FlCvw9uqGRzad
	 64n539cwFEmTWMrROOlHKjfqUA8R3szsdxAEsL07hPN7XZKMawe0uzfjrYTjRsnCYX
	 WsYN0Nna7E0Xlq4I2Njkc7E1yeQ1kjL8fssyGr0WqJNPhYpSgojYuoSwx8KC35XmPh
	 VZVJAZgSwjyyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA839C5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646403368.12260.16442430409006056591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9523270990aceccaa881b4b1c99b55b4ffef9b177a9865d75f5f760f077c93d
Date: Tue, 11 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786464033
