Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1369120459A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782344254; cv=none; b=ODLYQads52rUbA21jWmqSMXLGI7Gtivb1zVFrNFXdEwwiZXbRSdu0+akraEc3QEuAlYmmGJld/g35PL14CaxHYiEHiF74HsB4BnOmPoHwLaFFZzsJ4ZbAaNim+Z8TLrFjv7TLZNvs/WcPXyFcpJQYz+4tEuHVWNRs6iqfbElcaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782344254; c=relaxed/simple;
	bh=veX3TtXk1GufotRSZiuBFc92ZlXrpf8aJ6CpEpZ6IVI=;
	h=To:Subject:From:Message-Id:Date; b=ttM8QK/0MgTlfgRVHpEneD2NWbc8+ysplk8Vb2kZlzrwikBe+QHmV2hvTCSSoJjFNnPp0CCugLECI00XHHOpxQYBWqk5nYTkoPUpQeSZouhV2t64Ir/fLdYY/qzDZShhA2XQaoFTUJxfPEddAMk0eL4bg5DLlSenBYJmaL7w8FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lq94dg5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lq94dg5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73E8C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782344253;
	bh=veX3TtXk1GufotRSZiuBFc92ZlXrpf8aJ6CpEpZ6IVI=;
	h=To:Subject:From:Date:From;
	b=Lq94dg5gKCWpsRyvQKOdLAeu42903VyTggDu3UA2OPgXQz61wwV0d9asFZzkUyn1g
	 zoAiDfiSZ5ONKOW3b6SZqZe66Qpjd/yZ0AQlrzeW5SDty/OHppD4E8m08mwZ3aeWQf
	 KjIDWVUJ4msBRuY1unn1BjXf9gymMJcah/gwdg8QUH625aMwkQLTQtC1Vxr+LxvkWA
	 sSQTmu2uiojUH6ouzvQ8Pe9qqy/+HvDa6yiOGbNwIO57XdAxCvdTYdh/veFBYj4ejF
	 4qm56Ki7O2N5cuAV7a0Hpt5fIlzI7bxmUH+qKYqgX+PjNh5us3r87UDASSiyM5+sf0
	 lZ35Ulo+ozHoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1B9CDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234425368.7624.10922496737960229920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520fdb3208ecbcc52b6b962c6333e7509f2600b5e0fb5d5fe6a9eae6b038467f
Date: Wed, 24 Jun 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782344253
