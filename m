Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220E6315D33
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761862194; cv=none; b=h8b1arh+g496MLH/C9ic7ddyUVF2g6urMp/qlUQAS7RzY5vV8UFAa26dB2HgrP4BJOuYyqzhJM0oyMTcnlZcc7IIf7IAFOHpsPX3b5jnN7e/tWEancSYxRk++a6zmRfdRuSPn7yP13HKwULDIt06sai7TuOTf3Q8XB5A7OSR97I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761862194; c=relaxed/simple;
	bh=nN3VQgxY6S1EAlWweL9UASzy6ReK7IJMLbgVZVeT8ds=;
	h=To:Subject:From:Message-Id:Date; b=pY+/j61R2TkXuy53VutwRrrQXlSLwV4NRsVmr2xPlBu+2R8T6/fegXxpnBt41PsXn8kZQRAun0S5eOPW5slAPtnP12je9ABEtmykAmj/DqI61WDF63SA4s2ma4Zm6Up7CYocLP6R2wPZpyUzjjyPdwThBtXrzl5kSFPvDIvZCtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZU4Y3Wgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZU4Y3Wgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C02C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761862193;
	bh=nN3VQgxY6S1EAlWweL9UASzy6ReK7IJMLbgVZVeT8ds=;
	h=To:Subject:From:Date:From;
	b=ZU4Y3WguzsgjQhv0n4EHXXh2GD+qFruWIaNkei4Qu0hZlZGXFuiqx3XF5/hLSx5k9
	 qGDueqsLDE0imQ4odNuIUbBT8oNEE5hJcf+ugQczosd6wM4DMilATfkbidt8I14UMW
	 nwj7dQ03EuVJ5Mfvk82Rb//fpWkzzxsmvATjh/OEM1GdVTdE9M9omEZWjYGdCIdeV8
	 EYOEUzYWu6UDrYmOfJirGYL9EiUqfLpWzTSZ0MiE9Af4dO/Kp4u4+twDiKBU5vat+A
	 ZN7CQtB7vqqFIcwgCztMaPcwmUMdvL9z1/5CbNypqAgrONAkX7e42qk1XN0VNle0At
	 2FwzlDI65Rcxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957FCCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186219360.2476.5464775597609750081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a628e335630d62a4dc853550378e366af2f4d104a5231b1dfd332d9a0a74d3ce
Date: Thu, 30 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761862193
