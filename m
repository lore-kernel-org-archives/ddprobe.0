Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F3F278146
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754751594; cv=none; b=eiOYKrq+zBOJnSzoXFGPN9twwCk5i1W8n0xMQCJva7hlIdEySKdSPmOLxTPZ87nyR8hoPMYYUWunXqc9zNtyR5SC5qfiC/f1cpKhbdssYMMugx9uUYf9X6U5QrHatWmDWUMF5MK7STO6WJ3RwEDyeMvo06QcDyX1eJXwIvtZ8JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754751594; c=relaxed/simple;
	bh=dRUKb1WlcGbVqpOY/yRPsTsRsA5nMtDlt+PxVpyP6TE=;
	h=To:Subject:From:Message-Id:Date; b=LVCmxtX6L3rRZsitGhw78J6bXDe1lLee1HiAEO5Ij0FRTf04YiBNh645unMvcsZXsCEhxWbHom6rx6zaWM7LIlbZaFytQQXJIDS8oenpVSsW81eH6G8k9abQSV4nbG/wmQY955V2RbFN5rXCSfGM/2BbtdMcoB+obdEbW2PlJV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=px6dbrTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="px6dbrTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F0EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754751593;
	bh=dRUKb1WlcGbVqpOY/yRPsTsRsA5nMtDlt+PxVpyP6TE=;
	h=To:Subject:From:Date:From;
	b=px6dbrTHHVxBra9+MgRxJKlhCh04s45/ILA1fMEsDIxARkSL4RYePz2gk5Td1AmhY
	 Cm7T98YnDQ3lexInARd2f4wn237gsvXj8OZnXVDIP8+cGkgqZJtzm6FChEoAoFWLJY
	 U9HThUJ9XoI5I6+n7+DBXEe8qdJZYvvdZsBeYehWEP/wNpT0OaKt10tFvtTBogqrCo
	 gt5xacuJLf0F+fZGVeRaw089ASHU2tdhuQvyBZHKzFTlH5PyVm48V7669yz6DRALZw
	 h02ens127RsKDVpmsUSFUNgD6OXm9ils+9VfeoOyEItgw7Jbs9ZGhavI9rKj55FK6M
	 1lkl6ShpUIrZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91216C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475159357.12382.15342446031629000013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924d543054655328fe5a2ca5bd73a6ebd27cfdabad1546cc75ff07de9cb4fdac
Date: Sat, 09 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754751593
