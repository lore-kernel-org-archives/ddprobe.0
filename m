Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EE0D27E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733555154; cv=none; b=GEBoeoYlg8KDaxX/tUwwjV5NOveBwvX4izxcpYDtBKjPKaUjaH33AsK7ZZBPOPoKVwP5ADk13jAmugORUSYrB/YpSXPAMissMo8ur/nNCzNob896h3FIhNyh/704Mni6CdBSgYjWiyUUXsvIK3NbXPBCSPf0u8IQBep9XIRTyIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733555154; c=relaxed/simple;
	bh=rzlU+Ecx2+KIIlQgR5O21Jm7LrTzsiH7tX481OZqohE=;
	h=To:Subject:From:Message-Id:Date; b=hJBJOlAjJwki8w42BhLUkvjc85zS9SC976V4qirq/r7vpFJDogEaQ2qR2VGgrVtCLTLudq4ReqnuISZmkzyl64AGGAQHqWSA7h7kGOOba+e8oZ1WdWzjXKz1DovhSEhIpQ/Y1Wf00arWThkkYU6pUWpkRDZ3c/fXyV0lIE3AUIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfwnjcDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfwnjcDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC356C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733555153;
	bh=rzlU+Ecx2+KIIlQgR5O21Jm7LrTzsiH7tX481OZqohE=;
	h=To:Subject:From:Date:From;
	b=GfwnjcDvanl++dwgj8ZFAuzRzKJJ6JiQ3o6xAlH012rZigcNAdawyXiEYDaQis0wc
	 3MBKiqWWvcGlVYimqqeQEOiX6+e95BGszJ/oGyjolgpL6I+pZhgFP9vA5CkYvRRzcf
	 j/D0iUrWLP6sDZQ1L8NXJERdL3hS0OSegRTK1KAT78qzvM4LBJaif6Z80O+UxBWqTb
	 QQM7VwcRzZu7/jVylC4n6lVgQwp0uZNnGEqFxGHemzw/1GiqBTVOVAqj7Fq0uwueZQ
	 8WIfO0Ur/Q0a86yeQ5jxXZWzEsIIh/2HhXO3eMFwre8+dHMXCrTCVkvLkRtsUmi/JV
	 ig7apDnPTnBUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3A4E7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173355515362.4143.4659078737487180623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ec5a4f6c5589be6dab14b0aa29e44e0009f78eb225ac88f60712b061142ba1
Date: Sat, 07 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733555153
