Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4065C411FBB
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792352434; cv=none; b=Od1si/tWRATZNjenqfQQBpkNrI+NeX/DFSe60BZQBrFRBAa4YaSqPmlUH/fas43RE+0dKaylUOiWemgp1ecjqzmzkzBDNYlVOg+hkJdBo7Ms7fP1FBgeyCG4e8DgQryreZ/HgyXAKaomqiVuWSPslGH+oBWyHZXrmLzkUVaZy30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792352434; c=relaxed/simple;
	bh=IQfmYZsd5ytUtonMCqzb3dtmDadqY/zOciB6g3xpZtA=;
	h=To:Subject:From:Message-Id:Date; b=IfX/hnA/6b9XbOZt6lGnp6E+RVWMqRfquire4FT+5H1tXEg6gcFDMcadRmK4GEr9D1ULtqBm3UKSuGoUNdKpjJr6JWbP/sfAZkpxjlszpkCO6ZGo/zuY3wMpBzPEe+lA+LmJF6YKs8wqJphEiJvDNfOKN/EtzCSh0Yb9SiTWrgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkXiiuy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkXiiuy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2519C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792352433;
	bh=IQfmYZsd5ytUtonMCqzb3dtmDadqY/zOciB6g3xpZtA=;
	h=To:Subject:From:Date:From;
	b=MkXiiuy1SCjoqSMo/XxExnJrpVdqAOuPXOrl7q5MRdsEO9jbTmaTjT67Ea1Iqap3p
	 BU8S/MDxcikKPhUc48eCeuO4jovgx8y52zuhcciQLBzbeXl/gebTmUSkRMV7Fv1hw+
	 5hTwwF5XPRKe8QPSj+So3JAmJaQODjgc6ZPfQwnS2wl6e2v1wt9Eg3atFAV1eIhf36
	 4KjMuwmxQFn/muzyLpSqBA7+Ei3dxKWquN4g4bngsTjYeyr7fQwfu9FDkaHtWB2Qjk
	 X7krh6hlkmInEUeeZn4HTVxvN7ZI6ptFBzagGKhF6yH+dAd2OdKQmfqhJqeK+Hu8li
	 hu8L6db5z+v0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9094CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235243368.804.1389318759069140451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f88ee03567dea2399843f0bcd39938a7fffadb6f45437762c4e5672053c08b
Date: Sun, 18 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792352433
