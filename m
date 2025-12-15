Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E4D26F2BD
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765778574; cv=none; b=u94PCmlTRxDaCy0XsDZXVT9OGIS4qOKH8U2YvW1yySEE2Y3DivR1PsAATnS9ehVOUAKXYUgTtV3tEN364f7R9iaDywI5qEessV+IC44QeZKFu+rYGH1A/YEdusKBbdSMBc8egwI3nUSjEbBhSb1fKoNnTSCnq58T0Wbkii4HMq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765778574; c=relaxed/simple;
	bh=HrCDlM42qWoQJ2A9EUeD1yA8jg2qWEzoL3ihdPGv1ZA=;
	h=To:Subject:From:Message-Id:Date; b=UIgHvP253wmpKt1ggucdHNx0IUzuYJ1w1Wn3NZlUiSYi2kqyDcdwB8pa9w+ltBMlEf6SN3456Pglp4jZJzfkoxtPUxAeorSAqTacbHNgkf+qCWmYyVMD7x3UYMwUl4CDb3cgf+PAgF/6qEZ7FKK5WDPQPphJYdbaVBuk9uWEvis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkI3v6re; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkI3v6re"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB330C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765778573;
	bh=HrCDlM42qWoQJ2A9EUeD1yA8jg2qWEzoL3ihdPGv1ZA=;
	h=To:Subject:From:Date:From;
	b=NkI3v6reXWGbtlDhvsa51IvoQmQaYPiord/lBTtJia++SXCXfxBabOPRcbOJ6B8vE
	 Cf9+9nz76SyfybB6TH+bDMQIwZixnzdeJ2U0jyaNrUIB50cfCGq7/N/xMSCHg+MgMj
	 3xC4XEAWQHoLF7HDtlzxcYKUkEW/RBZrMU5AAY24o9BjRo5C+ws2r12XyLWE2xIPNM
	 GVQGKsWRkYbRQnlMIT5l4uR7R24i4NUvB16oEuzcnTW7rCFoJweOG9fCieQFyVU8/U
	 t7wvndv3WB0iHrTT3E07lDcJt3/TG4sPB/JAh0T9Vs9mzI3qp6Qh4t7qjRb0GAbZq6
	 4JE5oEQV4fg3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979C9D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577857358.17152.982096833864775913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67043907860da789dc59d3f956b3aabb13ffc01212df5a67a52a99c39bfb6cd6
Date: Mon, 15 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765778573
