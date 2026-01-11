Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2524E348884
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768154034; cv=none; b=Jam+1jO8AiT5SVIS2jZoZmPhU0sRgonKBjja8JJjvd4QVW5nA6DzO5LHf03oLDqvkWLoIyLFX3IlwPX3XMG5i02PjgCxGDn8tlYW3ycIshFwuB9xG707lWOjbt7twv1v+0DP6UvslCC4MOLI/hQOE/eZyI94nNUaWRfDdTmrsII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768154034; c=relaxed/simple;
	bh=DF0VVUCXdWFl/jhFd87Bs+80E+Csq5YoJRd1UKNceAY=;
	h=To:Subject:From:Message-Id:Date; b=THSkFdOUz5rfqAbJV20MhIMIVvkV2EQdSJ8Xyrke2ZtVuejaoirYvivWn8V+g5wI+3RqLJrSCQFzJxEZH5lINK/PPgzoFcFFa3bzT+e9EZPODjeG5W3aSX+p11MgQ6fzHbbadjWbs8ffkoxW6O/c8GD3ZLrzCGG6bwMQD+zXp/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3T6M4AG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3T6M4AG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A963FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768154033;
	bh=DF0VVUCXdWFl/jhFd87Bs+80E+Csq5YoJRd1UKNceAY=;
	h=To:Subject:From:Date:From;
	b=f3T6M4AGpFfdlv3KPtD4jXhd84ovROfc9U6B9D4M2UxQGNJVB7kttadmaEr00ZOMg
	 6KFLzix7uJtLzo10cU7fYVzFeE20Hrqu+gS93pmArGp0ZkvT+q9dSyLrqxSDuhBql/
	 6BU+Zs8SnK6Rxrz3KelLFGbkscL4nQnLJJSjGNXit/EdQOqRflJi/C8tLIsBLTEPlm
	 pT1h0Zk7fkQU7SiMRBBUUt08WI2/DiirLjU1XKek0/Xj/zocMdV2RCQLslMpdSyc1d
	 LUGPDt8gYn/QL5BnY1ZpH78mJDXOHARCiAKgD6lIu+BbT77cc8ALFPgR3AmPgrEm74
	 LuQ28P2t8niNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96884D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815403358.6663.10883863577504043458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55e19d99544f092392ff3afeb9dd5872a459fcc730d0462ca6ce5a80c402efc
Date: Sun, 11 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768154033
