Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABC511184
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705480097; cv=none; b=AsO9yuOaCEIKMgYsLwZ+u5QgGElAggzk9l3QvP6E590TWJCE2+RJL6YhxUY5MHUogo/vXUOCyZjp+j7v2LAxz0/+921ZSbiALSy/GwrBBRZMJ9jVhwxz3WMvXZbyXwqrhUiZPI3rRtND4AEDokEH0Q+ivpiinTOYQZC2drlPpgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705480097; c=relaxed/simple;
	bh=KlVIkno9ZX8IcbvI460syDwUdFeQqLoDmnf4o9R06+4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=ecSg97fPCG62MmrSk8vHo0eUqYu2A98GVvLw2+fzfOJlelep2yqdfO/m1ishXwzP3NWC/KTZb1o6ESlr0Y9F//qRXjCM4bbgBhs5K7/3GVbLJiHY59QsFUz+HSQWlfqWOQ1EWTyAHU7LNeiqf6p1eMlXQLp5a/GwvENx30OrVag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErCNgsQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErCNgsQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B3E6C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705480096;
	bh=KlVIkno9ZX8IcbvI460syDwUdFeQqLoDmnf4o9R06+4=;
	h=To:Subject:From:Date:From;
	b=ErCNgsQab/hVXZD/MfunMYn2DIQ5EIDH9rMYe7T4o7MiC8ppa7mUi4KskJ1ov6iuZ
	 nvi1kNAmwNRxxy4CqdEOH3ulGIoWLYuMO9JS006T3MWReByaecTr2CynRYiFpVFTq7
	 J5jNV2RkvfIL/9I4ZHG4N5Ofs5BZ1xeICjNK5uZ2EielJyiQeAeiAgtuaZbJ0IaTLh
	 bXsR7Gdthjy8KWidnR/6T/rjzkFSkCTtxJhS4CIAg9oHUvg57ZHgFE19ZMm/mw8WcH
	 PGzB+3cBOHtYBFthy0yuNsQKGO/7JeqKrI3zl5hKUJQnbpWuvn5e+DxQd1st9lnOD7
	 IfitLjBxtoSdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4CFC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170548009637.10593.5077707839443872072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379c0eea5af923e6cce73ae07644181d4a81d47afcbc2f99244a2c658b54ae1f
Date: Wed, 17 Jan 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705480096
