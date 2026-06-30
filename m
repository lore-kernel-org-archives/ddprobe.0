Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C993793C2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782852514; cv=none; b=ps3EHbJgeJzLZsCkzzTJA8iHcmmH/hpgX6c+Ic1AZW1NUPGVu9WnRUUBuJGlBPVNISkRy3U7i7ECuQCXJR5SYFGJellUirUIUFZaxI6W9nh98yEhnsqKxQfuU2hZiVIGYj5EPu3RW1vIUSqmUctQKXdFuCttJjxPeqVKTdrCZEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782852514; c=relaxed/simple;
	bh=w/1fv9ObQ2knbLg/MeLVGPD+FLPlczFIiQnYOtuXSVQ=;
	h=To:Subject:From:Message-Id:Date; b=azi8goR6aRk8fpARwNT9V/HfGmCAE1SyP8ONbzfCI4djAPttiWi7+w6BV6wgK/9OVKPehx7KklVFBQT+38RE/Z/ybhs38Giv/QoeB5qxYzUMqmQoK24F7qEwROYUV5oXO2xZqxyC0E9K99x2LVGT0iETJU14nAhqG+C3wYPyyqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oScOyKhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oScOyKhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C5BC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782852513;
	bh=w/1fv9ObQ2knbLg/MeLVGPD+FLPlczFIiQnYOtuXSVQ=;
	h=To:Subject:From:Date:From;
	b=oScOyKhJ5RCcLpcYhGLxPg709Ybpjpc0QkE2EblnE49q35xnaqHoDi0wHkB8Mz09j
	 1BMfo9gvZLedv02cF6V2fkmoD6MUncBrtZKqxRvBcTqQIgpW0oMBNV6WgeehNAPDaG
	 Df2aLmu8KtgW0oIluT0VKQvhphWbCRJal+8L4Gh60dmBoecQfgpTNT6qNz8z9Z2HNG
	 SaEpI7iKqhlJ/7rjYyjyvhdnjKOCFnxsXfgKB/AH5/hsjJIMqqjDgkW0g2jrOCiMDD
	 Snqw7QS2jrHZ5iEguCKuZv0U/gmvxBODW/qvywMR3UJy649odLVDiPSE9TeswYWQq+
	 1q4z7e0YUrxqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92DBC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285251368.24905.119039670499937305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1660606356c0c7b70e04548c2161be6aa36acd82221bcf2df96b4d90a6e2d1
Date: Tue, 30 Jun 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782852513
