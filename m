Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5D82641C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759775394; cv=none; b=sG/eavaY1vm1NE3UvPoWC6goQIT/DQt0hJCbYOafOlNu2+n/5TNH8QkhIj9qVrczcvzmr5jjx01nKbUEEmKOFYko6Btnf512DIuZJx9Y1DIzKIzJWE40X0Ke/wzf+T43H5/Urds3Wo00wDsJg2EVHTtx+5GHqt1/uGIGfWgpTdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759775394; c=relaxed/simple;
	bh=lgFEJmf8DC/9BU//lYtv3CmjXN4J1R3u9ssFN/cQNl0=;
	h=To:Subject:From:Message-Id:Date; b=ipq04C0GlYaCU7X9xieMdGwoT+CZ7l2JE9aMuXy0yfj6msfQ3r4sq/JGlBXJmuBvaBn/OVGCpC3F0cfkjXaUKLHE4S1SUIHsQSVMTrJq713+pbAWej/HJpo3pKFaVXs4BPrUJf/oInZfMbsV5f1R1TMJhtcx0CzPhA80AWzaFOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5J7q2xk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5J7q2xk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A602FC4CEFE
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759775393;
	bh=lgFEJmf8DC/9BU//lYtv3CmjXN4J1R3u9ssFN/cQNl0=;
	h=To:Subject:From:Date:From;
	b=d5J7q2xkZUFTHJk/UcRyjdXVq4xL88+uqpCLdGIORl6teGspPjP88vB+IlpL73DIe
	 8nEelUYMf8jtXJjmHrc+k90m20xxWbYvoulAof+TIfK+EqxVms7oAnOqWCl2orM2ez
	 AVMz8N07AExKrp0WwwdudSFtMgOXKAYErnEJnQ2XFqBYAnOjqY+Nd6XM+P08FcFmIc
	 wg5nFwdTDhzXoTEqfAPWuIByioUTmWDuaURJzDbAIxN68bCvtcbjtIODJ1XryzbaFl
	 mYF02o492cCyJoqPdFPHGX7HgWY5kuwAalbuigHzV7IaYhQFSTD9IeBWNOD6g8d5fj
	 Bg2Q0aQaOnPtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A02CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977539359.15256.6845660352513795947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0e62ca5a3c8477be71f587655315992b65a6ac5bae9934541583694b9e4230
Date: Mon, 06 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759775393
