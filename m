Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4CF30B51E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777541854; cv=none; b=qmx/jPoJXiFkxeKbooj1tUovqlRwtAJ+YcLHJrjE/ZSf31gQwdyySWB3iypxps1TG8qAO6rtg+SJ79xCjrkprUd+WIawdXREsz0vocx+v+qkK5+ABB1Hkxbmq0+0z5y5rvlxlpxAGjX+KlSojqD4lGACeZMcaNnJJ2OcvjCXpQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777541854; c=relaxed/simple;
	bh=B8n9qh++lsuzl7vxR6qfmNYHUDUI9KwHXIGQeCGDnrk=;
	h=To:Subject:From:Message-Id:Date; b=ewyET/h73VNeMiia7uURCQusklYx/9VlPhTBukr76wRGt/yO4WAMxSMXWEkIe85Xt0ZrKaKoL5G1QoeSjRXPBVZLpkO59LfnsjsxqYrnfy894pryvMIjS8QPYQXRQBH7KbogRNTPohpXTwi7v9FueW7mZcAC8Wg22y3kdtVW4BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XizCc+y2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XizCc+y2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D8EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777541853;
	bh=B8n9qh++lsuzl7vxR6qfmNYHUDUI9KwHXIGQeCGDnrk=;
	h=To:Subject:From:Date:From;
	b=XizCc+y24IqJexu++82OYmsNswlnd38YpaFWF/1XG3NqZO4ygLjU/IRiQ7HkQBxy2
	 fCGxPA7av8p0QSrH5Z9pfkk0pVek9NEIFHE/qyijyw6YCkSFOaBwwKZPlko29BArnJ
	 EHqPgmGM+uoZw4nK8d+d/lzP476PSGoe1ZmA4aM/TEX+CofLaa8LburiaKjH4WPHB+
	 pXCs6OxNHm/gI0xeet8r5iRdWQsUQkcLKfc++IhuKw3VGrwpBKehViomj7vFzlcwxg
	 LwrBhcGjRNwVGARrp2fOzQ615Af9dEXxBRcyWUfzwXICZcaydrKSxxy+WbD42gt8MW
	 Oydh2631FxhIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2B5FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754185368.24516.7345501645843225746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b628be347b2306fecec9ae198e6c2d0a5434dc39a2de037c4a3032a51fb32ca
Date: Thu, 30 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777541853
