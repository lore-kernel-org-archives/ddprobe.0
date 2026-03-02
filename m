Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445CE37E663
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772487294; cv=none; b=g/Ip727qTGXCwSLY0eHTVeSl2Ume28A8WpkbAZckNjuwNlOzhAi60BEWsu2ws5M6Mmt67401m25lHRqhIVengRPnzBPHovv41Mdgf/4AoDUHsWATYNJPmY2FJBEuJgvlFjBEVtGk8WGjHjHpx8FPuhozcA2gGsdb5xjzA62GNzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772487294; c=relaxed/simple;
	bh=5pcvyExIgLrpWKTsUVdJ5OmEC7JJ5QoHORs/6oyEQh4=;
	h=To:Subject:From:Message-Id:Date; b=H5KM9lmFW3jHWFfIMC0WNb47MV6aCfYbcmE/KYTF+bNK1zftHoouG83GRO0LXF+Ph9QV8mNd0ST+IZKG+vfojLwuK9P2KnAeIOgV+NVhhND0cGGZJjAD6wH65rm0aJEFCik2Atiom3uH2AezsLj/YXw9pPRy1EjkKMumqHzYK1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0Vg4y1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0Vg4y1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE90C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772487293;
	bh=5pcvyExIgLrpWKTsUVdJ5OmEC7JJ5QoHORs/6oyEQh4=;
	h=To:Subject:From:Date:From;
	b=c0Vg4y1TMoQeXU7z8D/sTFJ/LHb3tl80J5Yr/DMA8AwB6uRV9dcNG9vyfapfk34c+
	 BRtHMVDu5h8/vF78gpbA/7d1XkUIFieSB08+pIgp6jdiRx1w/5ib+4/ASKBmvhkalR
	 n6amufTfVzUWK+MLTbOyf4p9cQvPXwa57YXpL3zB8k8PHffP7kSVN4hCS7gYCFwJXF
	 0tQbt9bCHsmlfAnySlsgVjQE51NTHLxXIAZzzanQ2VY01pD4tP7E7yFgRpAqXEEZ0E
	 Q647YzJBwQwkB8dlXXk844ci8z+XohpqpytSv70qcdIo6GZt5eYPmvhh+OI8yvWIHH
	 q5qtuQrlzB96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02D2EB3637
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248729370.30082.10101879226123786774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea417fba8692dc91a8d0b8866938cbe7e9761161d6a6460f45385a9a37aadfea
Date: Mon, 02 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772487293
