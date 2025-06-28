Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116D9221725
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751142594; cv=none; b=OmxlhIO4m1tQ7HFn9p2ZS46F7JueGSbKsPMojV3GWZuLfXHnKf4mXco8vcIifKSDtI3+gVQiNU48oP1zJcO984lZT7I6BWML3RDDTyzf1dWjr3oQHpGtRYFZ4/17AoIi8+aSz08AT7tfTIjnB/51n3+i/IJw694VS0FlZ55FPyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751142594; c=relaxed/simple;
	bh=5RraBN0mEOkPHf0tlnMohDGrpe3+JT4tJJVqmGVs7Yc=;
	h=To:Subject:From:Message-Id:Date; b=pu8O2QMdtqYgzWORaIZtRKIMAH/E3VfCPRBaIXPq/PTakNBMoy/6gPBluvLd1rwJOu0kTg0pi4blWW0bN0OJ0cHXK7hWtatt5T2B9fuqeECEHQj3A0Xep5NlBdYNSUSsJX+Xm9BFCsyhoiFax4oJtFKhY88YPQvBi/XjOJwoEJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzKsCY5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzKsCY5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B62C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751142593;
	bh=5RraBN0mEOkPHf0tlnMohDGrpe3+JT4tJJVqmGVs7Yc=;
	h=To:Subject:From:Date:From;
	b=tzKsCY5fC4pixEIm5pq77B0wML34d57G7FMpiw1NF8WW8a29z7Qu4BZwX1P4KFCHX
	 LcVfhczRo7/2/JB5Nw+fAYidOMApemKwMRX6QTg0KbY8AX2ayMpOle4A2PNXc5AAwO
	 rQYweg2ROSnQNs/MY/ivS3loudWh8yPFZSRiZY31C3GVPMIF0Fey9fSdx8TiFKb1d3
	 n/Kx1NnveL//IBXynseCaJU3E5YrEa2mhUT+ItSHIXadtusAPI8o4uqmLR5LlHMnox
	 ehGLZydcMeUwKoo4NN4lL02zS5OflzVu1QbFiUoIpiWIr8S9GgDxs3lWP0fJBk5WL/
	 +Ebacgj1sDPBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F041C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114259357.18603.4594644088262574066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f365393686e3c5d13087dca98bdbfdf19a774e2e8516481a68de86b74b5753
Date: Sat, 28 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751142593
