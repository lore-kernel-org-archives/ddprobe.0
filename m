Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CBA27280E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760425194; cv=none; b=at+ANQ09wFz/UX/WjBMT7elj+aGWAiEcS6Ga3hrvp5wG1FJlkU69vbJilRtCtdTXxT2ybgr2YaO6orTValglBlJpibtKGoAfHxIHtH03oQhqmx4j+wpGprK524SsegCphJwgQ/o0PjMBZK1+Q9vikIJ2bYVbkIH5D66iwpiV/Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760425194; c=relaxed/simple;
	bh=HWFxWbQMYZ8UbA/Jgp4p8o1fzwl8bYoU5o8av1xvg2Q=;
	h=To:Subject:From:Message-Id:Date; b=dw70TiXedOYeLepjUs7fGxInfB5LsbvX3GDvngbe3KNNWARd4VrXehrQfrp6ldF2mZO//ttq06rbz1rmKDJ/Kk2bsS5FHWJuQl2lwnL5FnuLnYFZ/YboZVgyd7L0qus/cv81xh0WlMBd34p7eAqKCx/iPta0tUVkYNY05TDe96Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYV9qWfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYV9qWfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0E9C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760425193;
	bh=HWFxWbQMYZ8UbA/Jgp4p8o1fzwl8bYoU5o8av1xvg2Q=;
	h=To:Subject:From:Date:From;
	b=FYV9qWfRoxpaX5cwaslb6LLLdAF08vlZ7w+NbcfATRVO9nt0B/FZV6f6rM7R9qwUI
	 B+2FLODuEYRFK1i87D01Huy+uSFxS8jF6cF66N2ZM9175WfBYVGAogdXVe+IcyaaE6
	 rtLRfOaOfcR0znukAlq6zaw0PiBYx9Mhhx2JlSw7lNevVaX0gVww65eJhIJxGY3bQm
	 ZrnFVRdh5fU/iKlutthQCdqK4B7PYgVhOy4zH7TQGJjSTOMI9eKAj6HJDD8GsB/7mi
	 C4NVBmhxU6aBBw0EkA4703l/RakoLHuBBiOW9ZT8eWSoE4BBv057IDOu0KbE72LaIp
	 ZSo/KU646EGaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79DCCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042519357.10540.15600516097651530847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e036d451751a8ddf58e40eaea10279fe57ebb8eab7a228db82070a63007b0cb4
Date: Tue, 14 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760425193
