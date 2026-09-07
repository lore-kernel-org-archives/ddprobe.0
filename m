Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF4F5B5AB
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788742234; cv=none; b=D/v7tIIj07KwzacL6F5P9Lu17oSokV6vFzIQPjqr+58vwjTpSsG53zJyK+F1jAWb3hATlKkVjPandG0caezWTOJ0G/up7ZegKa/pqVvlo1mC36CqxwRJ+W8tpRWXTwFy1Cm/k+2NEwXAo4Mz7GxOcqhd7hAtVRcMJxJEYxKmBeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788742234; c=relaxed/simple;
	bh=mDDe8GDV75Ba/yDPVj9zUrr7DPgwuTgAqZq+kVZPKyo=;
	h=To:Subject:From:Message-Id:Date; b=a3mrB6sop35uE4j+REhmHXZRkERpVDV6NnzE/J/lakgEHXh4gBFN5HgpnEC+eGiEENsCLRNlcCkfPi0ywZMzXv4kRuboCgJbAx/3t//Ck/BL3Wy0VG2hi+ZaHpBMoSymbnCJQVkUTa5B/ZcEGuLuQByNzT6Eyowim5NV3sran+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzyIhvej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzyIhvej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11F4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788742233;
	bh=mDDe8GDV75Ba/yDPVj9zUrr7DPgwuTgAqZq+kVZPKyo=;
	h=To:Subject:From:Date:From;
	b=rzyIhvej8LBhs5RrpIrWO+/ondWp4x1MNqFcwNgpnxIyc8XuskPm8ooAYuj3jUBCY
	 UBnfGsiSht3bE96r1y+rpfcBNAQoWX3lHgKu3tfHVR3fUHEOv7QW56VQLnFUQjNlX3
	 KK0YBn9st9jruQZKuqdiClI2DIbfVbmn5V2tMT7kEx2pXEEf+hiY9RSmC/iygdsUgD
	 NdUnCQPWpl78w4a3ePuddxQ44va82NctBDVyjNMMHcVenBhOlHRzQmVxLWyq6RHUpp
	 UaBIzwGPaYMxQgluzaqbSzQFmR6MdWyIgSZ7+iyG/4V6DKlOq5Sw1szpBR+5MEbZOn
	 uBSPzbd05Ef9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE74BC79F8C
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874223370.9988.14842074113293385925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75fc687f220b420a8ac3a55761374078ec05f40268ae3369ae2365c3206722d
Date: Mon, 07 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788742233
