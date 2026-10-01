Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA38351C27
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790818235; cv=none; b=KvzG0m7JqNTJo3iyvqymZUVNAyjBgs1AJoHUMEXpNr6Cnm3IFGsFa5y7ZzBahRdBHFn4NowoJSl3YdVAbfmuJk5eiKu/LdYbBY8ZdO12nExl4cuna+hDUFCLfTnLmAKXTTN0/zhP8So0ioCNOFPC3cI98LIiFf+lxkB+o5q0Sbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790818235; c=relaxed/simple;
	bh=iWggcHwrIKYGc8HlUHSQBKHbnOiBvPa50msNEe8XP/8=;
	h=To:Subject:From:Message-Id:Date; b=dKfrA24V8PCVGTpwUyEyLhC4wr4ms92NvHiUp0dDCFD7O4YtrkbZbPNivFwNkHYjek2Q7KEl+B2AkbYBstOzpyWGd5uHRdeourk1Qxzt8liu26E+YxU2o8cwZrZqDwhyvnf31GXNWcDnndcTPUXScJ8D0cpgqPA8ro64g8Ne9ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4sek9W0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4sek9W0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C53C4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790818233;
	bh=iWggcHwrIKYGc8HlUHSQBKHbnOiBvPa50msNEe8XP/8=;
	h=To:Subject:From:Date:From;
	b=A4sek9W0D6b4iD0Lk/ZX0o1dq+s0JlYt3rWm+K8QoahDCmUVH472fALZPQkCC+hXD
	 sXUbdja+k7cA2B6ARd6CD6hKxIEkdpm0slFr2mwpb1pdjdAAgTfSHxWNtS+ExpkbmK
	 5whOHCNvTcUZTNtQoci4gkhWnAPuSKrHSt1kJ6RnnieLDgr11mzJnuL3JLarNhiDGB
	 CyVN+COT3PTc+HG6lpjID7jbku4GFb+AJ08PMkrGznFuVA7/FvGjYhbQGFEoiD9ID9
	 xIAr2CwBiEqlH5C8cAYTnCWjRESpqcQJ71tPnNrZc0ZYy9hxlkE1/3XkASLx4Q6QOg
	 MM3FDDmkQ0yLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1A3CA5FC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081823369.30412.13226120916769168029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f140a8ae9f03d1f7597829b31f11acd2b65a4e91c72ed4e40154dacc561423ef
Date: Thu, 01 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790818233
