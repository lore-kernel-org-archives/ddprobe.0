Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D1A54758
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762135194; cv=none; b=ufS+FpF2gjiFuaiZB0sS03F5dyZS0RtKqXlcruyGZR1IKc98sNp2dxHSEehPZk1PaBFIRcAceINe2jflUNegX3Y4R3WQyy9KgH0lDP6xbKeZ1U4ivDsqKFMtAN4BIfPC6mNb2bGSt6/HNqdUpwJ+Az6nbMlkRDOrPeBVqZ+TnfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762135194; c=relaxed/simple;
	bh=FmfeJDN+mk0FnwSN8OWeyzSju9eMIdw9Jg5szvi6ilA=;
	h=To:Subject:From:Message-Id:Date; b=LCGSVoDPcT9OPlP3VtqEVYIn4y/294G/Rw7kizvMyhBwr4HGYsz/my1+0K6GD/hSCtm/4EDd5Z3a/K45PqKCGiZ6jnFmhGIrokrLp2/fBTMYRnzyppb6J58BwdtZblZk4tp2REMwUs5i+hKx8l7dZ91eIt/KLirELcFSNIWUtZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbrsaSda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbrsaSda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE891C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762135193;
	bh=FmfeJDN+mk0FnwSN8OWeyzSju9eMIdw9Jg5szvi6ilA=;
	h=To:Subject:From:Date:From;
	b=AbrsaSdakfXH6nqo5fly0USlxZLeae8jdYCGqknnfxWrTG1rg25c7kvuLZ2J69UQU
	 zZv+H6+dnFJl7MNFqiEHHIJW9yQgHxt7kLVXQBuCi7cKzndS96ba+Au+CSHyqVYrjG
	 i9/8Ds/Lbu4e+Dbpd/j00gct++eBlgchI45UkDUWHhLZO8DcFYU2v9Dn6byF2b7ax3
	 5FXTXFuIU8gRrXYbFin3MlAlMePw7ml3LarWOt8qKnLtAyH3L5UaHfdpCu8BANFml3
	 zuM/M7VFYo6oR4J1eDoV6HXL40nIfQsUkg8l/yEkO7538cCSZViVh6dcIgnsMiA0pE
	 ZOySGkgO+4K1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975A2CCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213519358.25284.14112847636340626300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88bf2b4a02a8d319321dbc57e35728f4aaa2065e5a73a0af0cb061fd5c95b1e0
Date: Mon, 03 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762135193
