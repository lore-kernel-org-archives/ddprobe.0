Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F4C36C5A9
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780820674; cv=none; b=pVjLdopZLTIdDOivfhfd59utCPDREDNdzH6Yr2soY3EZZGTFdiKadzJBgCwAnZHHIPs5DOylPnuokd/zxHdQGFLi41EJLm7dC3CHIRtqpsGF7/pL3RfsAyrhe2RJztZbqBIz5A5/m9k0jlQJ04YLcVK3dbhtBo26Up4KbC24UPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780820674; c=relaxed/simple;
	bh=tUJgSuePyIumhfHtvcgDfaUfuPUzGi+YLt3JKyWUWx8=;
	h=To:Subject:From:Message-Id:Date; b=OgRvsU8L0nHWVPLZxyJNKQfjRaDG8s1UZmu4XHWkupv6KkILIbxNI7uc9DYJerqugJDWmTz97WX+/hjtvL8K6pcLSgen27u5t367wi53saQC+u57mn8q/7zYy9ascJh4Uf0fOiWKze4HAVP9GB/alrTcWkPrkcI/Mr7RpI/sPCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UddU56lZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UddU56lZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA13EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780820673;
	bh=tUJgSuePyIumhfHtvcgDfaUfuPUzGi+YLt3JKyWUWx8=;
	h=To:Subject:From:Date:From;
	b=UddU56lZ6qBAPM2JN7amW2oAaiMJnq8zO6eGEu/6oPhYOTpCjrYSz060xIySV111x
	 /g0cfl+0B7e43t/hQd99yBN0TMK609lB9rj944lY8Z68TDBSCbing67+Kn48rE8qaE
	 2L2GpnlDXGWqfGeSLvqHxriPntyYsEKIEnqVcNPuhq6Cinz9NV3fIUz0TPveDYRPg1
	 n8sUysmPdoCpWOwZ9VOif1L1hR3a4G6p+EtFxOYvn9iT/bQ0ZnzNUTWWWqCXccjILt
	 6OxM8aIVaP/8hQ9h2TScQamIdckfe/sGrnMO6Po28vNWRgpIz+pqzufztTJGU0cXra
	 ibltinqGJmaNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D9FCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082067368.6923.7583809223136815385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab92f7b7775846b380cf7f6034b4497d3e2f440bbea75a6c8694a7072843138a
Date: Sun, 07 Jun 2026 08:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780820673
