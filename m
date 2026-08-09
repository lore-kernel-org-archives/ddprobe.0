Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D8F2DC32E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786236034; cv=none; b=A/v2cVDyve3jHEjQARSNoIlhIiOR0vzPUOUWN2yrUsPBkM31HTKLqPLBucFDeL3C8li3HI9JHQ6GKbyUwJfIQcvJx82B+yFBxEAgaVddHt88rhRSW3KKBucVSwCbt/Gg2QHDrX4VbzIriyskWHpIDfrF3PSdAsNtqutTwD3a3nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786236034; c=relaxed/simple;
	bh=RH3DbR6esnn575nf9ZFS/DJDzg1eB4Gj8BPyYlZdyi8=;
	h=To:Subject:From:Message-Id:Date; b=qijc91R976I5RhOqHVthkmaHzzyWapItLfyV5k03KGU79epVONIVQEEAqWIYGVjnd2y+owdwauQfX5AHwcdAxz8C9Z05sTLf7PRvFsSX3WlfgtrU6auFZwyJdR1iYNbt8P777IZaDC/J2TQ26Uo/uDPQCBvL0QsDIk3hObXNmqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IikcnSoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IikcnSoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE18C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786236033;
	bh=RH3DbR6esnn575nf9ZFS/DJDzg1eB4Gj8BPyYlZdyi8=;
	h=To:Subject:From:Date:From;
	b=IikcnSozYNxr59905YtBQW3zwZ+tW/FbFNt7hOmfdBBxzjulkzl6f+poJaGZln0zv
	 KrkULj0ajQOSJaaGdUIsfsKYvZjTEzmu9tNgy+fANxJjmJ00tRSVCQrG2UV/SBNdt0
	 pYskvBXrrV347+01F5ZuWrus0Qdq1etZMLW02+c9pOynK1Fx9eENLEYkkrX7zK6NGJ
	 YzxTlVSPHNti70LW4RWwPpSiNyXYFY1yMEUcHrQ6d8A0NvIrs3vh1KPy9UB7RLkK+N
	 ww2CXpQu9IWHSzmYuUQxRddg6OEOZ22V7FmbqLdYrM0crfBL/MZV/qnp9OvkZK8Ffz
	 SuZw5WrYacdWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8A8C5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623603368.25342.14125326515228199887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b143b25c487b6ea0dd8360a794c2e0e5afc04aacf01ad8fcbe4f6e26356b4b78
Date: Sun, 09 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786236033
