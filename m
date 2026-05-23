Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5DF23C4E9
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779576754; cv=none; b=KPEicJjmCaGaSWAu4vzzzqXhNxuNaW2HtV1XmLb3FppfsxY+x4nNC6q4yNv2xVq5mxAGc2Tsm23G7vTaeuxy4QjmyhRSCVypGFpobglTjt8J5g78i+hi+Rmtu5wzbpVV/CRy2UQ107WmRgEWwb+ciJVACtuGcVeteBku6n5DF1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779576754; c=relaxed/simple;
	bh=oCQiNPurZ72dRCw+SS5DbAyUGlBAuV5Xv3K7CryBpyw=;
	h=To:Subject:From:Message-Id:Date; b=kIpxiSj3/ZUs4npsvfcJ0nJ72OzdweAS3DuQ/wfmBXWwEeJvVAlJMhpKHpHuktWDIx7RRBq+7dgjG16YRXgf/sfhDrgBbqkmgs4WtwkeBQyUZpoSexSD4Y3w2bZHbA7bzypWJfhFlAjzGI8+IbZeytbasDRonH8VMJjXkvtGR1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NseGZjLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NseGZjLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D78C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779576753;
	bh=oCQiNPurZ72dRCw+SS5DbAyUGlBAuV5Xv3K7CryBpyw=;
	h=To:Subject:From:Date:From;
	b=NseGZjLTMBdphuxUPNta9Nqe+AkMpcIelJZ9yRMtwQoC0KvBMrnvFwSJg4EPnth+P
	 GbcCYwRB4gfa/ekl+GCp+YR0iwKbjTmYrPeefPIR8WUlW+VyLsvNvZPxCuV5c6yB+2
	 XJRbeK/8J+P65SncNh7OOcC99mDQcb5N/XwpX0h950PhGy2yRMmUoXib2SnyTzzyJZ
	 p1fHCo7yDQ1cJnpVVKz/dC7I8gou9QZSjGOuT3JbdMeTVb1ltet3AP1LwYK+5cQkn/
	 kZ0aJBmN71w2mMZBek9ISTvfBDhUdjCFaDpaTKq99B9c+BgmNJInquu/1IYEiUroIc
	 QDeUzMkY9LNfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6CFCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957675368.28841.10516491304579756520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564e6c262dd5e5cdfebd38b6847fb56c16de7a3add8c8fd1d62a9d5247c505f8
Date: Sat, 23 May 2026 22:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779576753
