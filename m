Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2194052DC
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785423634; cv=none; b=siUAtaoHJv3zzPqS5zPaw1QPAJv77WVrC4EmUQYjgi9/WlQ0KC/bSCR1aJR6mXrhP045OChhn/HC9/47VvKjTPwTU7soswPbWt1eq0q4OaBtx+wOdYhK3ROKLYgzq2rjPOFNjPwiQmfGlpnrTPjCzfRpC9ECpjOs3vpDZa5FxzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785423634; c=relaxed/simple;
	bh=D/i14M9rAWogyWLyPqG8GZFTdfMtdUfcYuTuNlQk9MA=;
	h=To:Subject:From:Message-Id:Date; b=K1RavHjW0wAbRaFdjpw6C+L81Fcn4b1Im2DTRNPZFbkouBQfvl647eheHT2rWdCkRAXh3bSB7kku42OraivSWItFxd6uCA4EmPflVF8JxU3+AOf9u8jq44+J6UtarfwNvpdjUitBE9bLu2lMpD939aJH51f5vOyJq8QyhCXv2F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCqIyfek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCqIyfek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D279BC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785423633;
	bh=D/i14M9rAWogyWLyPqG8GZFTdfMtdUfcYuTuNlQk9MA=;
	h=To:Subject:From:Date:From;
	b=FCqIyfek9JwbFUDcmOM2DXbB2rGxwGGhDpPlONkZ/8MMUt2AqmgnnsdDEKrExlAuo
	 5hgzy3zkU5KDndMrrUk6z4JBSP8zSkot2X8IkZuoJd2/1Wgro4bBtu57y8rzrxMYyY
	 Q3ifYCkF9hSd+g/P9dy+6amSQ3EJjE29/gkm1uGrDENbEPyQO27g8cFmD5guregawM
	 vPJToWbVXSRIloO4HouQtNizi3HVX9gzOvPrOKIYnHeqtlfmxfM6OFzwcxAm48cr/4
	 FQqtWlaNQ9nJ2D5l1+FLwAiGrm9tjrQOYdDr05veaFjrSW4gYe2Gyu9GJex9l/VEOc
	 3Nyk8HQGWI3zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0BAC55164
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542363368.20116.10628033625006212345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec6b7abdaecbeeb9ec30d7ad1600409a6fa2003d537c575a075ab5a55537620
Date: Thu, 30 Jul 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785423633
