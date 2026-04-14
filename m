Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7BF3D647E
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776173254; cv=none; b=JS0wXPiSeMSjduAcTrd0/oO8tths4h+d8UJD8edqLPa343JNS+6KZg/objNkHQuMkAJvJffbYM4+oRyDYbK1CXRxaxzsofk3AJ1I8EgPfTltkU0Ud5Mc+jMnXXPh2FTnGeQx8Js9NMxdsr4Ogullvnl1Vv5F2uRDkb9j1b0HNiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776173254; c=relaxed/simple;
	bh=3Vv7xMUFN6Ysmr0fO343/MfdPZ6qG2Rayr7Dl+/14VY=;
	h=To:Subject:From:Message-Id:Date; b=DcdpdDl1tjpgx/5qJo4Edix4LttoZjKg0ZynYdIK/9MRsx9pALA6R92BCLBYoQFKqSPzHwsPSIi+beCeOl0oZOYs6rTo4Y1O5LS+jrTDTAeH+v5YsT9C8lkmal4ULSUwqm4gW/00IO5UQ3HqR07CkPvVvcZPKox5+E1v2cdk+aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BT4UNod1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BT4UNod1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE105C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776173253;
	bh=3Vv7xMUFN6Ysmr0fO343/MfdPZ6qG2Rayr7Dl+/14VY=;
	h=To:Subject:From:Date:From;
	b=BT4UNod1Bn5m9cuHafN6KNhI5/dXYHZCJF0knSAW0SjZw0/QzNWlzQBFeu0Igghwr
	 0pVG85Sq2XzgxBzb7CQH8fJctHKuHgtPGkjrXB2tyN0Ki9dWVl8KRPQK6ySQuHCOIc
	 qudcepN1dq8xrD4puwWJ4aeQdt0k4G6h4AxyVCk/LCgStV3XxMIQ9DhxymR7FvivzY
	 TxLW4MEMKI1Eh6qq3KiZD3FI+mjXjcAygfriV2kFTdptYcQDGhOLw3KEEZ4Ujp6e6u
	 4Tq4dATPnsxUn2eAa1UiiDqFBi55AjFbMk83w7aCysTak/gAnhaC3hEe6EV9fZlHGD
	 aMhGJhdcmJuqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA530F9D0CA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617325368.18641.7078709785456767756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ddafcb4622ce3f53afd46a7a8e213153216d5dfde27bded4481858fd7d4d8b
Date: Tue, 14 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776173253
