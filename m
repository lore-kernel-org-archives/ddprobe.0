Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29468320B
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751156994; cv=none; b=YWBNkc0rgMH7YuG77BvsIA8X1wrUtTu+rP2xico8icdILzjyL8rPvmLqEAS2D2+17PRkGTmWQT5kKioKnmr1Ann89JhXivfo00H54WlBckjAla5xXdch5pybob8EoXBVIQbqi0VhyoBzUe/NKJVKVNCOzQC6GSETo3fDteC7+r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751156994; c=relaxed/simple;
	bh=JMK5ac4C4QU9VVf/dbgW/+D4pHLkJ5WU8eKs0KHT0ks=;
	h=To:Subject:From:Message-Id:Date; b=duv4x3jk0kQDVEXI9OECFACpJuEw0sFmsbnLONvrAA8Wvso4aUk9PE5t3SlItW35eKW9ZiluGq1AzTnt72inIn3wSCr0953bNCS77y3NCLo74Il3O4uhxGNAHpn/rirQj6bT9xCJIE0CWxPdNywMosDgf6MhTk8V50F/LJiaPss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNPC7Xkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNPC7Xkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A135DC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751156993;
	bh=JMK5ac4C4QU9VVf/dbgW/+D4pHLkJ5WU8eKs0KHT0ks=;
	h=To:Subject:From:Date:From;
	b=hNPC7XknMiJiuOiwXhFGFUe7VNflJiFadOetwkhXvQqH5Wk0dxJGQX9oZFhv+k5DJ
	 JGH+H9aRf+wZ5AkmYHq7nFiRfHpXXkqdUcyUb9yGbFDN0Axssq//NbQbeQY6ew31hX
	 IGS0l49L3zHHOC7QozjzlMBkQYim99Wgmw3HrzkgF3JYGttHLMmsiprHN2GZNWlw8m
	 2qsnCZMjZZFBATeRnuCXpZ3h+c9eW5kfEk8OsUdq/7wa5oGAHmWwBCRlJVFhzVch8p
	 ls+foWO/76cEWoOE2nu8gnfwQAnlI69+nN0Pue8n+UR8xwV2XGd248OICJk62uLQw+
	 3aMPgZNRfY2EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4BFC83000
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115699357.3761.14024293186802820355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d152a6a3266ff6a415df60a182113c199ea926e6b05418637ed4a852022b2e82
Date: Sun, 29 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751156993
