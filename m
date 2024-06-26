Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564DE3AC16
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 03:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719373403; cv=none; b=kMZCM75QFeSZjq68cpbivyl0bI8/CaH2KjST5DOWahlRB55hKP3NLutEL2R0jC1B/5CmfrYHOcd5iu9r/Z7MLPxHWrX2kfBifmLoAIbvzEXQ/bsp0sKC6kCK9gt5W3EBxVGN8kMLtXv90cAqIM2BNGy/PTq+og2SXB3mwvffLSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719373403; c=relaxed/simple;
	bh=cwnNx6crsxJcFQQvbER+KyyWeDs13nF6wrT4Bkmy1Eo=;
	h=To:Subject:From:Message-Id:Date; b=O2xd/JyIZiUX8bTIR3RU5+CFdV9ceknrNsPtrzoWJWZ9Qnx4ItcUzIypN97nXlpnzm9WM843HodI1R0E4SOji877J/oU8DBN6voR+9zQNqLbxZrOc8y+cGtbvSJT7IJqSjtQxajJf+eOqQk1OhxnkVmdj9iaQ38yCTJA6LHspOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeK1z3EL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeK1z3EL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3670C32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 03:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719373402;
	bh=cwnNx6crsxJcFQQvbER+KyyWeDs13nF6wrT4Bkmy1Eo=;
	h=To:Subject:From:Date:From;
	b=BeK1z3ELBTGAWN6RSbybtpDEbZXoDSyiEG8q7AIlgRtuTPp6rF/zHxVOVkYxXiR6p
	 i/eRSsx6AFxH2kwLhv1i5cn/H2p5DUJzUy1Vxt7Ly2m9amqTSOQdYbwnNaIRErizie
	 ldnXSm5UbYBOq7G2iKGBMS6VlbOithlUFFDiv71H8oy/pNc4ORNRf/0Sgup+jsSyhr
	 0sFqTkU64Qb4WxSwZuRqXFSHmeuGhMKU8wWfewSukfXmKBUBhfIHf9e0GlX59IlXxY
	 CPgN8oxdu4R4ejmIz0G+9eyvYZC8QIAXgRPE8fnFgHa1P+w/+ac9pz1BJUyvASmygX
	 lVVe/6RK7OZVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF88DC3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 03:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937340280.14688.10632062267756014022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf37e2473ce33801b1e71d8618c9a881e0fb683a5822d0f54b753295142a49f
Date: Wed, 26 Jun 2024 03:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719373402
