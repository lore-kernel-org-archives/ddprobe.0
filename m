Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EED1BF2A
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 07:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721201123; cv=none; b=Ptmd04AWDDwZPE7kmU2iQyqbtm+cddabCF+RIMqz8el+DqtDyaHFNJDZhamEad7LkLwN5DnWMNhqAQONVfvr0SIR6GqVYZttfV7CIfrKiTD5MIF2ZL/G6ULyp6tGQA3sOkllz2AdjvJBAt2a4hO9LV1mDGP2DPxXfmswrT3UZjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721201123; c=relaxed/simple;
	bh=wDEGCRC6oO4QMMAoqF/u35W59zj2m07FadJuCHRSDkI=;
	h=To:Subject:From:Message-Id:Date; b=kk+qq2pslDEHERX7xf0dIsUrPp5oENiJ9T2wZOrQmkcTjeHqEiAM18/G+5FUwfSqManfVBaelmdkWyhJjPSqeRn3/FrCNnjHVSpevQNMCDSQ6L0CI6gyCLb2L5dH94+Uqjfi79DAJZYR2raspLCD1CAM6k8g/DC6ES1TMI81L+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TR2oCFUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TR2oCFUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0B3C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 07:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721201122;
	bh=wDEGCRC6oO4QMMAoqF/u35W59zj2m07FadJuCHRSDkI=;
	h=To:Subject:From:Date:From;
	b=TR2oCFUYq8jryxRbEZBfoDtbATzjcsMxIWR+B4kZxrLOmn9pwx4BDPMy/7iVURtVs
	 5k6rR28ea9EwvAFWpg/Y5OR/IKGjj9BCjDR1AVgNBZMqXnOlSbn7ilFn45JAhBLDHH
	 5jLCbH3bqja/kN26KvWhdNGARl+E5SbWid7O+k0UGSxO6XM5s63ERPs5HoPtLfG7Xp
	 pvsbdktV5WFqtw0HPdZxpWmDAqsjH76z6yRy68x7NOogQjkm8aX3rP8Zg523k0Yd0m
	 BZOoxsaiIPexsf1jM6M7TNBejvhRzDZNHkjsiLb7gBnQJjhtm4RURcj4lBUrcIZaPj
	 ElYC1rT2JZdlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBCDC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 07:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172120112276.8786.17409611306330144020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8fa22aa14414018d0f451ba5a0683a8410fb4fa3019e7e5aa29f54aea484e8
Date: Wed, 17 Jul 2024 07:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721201122
