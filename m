Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A93D27E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772961894; cv=none; b=qFp5DQ34BZo/Et4K0NZKSExJkD8YUX8T3JJ/ou8eBJs/1pQfWiVgh8PVnZlkClxWlKM3A6rc1c0godYrXfmsI7DyjvxOPcVZ0aqE71w8+jBLWxByix7WGgaHN45NciBz4gXV7AW3wzMA3BpRAncfmfgCmbnihq6jBeS7TUMvYHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772961894; c=relaxed/simple;
	bh=H6HIroqYoYtXNyP2FuIZOiiY47XTR/TxmaLZkeQOyXU=;
	h=To:Subject:From:Message-Id:Date; b=X1RIhQ0IqY0Wng1eMHi9LSaZGV1/j8yfMT5ETOwLz+WvYWdxDyOtqHaz0vDuENfknD1mDvnD8jHAGwh9DymLvVu6CacA8s2r2/LpxgsiFCqOJePU37KeTlENEC9Mvu62Rt6wqgDx8oO9SvXoYc6J92kWYHZ3esYerxnb6rAwySw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN33PJk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZN33PJk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5E1C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772961893;
	bh=H6HIroqYoYtXNyP2FuIZOiiY47XTR/TxmaLZkeQOyXU=;
	h=To:Subject:From:Date:From;
	b=ZN33PJk1yB5sQBv1OMSSPuHkJ27P97ReB08C7YITFb0DVHkkcISUt9+5cj6/DV86v
	 LQziIitj9KcrrD86aW2pRKcw2t7QfKnHTOtD72R8ZghZWrPCoCYlI3mYL/GQ7iywXh
	 2EjU75Ci6tp26KQhhiXdEISbt9szJn4m+4PBFhGxpR5Xw6ic26YyYZ997XkaUrYjOY
	 Lsnf0fNqBpcz0BZMZ26+2aswRmlmkq+aq7k+B0ZulkemLo3LLaOTXFEvcCs1ByrndW
	 F9Aed94VqQ/LR9mt+opq8zDNzQcjzHKOCFty9QBpO7W0lcsPr1sS8VwnHBRU78YuX2
	 av5hV5PCtNw5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F9F55132
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296189357.22046.1065986302542237524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64ac4119d575f970a2f25c3a1e82c4ec238f9f34a1db15b4438baf30b6baaae
Date: Sun, 08 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772961893
