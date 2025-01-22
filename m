Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5C01EB2F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737579354; cv=none; b=LB4ZMwgaWv6BDKnHP/woy4LYcZkySYqwFgObcB+XrKBhF6egkpKN6TeIC2wnJG4pYdyuSpwiuGgVR//7pf4eP7WgxQvGifT8l/Em0p2ND0gYHKk/TtRTT8Pcyw7EP2+75QOspGI18bVgCWYwkhgy+ZUybzeDDFnzz1yCzIVtV84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737579354; c=relaxed/simple;
	bh=aidA8pjShG0EgtkoQkS/O+XZfU/DSMO2Fl8BMi3xBtc=;
	h=To:Subject:From:Message-Id:Date; b=ASgGR9vXslOdVa2exHrW/LCDN9u6N5AgsvmrLWgqpg4GJw8PvRwQ53f3bmdck+AxlCnK4onRaTP1W+7DEhJ9bvyX9mKIkkaHXCcTN0+jsijY6jDEVrWGXn7RfFjDg2lY33L97PMu3Vp6XKJe2MxLhJT9brZYD20HpCZzkjD/GCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWmtuHbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWmtuHbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D889C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737579353;
	bh=aidA8pjShG0EgtkoQkS/O+XZfU/DSMO2Fl8BMi3xBtc=;
	h=To:Subject:From:Date:From;
	b=bWmtuHbFfjK9cfLPsMpptklSMJ3thpOEPRUdmkdvubcoMNLIu1EWVkDg8u/Gn77cV
	 eVFpk0hY4AdjO7EADVi+2D7LWXu7ty5V5Aott6g4rdLK7VBX9YBi0b5RJlBjijkFo8
	 v0QFzzORdgJ8sYQfwl6KyzH+VAhrAllACTeWf2B8a/3LCJ9RZ1q+MAo2UKvH1Wvqfu
	 ZnTpWc7bni+xpjgklSqE2WWmiCZBrTVSM2cbmyBb/TPebUZszs4TCKNS0u52E2v3K1
	 j8sHj1D1QnwrfFn3I97Wv/PEwrVZSFSK+9dpc3BqlEhXhNgALECTqOXdCxEGw0Y0Fq
	 XLunu1ijMYt9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D4C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173757935357.30543.16221608318574169318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a9b91677514627b2d0063fc6e50f453ae29057d32b18810bb5fbbcb7e01843
Date: Wed, 22 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737579353
