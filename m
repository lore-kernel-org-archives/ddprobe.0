Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F348D13635E
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763816514; cv=none; b=Mb7KmSqXKvp4KjywT7SWOgy01Db/QhspQHNgufLTMMSY5dSTMef4BU5S8ELzjbhAewrVxeL05BYQme9JZRiqF7C5Tsr9gm3bAsjF/vEvz2u2vKRNh534Ol5zhL84THbZwlBzh3dxo7G1iqzhSQNuAoMgVsne/6VpFU7QoK0BMPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763816514; c=relaxed/simple;
	bh=CakHx8jdNlfWW+J1IQpi7lChTKTBHnpaGZz1qPOaicE=;
	h=To:Subject:From:Message-Id:Date; b=ZdaP4b4g01gM37E4wNpoTdaNu8YvJQ2cy+4rluhDE4lEAlQYEQJIRQ/3OwndQA2RfpwJxdsCGkMO8TXw+LyViOwdBJdHof9D3KsN/C6MKoHAvqqflDv/8WHu2Sq7rf9CGjuGjKqt0HOmPU9NNglg5ZM6Dwb5uQG7qaF9gs6LelQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buFgd//k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buFgd//k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA3EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763816513;
	bh=CakHx8jdNlfWW+J1IQpi7lChTKTBHnpaGZz1qPOaicE=;
	h=To:Subject:From:Date:From;
	b=buFgd//kKzqIesauRkeOqX0VrSoozdw1QKVRg8bWoLeGa6v8qli8vNpPs5ic8WgRZ
	 h802Ye1kKn9odM7nPJJHSeqOmfWjdYO0lDw4pjjAKSr9sjgfIzjfr1MU4tF3r/PHLy
	 0VTvpoVKFMw/zbyKxFIjL6WrbGjeToEyZTFz1mNFN4O634O1Ce1H8C+D4ByM/newGc
	 eMCGC/95c8hExjGqbDZ20lhSoctHJpZhwNO88K37+qYyGX3EaJjzVIabSpJxmtlwgx
	 SUdfoUnlR44yFlMfy+uYlOXAoMt67M+++7qY+wHBZxM5jU2Gkq67r8bwJAXXfx9nAM
	 dOFUjTVPAF6AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A2DCF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381651358.25879.7275766919127881992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098bbd92880ffd51294e72c2ac2ea4c4b7118dc8e61e321095ad48d6fa8d8e24
Date: Sat, 22 Nov 2025 13:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763816513
