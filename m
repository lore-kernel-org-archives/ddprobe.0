Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C09B1C683
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724206554; cv=none; b=JovHzfvwDkKAauogW/ZM9zYT+ch+nWs+qzzzL+4J5E4R5KUU5Ij8ZJGv+EpRQM6YpbKTnLgt+Jmr+ky4Ry8j+LmVjyA/jg4dVvudaYiHDY3ZTNKRsR+bGxSoD9N08KyS5i9+8Jc9mazgJ83FMqBk9eOYOpHfZZjCuMRtjFICQIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724206554; c=relaxed/simple;
	bh=1/1rs/vQV/OMb1CRWP+98CqrvfSQgzkhWPq2zJrArks=;
	h=To:Subject:From:Message-Id:Date; b=JZJIFvDgOjm3Dj2+3od5v7whNKqLqhHwDKm+LBPOH6mk14oNRzRXHr/endhuk7PBXbrpUxy81pp25PULPbFTZsQfQTN2tMT/T690m0ks3153T5lA9XqfJTuqrkC8KDhgy1A1Zfz8Q/Fx6NvlllzJVG2hjlw4ErytuRPxhKGd/6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JD956UVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JD956UVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BCDC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724206553;
	bh=1/1rs/vQV/OMb1CRWP+98CqrvfSQgzkhWPq2zJrArks=;
	h=To:Subject:From:Date:From;
	b=JD956UVQUMRzLQeri0hETW/XBAjZgIyxaryqW3ZHkIEaKhOilMZn+oNIeyX7xKUGt
	 1XYIlIexhdBuofwHOPvOM0ZeMUc0v3WhI63EpGMns+/OVcwp9z1ZSLTBNAWgmxglFA
	 VLoTEb4+unF0p6tsRgoz8cbgaAFL01/Hv89GrEYrAx5LJ/069ja0J712FLyN9ZYjbP
	 I+w66iUfcfyBlJzxXjs0jYG5L9GqGLqlP4opOr601j0dSVqHTEDXN3OnKeCHx4P/0+
	 S7BRkSVM3bbE8nqp+X6s3NbxLWZJhpAFLd+SkkhkmRZzXZVfw8UWuQw7H7Xe+/bSzK
	 +1N8pWokk48kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B90DC531DF
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172420655362.5273.9538289244048869461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c34249e61a844adf47dc53148cf3c08e8fceadc2c46c898a1f3584478385038
Date: Wed, 21 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724206553
