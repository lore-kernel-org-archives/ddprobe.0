Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2E033D8
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757563794; cv=none; b=JSw/jKEcbkP1xKkQ7j9bLTWAB2qHmN8DLGrdi+BC/nTTy9ePxNqdoZULqgE1kcVNp2+GgP3ssjCZMmAsx2yIf0PdWp0nWg6OqGg/9KSpqKC5BCvWayy6ktQ0sIc4pFnTEXhrI6o6FzovY0dbgPezPkJKbLDGoi2LaZHoABM/P/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757563794; c=relaxed/simple;
	bh=MARm8bie9MIPtdzEvYYISiioxoQvHQLJxb4ovVm+Rdc=;
	h=To:Subject:From:Message-Id:Date; b=Q2JH5K3P5V+LwIE+LSI4PijBMarPe9bob8ndXA2Hl7tRT+UJuPiqokvMe9vhfZ/4ZdOaTHKpv9I03kY+2jqSDdYhR0vAHSzkfLFWgPOjIReIGSUNkKi1+2A6Sqbw4nmZvk29b5LeFSl6Jv7CiMGMBNbuPtxV4JEfve7rtTP+Srk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhSn1gWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhSn1gWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D7CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757563793;
	bh=MARm8bie9MIPtdzEvYYISiioxoQvHQLJxb4ovVm+Rdc=;
	h=To:Subject:From:Date:From;
	b=qhSn1gWxLKUyxRKHcqTeDG7PbMsGatjjX1bmAlaQcHp6sSxTS3Ll237JnREMZ9XmT
	 dU+4jZYXocH+YiWplXjJ68habjjhziEz1IT6HIf00ReWQdwrFVhGzT1Hyf/FyDc+XC
	 cooXV2R7Gk3VMBLCvilmKLoKCY4+nacLdfVaQ7R/blnJK45wmnOj0v2Tkxl9qCB5ro
	 WM4GbcG/ZSmmA5wRFDB/RsaVszQWGl/Hm7s4cLdpAR368n6N+5S69P3a31kHfrk2FD
	 k17WW1vlJXhCFM6ADJOv/qbWv3rravDHirRIB+xiqMpVKLgPCcYSHZy7yywLIWW3Fx
	 lShmoA5Adwqvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9405DCA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756379357.22008.13735888240869656185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef1fe5b2638d8f6fa1b5aee1276f23131c68eef0b95f8b38e70d9b086171d15
Date: Thu, 11 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757563793
