Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88DC4301709
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787778034; cv=none; b=ccrH5+Cd0j+dF6bOx9kuZ6Wa4WJhjDkMcOKMuVLv/T5AT5rgjJprMq+qF136CqjkF1Uf0itMuxhsWCE5ohEWIOEcRPhDNmJug+agJmNaI2ED+WdmiOqPAiIxeeBt7N/OAxYePxt3w2LlHlHlInDoo0W+L2y8IwSduuTaQdAmrdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787778034; c=relaxed/simple;
	bh=p1NTih0YfC6cA5uE7Mp3leIr6uQtQW9eTjnQQI2mDQE=;
	h=To:Subject:From:Message-Id:Date; b=pyjFeVHBtVe5v5DLKI8DvVnkOc/uMmVfg7RSBIc/I0YqmmKoBN59PkDeah75ArosYpR7EodVsUChPWZkdkKhHSzgJfqwbs9WukMn1UepkTZJTr/JF5rziw6TwNMCQOS6RnladXSXnE2FQvyfZDySwX/MrczbStT8guxbi32D10I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nq2c7Gp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nq2c7Gp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDFBC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787778033;
	bh=p1NTih0YfC6cA5uE7Mp3leIr6uQtQW9eTjnQQI2mDQE=;
	h=To:Subject:From:Date:From;
	b=nq2c7Gp7Rv6/Onic6Nk97Tk3+WYW5vBGBx6cQOHn02N7eyYedhDPIgJ6Y/STNa5Fc
	 biGL51by7nPHzfqqEpZxQEnWf7TkPuYYOLRiQCstGRUpzbUywixRB3btbxCu/IJrYD
	 TDpEbQ3oBMoYa2hd81vwhIloZhdFeXViRcTG7OE9ag00pQapHaDf5RqMd83962umru
	 j/aUiRiJVUIp2v2YMee3+3WZMIMpUuHoiuY+nCoocpNp5o2z7UM02lwx7ZC/GTY/l/
	 +EttBH1odSybcNEVUQlRer0VALUcCdYFm7+R+EA4ZkeaRrJwfvcpVhF5w6Jwd2auf9
	 Ghi+eLNN9k4jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A6C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777803368.11812.3429256428767914497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4460dc00f4a07bfd1522de3b2050736fc549d5a8955cc97eb2b76b51ade765fc
Date: Wed, 26 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787778033
