Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C3C40DFDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776547654; cv=none; b=I8SmDMRGWswoOhYIdNJDjA+BwA7ejyFwKtvem08lHqsNbyXtFN0i0uIYunkukBYwXvCYxMWt3Rg5mPxfxvxpX3pu90b52CqJz+Uox6NJ1dYExKGTl/u1+p5fOvBPG+HUurGTFBCLTQ0vANVu8AFF+nqNFgfRXhVRZ17HoFJ0H18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776547654; c=relaxed/simple;
	bh=BnSlA3UTIlNXGhwgTfE0Qsn1US8FChD+SAAsMgJFwh8=;
	h=To:Subject:From:Message-Id:Date; b=QBrlWpQ0uvHXgzB8GSUpmGW+cqnuCa64etA6lVLzMvq6yKALiSDn8xfxoj0/imCZmLvSt0gtEL6xszfo0jAWu+pQOKFGpWLKyOOLSYYqHzZRcM/Wa1g3Yp0E3F8Qguqm/qhlGvrgDszZiJDQdGrmESoZ+UB8J0Sx8SSNZOinnbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu9ZwRwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu9ZwRwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4BDC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776547653;
	bh=BnSlA3UTIlNXGhwgTfE0Qsn1US8FChD+SAAsMgJFwh8=;
	h=To:Subject:From:Date:From;
	b=Pu9ZwRwTvJfTYHcFo0crYQjGyRgw3OvgWgauNw93EIMnO6pqRLr/OqC4SwbK6eJnC
	 u4n3scb21s10nUZkRBs+N9Y3o5KEQNrv/JuLin2Cs7oTKz2cqX4YJl+WtEf0h65dko
	 B8rJFuRdRkkdCEpw98g1sOLE8T2/H62bJpzwg3R7mIaa5Bj/GI2adFGN7eNf8ylWvq
	 FZlsI+VF9/qF8wAE/FCXGYh0Gv2WJ7il+WtQKB9aDp128my5NDG/dAkeWaGG2KuscF
	 8fZVqKFt+B38Ex4d9PL9YbEV5Cr2NbiNPVCnrR1tb722sYK+buUeqq35oAow8IQqBi
	 QfpGhBXP17zAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B14F99C89
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654765368.25981.10219472096545500053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db869d30a9bc1beeb331b63c53bb240852d2db90d88fb86f6bc3eb1576ca6e76
Date: Sat, 18 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776547653
