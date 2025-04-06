Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572BD4A24
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743949194; cv=none; b=oatbyHuM+UPjuFiL6wzGtMzG+0IyMz+ZQH0qqtwJo5rs9IzflO83bnaFaw0jCaUXKm1EzifZtGuBKP3/29gDaSS3QDYufQUi0C2KQITsvlVX6TvcREmgaPyNDwgvLlbAlyhxEHIP/KR+LPTdlSzK00d3AbIiOtu4sQglk+qsY2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743949194; c=relaxed/simple;
	bh=TyOeAqxNevfK/EL1YYQ3eYPGhxLGyiK2mb/l9171CX0=;
	h=To:Subject:From:Message-Id:Date; b=WmJJZMgKkzegsQozai50/X28U+r/n0e+HAQ4MiC9oPfrLHxp11HlvaFRtuBBRUC+t3aGA64Oii15HakBgzfZoFmmXPvf5Ji3RkwRlSxnJVp/3MLVofDMtfmdKYKlS2LusQtcyaMgsfLWsfFYcN8V5OQqWGtmGOQHf4QWl5ABF1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0qWZW5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0qWZW5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC587C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743949193;
	bh=TyOeAqxNevfK/EL1YYQ3eYPGhxLGyiK2mb/l9171CX0=;
	h=To:Subject:From:Date:From;
	b=f0qWZW5atUmRCLMPFgh32yJlKIfdd5sTDmnI9tLojvhKvJ51LhuaL6CqqjkFLOZQY
	 3ELozVOqf2t7GfDRXNuXY76OFpSA3DDPEwLPVsvdythF9XeMNjrWD+GST3r0yNS7aQ
	 GO4+L8Gl2IXzb27Q6BxoJGpQE507YPE39u+GPf338DKD3+oxDmHvZd4Lp9aJJFBAhH
	 xD8yBYzF4VAlOgO0WpCOsR4BAeM3b3q5Uxt0yQgR3to7VuXT2V4LCxNOzBkCSoM8C3
	 ibtudYhyiffz8249nM1BZ2+7Jd1megcHC8iACv2ZHBTn2uwI9HWf0ullepMfU383uF
	 imtj1wrGa9tKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3980C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394919363.15377.16529594086232686892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a661620e5695064c0ddcf82357e389bef65d181e6a47ee3492c3cd9a5003c2c
Date: Sun, 06 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743949193
