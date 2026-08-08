Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4906725D1E9
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786169434; cv=none; b=QKTr0PMQZUdyekWhz0EtoUc2YE2lxJ7jqczRdK/0g0V3io/BtS6TRDnXLfrjW2mYhwkd4oxnEZv27nfJneKvcjEIqkktPhVBReu+nukld9KpqPVoWaqLV++vaZ/GomWvZz0EAZE1pRFQjAZ2Zd6GCFJa5RTYMlj/ts1SnMI+QSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786169434; c=relaxed/simple;
	bh=IUsCL+6Ty9sNuU+V6+pTgZjA8MwgnubYdwWtwTPLWZA=;
	h=To:Subject:From:Message-Id:Date; b=sdI6poE6LPyXGT+Zx3brFr9MwluZcYNAHzjjOUFGGgYjKo4LH0huwXescnSZqIvjFNMAK1c8nctC2BIbcHcb2b3bneur+MOZqbeLdiaEXuIk01QqoJGKjqx3vDCUd9G8mD1eRMy9bk/6v3nYk5Eb/MdSk7htG95PKtS6iJdNJWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQbrX17C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQbrX17C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2E1C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786169433;
	bh=IUsCL+6Ty9sNuU+V6+pTgZjA8MwgnubYdwWtwTPLWZA=;
	h=To:Subject:From:Date:From;
	b=QQbrX17CfaJ33YVG0OF0S1moOM6+zQ/MuVYrT8uMR/yOfkjdYW3UPpeOh/mRMiOGk
	 vviO0KIDkPmkyO4HtPxSUCMbLCPe2nyRlafaXzEV9UbuRoTAditssScho5kP4kc/AC
	 L3OGDNFT4CmtDk3gQC934zR54t4DV2VPsyyA29PBUX8jWYMMzqEL7PaLoZhQ1f/Qgq
	 IB6R8SkBzKKUcuOoB/lnEQqZFfjx/IosJQko2PkGIaUqiAE39ozqo9IpCEOlptxAZn
	 jAMqNwa61c29KKW3m8DWNGd72BOGxJgr4pgkb8f3VFJg5WQA3P1W2FzG40JS2ck4dw
	 zYhtnFJo/B1Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4DDC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616943370.4677.2321031055805308434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2ed9abc804b1945dd5e2b5fa220876c11586642d2d1b5ef310998e5ccd9c9e
Date: Sat, 08 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786169433
