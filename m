Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216C91714B7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758256194; cv=none; b=ql91hHMBCuE9cR/x9AAhmL9lfZoMu1AedINILWHFHbYM0UKwZI59IxnHJSB5ZiF4w8/Q6Y7SzGVEXwTXi3/ZuevziVYZukrv06OaCDXeILY3R4awcr3DtLNohHX8T/FtjqzlktCbh3qsDPsCxkRlakgRsVfeic4xlb3LYqd666g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758256194; c=relaxed/simple;
	bh=eEP96LNN4k3i+SN3vqAfAhbtoyPIx5tDIS4qyx5soww=;
	h=To:Subject:From:Message-Id:Date; b=iaSlbyhVCqti7kqRs+wQp+tyPeTHz/UaTsATm/Uab+TQBnGm0VGudknFSqkNEYxlb29gvhsqMsPGp2xB8ZuXfv94q4r8crZfFhzvpLSyq4SIaXYSVXpVDHKaZqVbPUdmsKjLZ5SIdCe93nciWa2oL3hsiQWIibRMP1+SQK7qesU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXaMrnNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXaMrnNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75B5C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758256193;
	bh=eEP96LNN4k3i+SN3vqAfAhbtoyPIx5tDIS4qyx5soww=;
	h=To:Subject:From:Date:From;
	b=QXaMrnNI8ufMzLYuiKlnisRRNXZ+wweI5KcbRtsX1m/u/6WiHmoSFMxVH7F2hG6Ce
	 1nL4PRpUS5/tWQpB++59WtBROXImSY9POjmwDWimuAY9QCnSClP5Uzk+J7KEnOXLwH
	 EcP9Q7q41uVji79uDmptJSahxdcAXoc4gCiSM0w0Cj7thVB54f3AkyCc+WnXqRT2zh
	 GE6ULIkoWrL6o8rGkD6LbDEAbSzG55A30dIzcoHVWF8cre/5IBfNA6BFDdKy1m9VlV
	 fEQIuVN0B33qPpDdQ7P84QUgvL0wSWIqFjEb10Io5wQxPmbXph8vluQNiiv4HXwHBo
	 1WrjdGs3C5buw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A019DCA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825619364.2430.6788788006589878527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e38c5ee06dbe697691f977a5d407d0251f89d48774031201f2abba0863fb00
Date: Fri, 19 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758256193
