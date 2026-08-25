Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B783CF02D
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787692234; cv=none; b=EU0eXFtifijDVSTRu0agQpPZ9r9MqP54mUXk5yxPbI/WksVYTBXN8FYTtDbB3fNmCdUkRDdxyFQs5qFG0EqwMjNXX4SfqQFDJO4RrWrauLJZro8/pkSObjEpCpNy7GwfWMssLlPnUf/SxdowcUQpcvsiaTCWuWdZIPXfy85tl4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787692234; c=relaxed/simple;
	bh=um3cPJDDJSJdIk+CnFS05BoB1bP01cQAkufqJHLZ6BE=;
	h=To:Subject:From:Message-Id:Date; b=jhHiLxq0AgF6Chrxk7TGNmNUXu2ubd/84s5aU0/rxyWzXerKE61MhqG71IxmTKLIh8MqW4DKG7VhHh5Y7sygWLZg7j6128dmj+iJivzpcLPhtjkxBoSq7la3rLkpQ+ZUJGL6bcC3r6eUfagKtD35NP4FI0DyJwXXgq40MtqP/JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jT1K7mF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jT1K7mF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07ACC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787692233;
	bh=um3cPJDDJSJdIk+CnFS05BoB1bP01cQAkufqJHLZ6BE=;
	h=To:Subject:From:Date:From;
	b=jT1K7mF2xyu1HwC0+7FT0mxpG/0yMN7qL5JA3oNz4p3IfusTa4z8wwpHgZ31rXMii
	 7e8MObussWpsKqv0noBwk7SkLvJKTzRyqQWoiC4zWtnChbwWgQAvbEbP+yKUqM4yqt
	 USjgnv5k2sAnHeuKeyIEQgEmhoZop4oWt6HGQiTZg26fDRulHHX1mSJBjQu9fZdCkr
	 nt4ykbld9pHDhUc4WnekI98dj09bJujvP1iNgXZt08815eBFRIJhUYn4SB4TmzkQkS
	 Fw8KESZinnDlLBqzUMjc78adAbdhuzjsn5rZNMXL8vBbBAdPpmjuWWRpDJbc34m0SB
	 6OjMIfgKlSJCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB609C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769223369.28873.14442575329372549983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ffb14f5e82a4e8f6279c4195e576e0ef6b253e9b77d32f260c9c3041c141dd1
Date: Tue, 25 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787692233
