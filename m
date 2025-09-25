Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B89F1D61A3
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758814194; cv=none; b=RUhPO9T0PDKgTg/X415L5noIse4cGIkTwoiq9C9IcmeFQ5rCB/2mGgyDIRaC+F10yOmrWzxXoqWJfpWqHay6mX5N6KcPTfaGMGLjtvCnvfAyPztAGPYzQ60gWQbIVmczEotNRCultpLzr+uq01lcJXN36y24VHH1hlH2pj8ED4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758814194; c=relaxed/simple;
	bh=fmc7Ao+Sy7qBlsIYng2WTT0FcTB94Onw4rosLXudk4Y=;
	h=To:Subject:From:Message-Id:Date; b=lX1/bNOPP1LEYN2BsCuM0NLYWnDwymsciq91y4aCcBqyDKhiZ+vZx4J48TghlPj6POwWUOzYtSJ9hR1mwG5f3EwnMgX+CwkRcLKPtb1txbaiXUVXI49viKV0TVtWy7pRR0hlMBviu/uu5bBt7EAckz32D8yaRCeatS67obPu7ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYJ4KJj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYJ4KJj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A242EC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758814193;
	bh=fmc7Ao+Sy7qBlsIYng2WTT0FcTB94Onw4rosLXudk4Y=;
	h=To:Subject:From:Date:From;
	b=eYJ4KJj9mXfjOLIjK7d6eZXcmzib8w2pqJCYlO9Q1oKGGxaCnlTdzuGZlWanjy5QQ
	 mYEIsKXa+dGMTw3S2YkRxS371AvSGRJn9w8AKVpZyxInfkZUfwSKpueP4r3uMVe86W
	 olRUw2MzzkrSbM6Mkdpyh0ymQv1IdHS+th/YVxza7CNDdmOjGg7gsY3eCtksCMbCM5
	 QT/PF9eqWq1hrz6UP6qPkySdp6u4uWr7EYofeC5bLXvQ5jCoSBOtOR8ptc7VN37l6j
	 /NFjE7I0rKV/14qI63CE4aQi+0hIu3gswxyelFN3R6r3Jpa6QW/FxxNonJT5nAMSY/
	 hExRaA5/2e9xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F361CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881419357.25084.5277260689016401295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ff7601c6a9ffa374d510c36a14412714697c4a67f4c40898ed63ca9974b9a4
Date: Thu, 25 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758814193
