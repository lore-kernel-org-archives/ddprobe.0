Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD1B39F19F
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774269894; cv=none; b=PTd2g4pape5+Vy6B1ESgrAw8o2I74EhCTZ0y7VuLfWNIr8fF/POpb9EKeukbTRLbi76/3vPibBjfxqql+vh8bORq6C8TLP+TCYo1Ugn0IPfMYiFy5y4QKRFwFceIq7vKuzlci1tMQxIL1FQ8lkjY/SnNEJ9KDWBEMf/XsDCGtL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774269894; c=relaxed/simple;
	bh=JH0XjP8YjVMy/l1ENvrvYiCyCRbQeXGHjAk+CWdy8kY=;
	h=To:Subject:From:Message-Id:Date; b=D6/EflCBGFS2AUILU+c6GEkDtzWYcZPRjkE1Nf1PI2/3tDeq6vE0pzMz/5iYoTokPnlGwqfnJxLXj4mif4jZhFT57x79XKZpzuT2uo3rmwTysUJCo/Y31eAvvsZRHSKQhJsr03CBV21XDOq7dIo0kuJt+kW4WC7m0JAZ2G7pjU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T41B8koe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T41B8koe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E90C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774269893;
	bh=JH0XjP8YjVMy/l1ENvrvYiCyCRbQeXGHjAk+CWdy8kY=;
	h=To:Subject:From:Date:From;
	b=T41B8koeV1MSSR7Csb6KwJJdAQlV+QPx5EbFxHGVozB784wWb8OT42NY4J+Zewcrv
	 121HIlMOwSZR8KQpR5OHgUqtrjAOuvwOLdMuiox9JQsEZj+CxeVYPh+oUnOUdwYjyU
	 YL7RJMIIeLtf84gIkPQlvvc2DtKN2muzHHI9K7pmZqA9mvozqjEeSzEOjGlR0ti3D8
	 LbF0USNeWQZmQNGcz9zEkYIHLrDWq5/uxJ9KPskHj16EUzhvwM//h8ZiIftedaVRqz
	 b+9gGSkTEWIdI5fFDE/UWcJhf2eADAlVPoCasYtaHpyjiem+aTSVerqD3ipFEMzb0n
	 xDJd1teLw3KqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9147EF46100
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426989358.24840.5418383152344235026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f57c212bbf486d93ff65c8bb336dfd5a4ddc182895d8bd003d7da808099248
Date: Mon, 23 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774269893
