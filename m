Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C47F1EFFAF
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739975934; cv=none; b=G4t0b208/actVa+Q1QD0CoTY2rkynUrwsLLrLa76Yr65b2+XCk7DzzS9bqh9+GbW1RvOgYRAiYxs7CTaymPhQHYBRU0W2XUrTgJ035XO5hiV81gt8qL/cq6+gm5fbpE48Ca8k5Ef5WHhP6+h5/ZPF/6q7CwjRs2KXIksdLmX3I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739975934; c=relaxed/simple;
	bh=wICr7W0V4Fskfawc4GNTUy8rdI/w0dMK5woA6sCFTjY=;
	h=To:Subject:From:Message-Id:Date; b=cLXgfD56eAneS7S+HTRosbwiVLLQeywCEPJXHNc9pQpGUWEPM+BkVYLrqoxgGexU2RHo4wfx9OoUcj7hkeIQcgfw9bGQfQBGifSsgWpLjNxls+Nmmc5TunThgw/NxcZIQDRoP/NVQyJGribHPW9t8ZskfRUla3/OHVJvfHur+0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4z3LORX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4z3LORX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF218C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739975933;
	bh=wICr7W0V4Fskfawc4GNTUy8rdI/w0dMK5woA6sCFTjY=;
	h=To:Subject:From:Date:From;
	b=i4z3LORXLENRktWrlR2Aw/GD89NZEhCLVBWbF9jiejBdyKsbXASl6daCXZvOOckra
	 4IA9AFs34fxZr2z3wbJPwk7LZQmsboSBPfhPmx3atctjc0lwTRQaBnmieH3GMemhKh
	 NK76ofGHo6wudqsIvOcPNOZh1uaEcenqlyCj0Cd6sRysTmPOyM/4HgET24q2xhLz8n
	 d9toGMjsnUqsOF+Gwg688g7LI9rpvIM/5x9o4vCKDJXvpYvQHIhHr97dn0aa/te9Ab
	 6hwFFJis0YTRxNLWlBkltqitM34UPIXQg/p3ueB91qNCebeGRVPnq/837I/8YmQeUJ
	 oAGK1Um8bUWIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC2CC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173997593360.10380.119531371831808789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503b7b086be8a74466518bfe12905d09a008eb6ce973e21b6e0ae8c8a3617334
Date: Wed, 19 Feb 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739975933
