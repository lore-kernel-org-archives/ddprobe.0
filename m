Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7346D3BBED
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 18:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720635443; cv=none; b=YLKTf1Yr2niBIlxnqjZXPZxRVWqLGB/nlO/D7C7/++VRDBEcvRpxipbRyUDZxsPFlXDhPSmnU+YGGH3Dla+I56E1gAKgMZAUzskk20rha1syav+I3xrdMJfKhJXfFtnP+AmgITppEiFL8VtYnzVym6FwmPFHj9cCCt8bkIBzlIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720635443; c=relaxed/simple;
	bh=CFihEUxgPgZe0Ui9PNeiDVWbfR6wLwIIbdQhFaiJfeU=;
	h=To:Subject:From:Message-Id:Date; b=WBwe+mOIyaNm68B7Bw0o+myWRy93T2+v/UrI+dgobONFiASwlGweQW0rsTG/F6XwiyWyALUZYsUyIPDsT+e3DyjFOF6JId79e0mwlUWR67rCU1APQJYgbibkP/4s/y1RVqZRDqE2FOCoUKUWf9yGylELV8BbHCzZLjJWn7++fZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h50AcAd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h50AcAd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04516C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 18:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720635443;
	bh=CFihEUxgPgZe0Ui9PNeiDVWbfR6wLwIIbdQhFaiJfeU=;
	h=To:Subject:From:Date:From;
	b=h50AcAd/dFry7uc1TpYP3cL9olstuB8KPL3IwrxapeZ+2Uryr9XT3Iej6nYddFoqQ
	 h1ro9pKouo7OcvyAVcARDUVvJsWSC49Pp5rtQ8JgSa3x8Rfy+WZhIMWhZSTfltqQBk
	 IND1yy7u+YpcXYgI64FhYu4N4Qfouk4gaYfTnpNooGiPV5DlRekIWIwIYpNBfR6k0k
	 vtww8K4Ws2jjrTQwhxCAkqDXkJvv4hWL251fiN3b8t1zCEVGgq9kPItxZ+YmdD84Fe
	 FIaJlw5jVcgXi4MbVlU6gfYdnzABTNPm3WnmLsakxlBNr/P/btbZ870ihfKPvrHrFP
	 JMF4UFyVQ2wNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEB23C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 18:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172063544285.24244.14837488100828849833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75277ce0882cd3d83e62d842d9d0563d5a204e13518a1507693dcb9d6cf5a39c
Date: Wed, 10 Jul 2024 18:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720635442
