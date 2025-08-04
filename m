Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9931BCA07
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754332795; cv=none; b=YEeLbUw+YskAMktqWNUFVOQPKKylMIEhuka2t3ZVV32DW58UNin2CYcOfd7U81oSSZide5ZIstu1QRM7Z3MMSaRCDbamZ+5BOXjc6dcVUPa02PBqvUpzsfW445BZYPCji+1m6KOMH3a5U5Ud+USaS9DDq+Di8CtUuFyIVCkS4pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754332795; c=relaxed/simple;
	bh=Cc+eXV71abms7lxCF/uF1Z+lbZpuw/XDeyS5+/99xPU=;
	h=To:Subject:From:Message-Id:Date; b=BJE5ZR8v+qzdeadyzrLC9wkCbB/Y3XS6Gy4q8L5FiNbuhSloK4xgeUAxgDlNWv74pnSMiLBT8K6SvH4A/U4U75AZ6kNfKwcf2ADRx+/hlSolNJC2ObG+aBmTGXlglu4CiVdjpvPryGvQA8/+GcfgKbkVD2OhYugN/B90qLjvZXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSPG/xxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSPG/xxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9741C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754332793;
	bh=Cc+eXV71abms7lxCF/uF1Z+lbZpuw/XDeyS5+/99xPU=;
	h=To:Subject:From:Date:From;
	b=CSPG/xxP+XwNmWEPvM1GYhf09fflfdCaQXsoOrh6zHrUhB95yzLK9WegrkkLftX8/
	 XjgmpIz2JhYtaHPyfG2puexUO5fOEbofaZoSZxLlvN4P1aAYGeSwDkfHbMLzPQLh3X
	 PN/ZM6qB97j9ruxMqbWFLd2TlOlEOzYOnhXJozdBlkF5N+wOJ72lzMCgbHAUfqVLOK
	 M5qYxylIHG70Scdtv4l/5oEBYd2O4Y1cMXrwZbaNiLOrIxK/gyxZfm3IOjly2mpYZ+
	 2+iHxkw7EAdlw+LIwCEBgcRNw+5hpzWxBviRVZAxu+ykhsUxbTgkz1YrqmkqlDSFHa
	 ahepxLNCTpHlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960DEC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433279360.28038.3926758182476148854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc2b9ace4057447d52adc8c86407ded30ac9303acaf0ab162a01129664e2ade
Date: Mon, 04 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754332793
