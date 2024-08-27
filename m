Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4570819644B
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724757354; cv=none; b=PwDsMSK12ivpKrfDubFcQ1SAgw2+lQK8JKbkUc/GdMexari5oGGXp4T17P8fzAOi2n8cljCHJmc7O14/ewtKm5TWvozie+BpMOn1gpwMjsTD++2dPspa0wMBJrofLJNfYDqbBZN3A/oOYFg8GQkXEXLHGLKaJrnNevI4Cti+Py4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724757354; c=relaxed/simple;
	bh=KS2AfKRgLtVNWon4aNtIyAI6eABRLgm8on9J1WWeKWA=;
	h=To:Subject:From:Message-Id:Date; b=gIxoYCMhlpG/MofV1aSI9O9FaL0LHmthTlUZLuVDnYA7sVHXKLCQlPnSj5IKd7HeV1go3aO5zjCSvo92ImUaOPpvzWuueKTJaLmbsrhSsg1TvilJ+/WycA+oNxKn08uJmsdOi5LfFBJuuejg3cXujE9746It5C4TUYPkOrlPaa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5MaBxc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5MaBxc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBDEC8B7C4
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724757353;
	bh=KS2AfKRgLtVNWon4aNtIyAI6eABRLgm8on9J1WWeKWA=;
	h=To:Subject:From:Date:From;
	b=G5MaBxc6xqvCayY20sUN9pJwRjzecXbz6/5ebUzAAxUtOE+oYJuV0BGpGMX+XCcFv
	 Usf0R6FldgrqBuG6iBT2o7TqB9H8NPXeSFCN690yzhV1SJZSjEZDfDYTa9nWdw5lJt
	 rz0HeCWlcOqySROxgLcOgHqMHOrljOS5IRI3QFLXN2kj+3QiFasXwr2u/x/zzE+4a8
	 Gnw3lZCCYyesuKdb295xU/wWk6sa02EPZmgTZ5BeSxSpkXONjNsLVtzeNquC2ZqUD+
	 UpqMmjHsv2WNIk6hNypont0lXpFxv1Cgdfz3nbVSpO34vs31krUHFIt942ktfAVY2K
	 9opGXM2tLkIcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974A6C54734
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475735360.17157.12899085281042697841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b20d150d84d55c5d54579c984c2f0dd635151c1bd8ba312a675f4672ad1c780
Date: Tue, 27 Aug 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724757353
