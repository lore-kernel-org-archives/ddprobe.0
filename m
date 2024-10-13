Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3342717557
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728822354; cv=none; b=l2AxUq1Vyj6u+y3RCrgIDpk4/D9tcEDjbyD8i/MDbB13QWn+8Q35VlqyTb6WLpYPSeYYlW12w1cOT9/K0RxCCTFGtY/ndyIjWpaf2j6bFZkW78lbUzpAs2WKYMXrHYg0l7jmOqfkJFxe0+ii0+p6HwwGZL+hfaClE7BFPoFALrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728822354; c=relaxed/simple;
	bh=BEmy+KVEB+w24ZUJwiJ4jQNpKgnAGCCJuGJlgjSsukQ=;
	h=To:Subject:From:Message-Id:Date; b=Ln6pfsIZZIvrrjZ3IfBIgOkY+pU8GiUqh7ZSTADSGYaBRXecpQaVQEuSIDaN1Ian2oOsi9QnPMgcxhsXsIym0+FotIcGAdI/omlQGkLzLIsfB+IIvKh6tCehGKIoYKRxgMt2pznMGWgONvU3fXxcjityYmN20CaslEb9727sEMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3OqVPEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3OqVPEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F74C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728822353;
	bh=BEmy+KVEB+w24ZUJwiJ4jQNpKgnAGCCJuGJlgjSsukQ=;
	h=To:Subject:From:Date:From;
	b=L3OqVPEp1UVevZNMjrovg4VMTUq+7ws+sQQ5jcCbk81MGqSP44rOl1u4lxGYNoAGr
	 NWlAysjEssVnkJSJuRx/aWomK8J/I+8pGQLqjEd1l73SKeOt7ZJfa8In2OvL/MAB/p
	 PU/XyopXkEYvGQZqwccwTLUQ82rbTsIzLpUXgjcalJz7exnBp04QgDiqotnADLT4ff
	 Yt2V7tzfIsd1g7CtkiM/C5bNa1E6hbQXEiYCe5J739hItmKEnw3cP0ZXvt2yupaIoT
	 j9K9VR8WRnAgctVvLb2KyJL1uaLJz3yh+PKD2Dpk85M975nEoVCmXIhHAPQ+7mjhvi
	 rh3dkfHX7igKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3380CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882235362.30658.17796371113176195709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed80094d0c9bc363fc6200006c89deebf2476ad19a8e477013e55f522f28ba71
Date: Sun, 13 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728822353
