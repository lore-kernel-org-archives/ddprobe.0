Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84192F5A06
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771538693; cv=none; b=X0R6NdWE019QHfSvHxwRGM6qwFhX9H7WqSjH5bJAxLytY1W9WyhIC3Xn75mzWbm+rC5iG7KPDbkK62cPRdjie0R95+eo1YXePnoKlMxeXGxDZeOCtpfPOa3/4hjWNCOzkiDrQBEYQkzji2XxFXe+cwIhmpUqgTlUIlDYN5RiZBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771538693; c=relaxed/simple;
	bh=ONrUvxM8UTIXs4JHjj6i1vwfOqQGrlq00Az2hhuekDo=;
	h=To:Subject:From:Message-Id:Date; b=WTFr+99cWd6QexWUhdzlOry2RWx04PpIOkF2BU9kwwlNP+eINSN9IxTkx6I8uF57eFfuIHEwxm7OfvczaKoACBBJ6t8oTEf6p6xBmFIZu9JcDB+NZgojWXoBLrMkDfF7tOiwssyLNid7tYrEBrFJehhPGN+dwnEZaSqVIuiRd64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b92YWx7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b92YWx7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0179C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771538693;
	bh=ONrUvxM8UTIXs4JHjj6i1vwfOqQGrlq00Az2hhuekDo=;
	h=To:Subject:From:Date:From;
	b=b92YWx7NntorcWsqe3d+T5VC6KNr9us/F0F+PdwZkiCj+DYIRLUqJh27hEVVJhqDT
	 9uljEudHuYVZrramwbzZQtNVyP0pKYwmxDBPf4rBUmBZepdp3bhSFUKQafgnuhIcTh
	 p7EzQaZI5MsVtazVI+JhAKgIAOjfpRQNdYAOqh7cg7nNwSxjrL8ZlHMQ936rsbx2Yu
	 iyUIP6qtfReKg0vJ9tC5IbR2I8PZnOLzD+/bgfV+OqmRUOXP8iRPHlS+OPjom0/hk0
	 ADFqntTH5fYdJrGQR3kAD50H/nhMgYS2J0xxeGn1NTCbTmTVxAzhA2q3zasJl5dDrw
	 AizoBM7e57J6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966DFC531E1
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153869359.14206.8280780881561750515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534b71eb24639a6477795bfcb6c6f3243217502a2fe33ecc7cea833a6f1b11f9
Date: Thu, 19 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771538693
