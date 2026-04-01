Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2994E35A39D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775033134; cv=none; b=fYxqxmK8H9JuWNRXDjmEwgXP9bqhdYGOQGYctfQf7BsF9hqrMtpKyKR7b1JbJxo2hEpNBuxCe6Bu7oRUq050FDYm5FTGKXCqXm72S+n4Ll0MPwIE5iywEhEAMi2qgGzD6t1/bpbnw6nkPKHAFBlV/OFKnT4IdcblUzT8MNsLUAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775033134; c=relaxed/simple;
	bh=UJ4b+1cRHZpqJM+d20K6U1ipCUG7at6qw92EM9wW10o=;
	h=To:Subject:From:Message-Id:Date; b=i5lhZNT48QXMtGKp2HnCWXftriZOC8BYQZIEX8AlvmdVNsIdLmmbldsR3CV7hWZM9Ider5+h0tyc6/4LwDS2+xkTb7BYCDG8ge5Y2INqpoEGDK6vmro/+sVVxLXGqDXjIH396WdfaanVp1zEw8olgv1YDvYW0AnOGHHfBN1l6/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQuRpdgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQuRpdgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4ECC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775033133;
	bh=UJ4b+1cRHZpqJM+d20K6U1ipCUG7at6qw92EM9wW10o=;
	h=To:Subject:From:Date:From;
	b=IQuRpdgXZdFxgWyWfJVtfklehlovp7S5j0qzZLCcTCveS4GykbpNgiI42tpi52RoB
	 mFoc97HnN23ocFOyPTbANHuTn3a5o1qbkbJJbnPnP8eO8cBskeIh5KwNIaptpIzs/1
	 jAOBiK1vacnVic4Irxx+QL4i4ct6e5kRYxlIhfAUr9f1XpvzfbatmW7YLr6bnxX/a4
	 gANWGnmRfzWNNvh1l+KfLmaJKwV/H4f8PtGv04BNbdVszLdS/Nxz03hH6gITA/XCef
	 6TL122C3K6TiNmNQ1PO0VU0++x+9XfRCgRVqFHV+VpPcAxT3r+hOnqp+u3FdFkyDN1
	 TeFny1Z7oZfkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A72D35151
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503313368.22124.3989395875174838741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cc2841143d379af27cd15bb06dc4f949a0504cd49d11c61754c5ceb739cb51
Date: Wed, 01 Apr 2026 08:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775033133
