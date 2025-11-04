Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC7326D4DD
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762225794; cv=none; b=ksXc/ditCRu5eq3hy+1pueqR8NHFYIvSB4dueNkP84eyQroZu95K1Orz+/pfULreFqw7Zg2Du+Vvzbq0RsLduPu44XQgpy94/+mg4vZ4oGA1aXfZF+oDQUb34en3rBktcVBIdvawfcPCI1HWcIkm6ggMJdrIqejYjSHk+JvCcB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762225794; c=relaxed/simple;
	bh=pZ5cEuvqH2OiuXvekfinB/BKOGQgN4IbB6tzc68Jlx0=;
	h=To:Subject:From:Message-Id:Date; b=jkBW/Di2l3xInuUlG8CSnEiihTZms0h0RTLoSNUcrgw59rZEjvaF3CTkP6YR74eNWzT5tX1wxkVdMAQy2TBP0xJUlYbNaTqO4SzlWzz33BWBUnZMYxhOL1aBSymk4RUp7FBRnjnIDu580Br4pqPBcAYjfN5JY1OREqOWsZZJ5gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHreFglz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHreFglz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1108C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762225793;
	bh=pZ5cEuvqH2OiuXvekfinB/BKOGQgN4IbB6tzc68Jlx0=;
	h=To:Subject:From:Date:From;
	b=pHreFglz3/3LEkvrMof2fTl0s9tMvbl6ltAczqLro/CCGRUJxaNWBPWtDY5Hr5Gs/
	 uEGZjW+HChaH0BVFTN8ew0jyGwpuy4PRLEHdDoM6Tvvlvv8ZE1ykIrB2FdjgHbIa/O
	 3A90W1YfF87f7cK9ciPZ5lAFys1O5grZ32AB1CfFU1EdYg2fjqafJvjmc2bgriWU9f
	 sdz+kmOwfDvJaEqoGkVeFjB1HXySppcgIXlcKUFcLcyKLf1evwg6hPZbkxU8JFSa/6
	 ANdCwbSSHd35pT0TCk5AmMR53Bo1W8/Wi6546lHTIi/+KkCW+tdNyHkYFm/u91YKnj
	 VI+kGy8CCiC1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92578CCFA03
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222579359.29620.2803154644493048184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78440df5da598b1ba980f5d81622c612e6e25d6c8575df29f23b0b9be2eb0803
Date: Tue, 04 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762225793
