Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3649434678C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782931114; cv=none; b=ESDYbjZUnC2UteyfP/2XrMh0WSF+8SECWu4WGt28XgJbxzXgxEv5Ul2s8SDHVORGUuYTPFgZuqu1k8qTaPD5ox2l7nmplBlSEuj6hOvP4p047UkjjcEKYBjcA8oF0kQrrP0MVK4x3UEU6dTzscGiLqlgX7J8a9sysAZsPG4JSjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782931114; c=relaxed/simple;
	bh=TzHDSV+rAJSWJCHNsJCjJcYfZ8fairPpUYsy4505Ql8=;
	h=To:Subject:From:Message-Id:Date; b=GPPZOYNm9KRLJ094scfaGIO2Sf6mPiVnklz8asraWtMlkfRQaliz3c3+s0ymxCWEhNkyWNoLfqQ9WccadCQAagbZIe+uOM6HN3jvVCb3rrJv7mKtAsyYcNN23zGB0fLuGxaEIsKPD2BtEyviBuhjimcdxTEGJiTiRtyx6Yl2BLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNjmw6V3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNjmw6V3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C462AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782931113;
	bh=TzHDSV+rAJSWJCHNsJCjJcYfZ8fairPpUYsy4505Ql8=;
	h=To:Subject:From:Date:From;
	b=PNjmw6V3onVuJwPR6hGFLZl3Qg7BGz6TPCgBPxspqsLdAnWdzm/Q5ZwT5tuaQzhu/
	 2m3LzsfF7qCTBpbSd2pKdNXrQlTzTiSgwLyReA6mzBa1s6Pc+uuKmwkpN0ms8JdLtI
	 UkeWBCt4zrdXRQ5kbNeTLdutAhA+lG1F18L2ovs6kf8P3IuwRtwFZukWUeixelm5DI
	 2u81h2eS6WX+bDQfNk7+FkaGrSFaJWcCUwgKPJjh784t5ziio4KmzZ8cK1iKpN+/N5
	 Icn9XxgkeTtjZ9sOWHIN5fUVXZleFbo0paO6Uwe0ysLWcDCKmZLX5FLa7AuA2fkQWo
	 VWJABPZe7fK8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA80C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293111368.19401.1089909656663429552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890056627b7ba9cfb62fecdb8d55c5d03ad9a18a06c1278bcc5d6294197c10d4
Date: Wed, 01 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782931113
