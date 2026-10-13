Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC862E737D
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791871234; cv=none; b=Kh4wPBNdGpoYKv7dY4H4FaMC0VGEIxd0MEQEUgfdp6FZ/QeS/LfgUkL7oKM2w9guqg8CA80rFq5XvjLZLRzJ69BK/CoEaoBTNtHh/5tC6uLi5oPMLeTHP62/BkoTiTwwMLsPNsgPE18Fw0psBo/g9+RBGlkM8vAX4dRIqajESco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791871234; c=relaxed/simple;
	bh=NDX7dD37JmQO+AK4rddVypPtlz5PViBhPDiOOY2UORk=;
	h=To:Subject:From:Message-Id:Date; b=YZHyH9w3GcAJWnaGaWq+Up3gPGTbC4mWbRRYINAhIlattjGaW7hZcScMN+jhGcyt6vCF75V32WpGu9uzKQpTZQAL7bXK9cvqhDL/ZBCOoWhFTNph6nXFHOBIAckxY6mt9JJE5YKueRfXLsRk+zAsnFDg/ulov0HB/wKI2mltal0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/UG/WsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/UG/WsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE738C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791871233;
	bh=NDX7dD37JmQO+AK4rddVypPtlz5PViBhPDiOOY2UORk=;
	h=To:Subject:From:Date:From;
	b=a/UG/WsFAXQIJkzqHPAIvh3qX3i9F2EV4vuTRE5JJBrRYL2Oru+0w1dTmr6DBif4f
	 ul1+6aU3IuMTT3iP/ni1AiO7A1hG0vZ9DrQ/cSyAjkdgcW7W/QioAhKdopfohn09l2
	 PGKBDwqMi/7sENuZ0Jd1WkjNvv0oQl+X7Xu9hHu+8TR9oy1JHo7D4YZkaJ2s83WqHH
	 b4jjyBETjTw0CPtuchbTJwLbq0vUVJSeg8SUHtAtqIu4ZZzJh0iakqTEOZOCrWXmHi
	 qlAiWfkvg+gsEu8QOtMCaTxy+tcDt05/Px+Yq/ZO7jpfQtbuNN+W/EdbweLYr7GnEE
	 KABVTF0QAOCqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9227CA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187123374.16053.299875250103373943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c19a6ef9756fe4efa7501dfa17e1d01150eee0a211383208286ec42569efe11
Date: Tue, 13 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791871233
