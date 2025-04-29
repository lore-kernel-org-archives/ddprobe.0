Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2650321ABDB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745953194; cv=none; b=hYFZ63tM8HqjFyM06hOf3YotDFoFenqSEN8f3Svg4zGl2Oo57ly+xgWBFte45xJKi05QQYqu2/0E0twlzMFcGUieEjqCVg6IfjvHAJ2G9A19Btt9Ca0qWMytjm0b7c8GmE4kgNanXHb9RmRXt1nybuQFrg+LEvoixcwWY9lIKwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745953194; c=relaxed/simple;
	bh=5mwdevgFvtxdAVpr53SR9EtD+cStvjhcA7ljX5Rfv/M=;
	h=To:Subject:From:Message-Id:Date; b=jG/jPBOb3Sz3F6e4846+/gagR9bZv/oBZ1Zw8KQRlLe9+ATNX/XBGx6lrwFZ8Gyc1gAMBoufeZT+md+x3wSR7fgifHCDnwJJ4agxMFu1xZu75nX3Fg/1a8YUmXrE7qtA29PYBedNcqmoUzieMW0dZ9Xz4hvY6GqbkxluBhwD9P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8bJiUrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8bJiUrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD52C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745953193;
	bh=5mwdevgFvtxdAVpr53SR9EtD+cStvjhcA7ljX5Rfv/M=;
	h=To:Subject:From:Date:From;
	b=P8bJiUrAmf9Y8esDsiBJ0hjkwfejxuPMBGnH4RyhRtoOWj6c0NUy7m7j8VCkGYAx9
	 LUyStpUz9Dbm0KXbf3l++dmD3NEI0k1kmh1LLrPOYRFLipTx52MqK7GXLNCYvTH4J5
	 xLaWBKKcYG4/Yk9d14HYES38WoyoN8/QmMhrlsOvk4lgFKYVgolD5FVHfZKt/ceVjD
	 tpJAejwKWOTrCZpW7x+RUcJ2V4LST3qLTY6DlbaiJMTqRXuf1zgLYMjU6K9UzczZ+4
	 AxiE9uUb/p+bXY4oVFojhZNz0cHPlboWvMFxyVm5OQhs+3+5e6M2gB6wqNS1/Jo7Pu
	 IKORsjqqL3EVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E1C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595319357.21298.16302005773963312489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed965ab8a400fc6d5d6c112bf1d84c9a87d5bb43dbbd71df05cc29e6660ba72e
Date: Tue, 29 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745953193
