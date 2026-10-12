Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6976FC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791763834; cv=none; b=T/pRYE24aujgxFVb5SnbrcpwsyP1VaehJHMP7MtqzpkMcoHg/W5nXQpy5a60TmHQGOIbLhgUI28+sfOJUmbPq+vb8x/Yu6QrZXrxDIY8D0AHaKiOAa6rCRjKygy8gWquGNdGr9cbXUXw+K2/RKNpyHavy3t1AVmEQSbIfsayDtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791763834; c=relaxed/simple;
	bh=FYQ3aiEssbUaDJLcbodh/9LyI6ukYXH/a40+NkZmFcc=;
	h=To:Subject:From:Message-Id:Date; b=u8CZw+natgZ4RjObRURvtdMT5kJAy+LtvJfFo7cOQxLABTblNBxPFJ6abr6D+pjlPryKFaJVQ6jFIomlKBZAqhXmB+mEecBfAok48X4XF0VXz9PkMqxsutRCPu6avD/6k/IijTvljwK8JxpFQWTt3RGqL1Z54DcxWHRggZK/DL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/lfJw/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/lfJw/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0800C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791763833;
	bh=FYQ3aiEssbUaDJLcbodh/9LyI6ukYXH/a40+NkZmFcc=;
	h=To:Subject:From:Date:From;
	b=Y/lfJw/PC7q4Tp1xBfCto+Art3LHND7bKo/txivO7MHwhImH27ofQJDBgfVYDxxwI
	 12O+nh0wNqS76TMcpKphIn5Bgjp/M9MF8D2MuaOEChp7MGgX/lSi66wposs8UhlGFi
	 OPR5BGhLOYHBrLkZuIO+/b52CENn6s9yh5WEZSuLdiTJxmgvySM/Con/DjDmy3XoRI
	 ZlYxaFsSiOlb8DvHVmdwUgZY3jugGeRw0sy3i2lZUGI6fYT/4Px8GJg1xE/tfFFg1y
	 ZX27yfGiX2yCACbgPPbUQNxTi//dBb47siODcOjiEcTIhW0YwwxfmRWC+6Nrw1NSvB
	 KdBSzMLQR8OpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0F9CA9ED5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176383369.31750.6043062137898235153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b445beab19d6261ad0b9e20827d02a6a3b3163265627352f8a2b2bff66f5e0
Date: Mon, 12 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791763833
