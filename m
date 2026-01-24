Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E5A1E1E16
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769274234; cv=none; b=qDOzLE8pKgXzAVD/uZPEqs1bo40hFOgyd5PXfJtAhkOQ1oNX0oi9UuTd3YoEbdDzCJwT/92LgKh0hEvrrps9pGrjxMBil8k8WD7O3Sz2edKjWLqE68T4u10SvW9ddddqf1FvlXFsnNs7Wmg340YET+mw/EG4Ufa748DNXsJzMV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769274234; c=relaxed/simple;
	bh=+7WVINlBsNaOXFQMdZZYBltXPwarZ0b9HJ3/RKtrSA4=;
	h=To:Subject:From:Message-Id:Date; b=TTMAp9ah+ptSN8kHQclOUDEul1Ismd/X1tTSrN2NZy5xpr8VOwb3nPXEo1voX7tRuC8JgOyHOkrb2QyOiYFGnXco6P8xPhHZeCsBmPWSynmFdfARzzkhvPeJ+0MpG0rSSFRRsF6qKPG4TyE5f43vXpSeZdMOVbDqb+FDJgQZtn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUhgryta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUhgryta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E62C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769274233;
	bh=+7WVINlBsNaOXFQMdZZYBltXPwarZ0b9HJ3/RKtrSA4=;
	h=To:Subject:From:Date:From;
	b=pUhgrytaJct8RjqWIVxj7whIGt2yMaHUA+FohsCTpa1Zuj+1+NvNr8Zc3HbKLqeP3
	 5lXGlgPGROa5SWqJ6CDAG2FgFxlv7sKeSsCQNYCLj7ma2ZSZST7AIbVhPL790TDAW6
	 1ChcWkxW3gzIxy8tpzlE/IVtFdY3pF1wLcYru6qsu7fGdS7nELehbkMdCTIzRzhyRC
	 oxidfm1aNxoZuGBo+RP3yuq+TOCDYPylYBAgnOK6EY/3BkOm8sjVE2euvPDvlcKbGe
	 PwfGG3AYQSxVkszQe2AoyzvLarqH7bs8bGERya3OWgqvqybqEMkpcd1nzXqbvCFcXq
	 lQ4wLa9C1vVqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95304D715EC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927423357.20428.18038896013586097704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8797b3cac3f1bfbaa50f81d5befd353e505189a4afa156b78e7df46d96e636aa
Date: Sat, 24 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769274233
