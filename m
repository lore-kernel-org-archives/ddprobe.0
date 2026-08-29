Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CA02CCC6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788031234; cv=none; b=bJi610Ew7ebT5rAy+OxGGKYSltK5HIYqjqa0TCkyoEhWCQhoOekprWReVrSl6OPlMAM1QEtbQv6YBWqwnpQt/l/GHNn8sIk2vhZUGvkQyH+gLfxhv2lZr66Hje4+KeTfQhsoBbTCv12wJeHF0iSiKxgq9MXEsmaNrUehnbMI21Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788031234; c=relaxed/simple;
	bh=fdw14JuPh1dm9gbWqZGn3tfw8vwY9KbEuHvKFehPVzY=;
	h=To:Subject:From:Message-Id:Date; b=IPZt6uHaEynsGcWM/pvxjxe5Cv7bOMwhFtI30jWLUhABSjjG/epWRMyfOgB3jo9bFx4kLFnMJYHpdw4Fk9U8XLmyH1mTveHiLfz+OdJIHRk22/ieyKnZsEJdyMD2eZQJY98nrpuzCJym8aGIT01TlftUBigdzbneiJFNzLdryC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8Gwbq1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8Gwbq1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D730FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788031233;
	bh=fdw14JuPh1dm9gbWqZGn3tfw8vwY9KbEuHvKFehPVzY=;
	h=To:Subject:From:Date:From;
	b=R8Gwbq1+CVVfYNfxzFboUh9Vmn4BzlP6ptNVzBgs8Oy14KpGZ1eGeLMAGRzGs2eME
	 +EIH5DLh8AYM0ep6WlQXUdFMFjX61F+Wnc4yTF/ZF3/wMHsoVli3F1tLeXG6+bFYf4
	 6W9XWMY67cZcGXPQdubvhYfGh/yc6XcA9nJDNBg7NziDZcMuJYY9PbcxqBOs8yhwBK
	 tIG/+fpBVrM4gmEIat88MHroB6GeLVznfq/ZnP7XH9uCtWRNP3jll2Qtcl30ZbEOxJ
	 IM4bwwevjEa00dtjrVH14kbn6OjXI/NZ/fTLBZVm+/k7IRz02I16eeP+CnnT9rZGXc
	 H4lRqoHhOuxMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD171C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803123368.11064.1443664836105381819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45efc5db05ac0fab8fc4e6b6c84746964465b8eba2da5fa49fa350ef00676900
Date: Sat, 29 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788031233
