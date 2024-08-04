Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDFA1173F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722774954; cv=none; b=s3UKhQ8ZoOgahSNAlBG0pQ+zXW6J7cUoWUOw/aIM7+H3DV0eE4AFUY3Pe++o0/NB1FGkosnH7aSlKgk0Q3Lb59+QPMRuVQVHH0RFqDTaR630foYPCLAWtIDpxmyZ8ZOMeSNPRnIHZr4V8IbX3OpiAgUXwkAKW8LJzxM1fcfOifI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722774954; c=relaxed/simple;
	bh=eIf9jgrhrQxtT3rN4dYGp73ui8g4WgU4uBa3xhPZTuk=;
	h=To:Subject:From:Message-Id:Date; b=DdY/tJ3f+ogJaS18+FDaf1UqjhNlE5ITCrWNhuED7gzlp5MFGquBiRlalbHx3oC5RNMX5piZLhPsCcwISF8jaPN9+xgNFEh6EkAuecctw5uE2U6WexRwNUXZvOV8bqOCS7AwRlvv2zq/m63H2G2jysRJawWR6YGXHxxx0ScT97g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWCWVh08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWCWVh08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0452C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722774953;
	bh=eIf9jgrhrQxtT3rN4dYGp73ui8g4WgU4uBa3xhPZTuk=;
	h=To:Subject:From:Date:From;
	b=LWCWVh08s5beFf8aUItn35Qw9fTYhhOqgjUjSm3JQFkDAXv94si1IDOkV5uePzMCu
	 UdqrM9oWi9RYtDBBNo00O0EKuHgM7p2aRFdZBMg7zjfGQqsgFo+Ijd3kkuypeInamq
	 DvPx3p0OfWxKfhW579IFMeVSVCaStLuqcKcYxzDm2se/rSDPrp7aQ0Nr5cVO2wBfVR
	 DCxye5a4TWtr+Skn0qZpiT8oqpRUd+HMOB+DhuCRuDvgawCOfTPQwO4ggOJ0uq8lMq
	 jQNLtsf+2M8mFai5vksDFqbmtpgkaVprVKGFh9te2l7pM54Erg5+c7aTcEn6PPZWGY
	 8RL8wGDg5cOKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9946FC3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172277495360.12133.14370523609503857209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6cec055f67c14c3dcc2c716632e5d9d08413a376446ae1ce432d270c3b0be4
Date: Sun, 04 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722774953
