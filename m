Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EF83EE1FD
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785496834; cv=none; b=fX/zld9zZfApVJkCYNHmWmhQI7o25ckXPoeCAhUn4XVgxTpwN3aQFQH/k0K+Dx88zfBdAv8YYHSVi2EtsX7W917VD4KmTFoRgWFKW61OFWdPHp3q9GO/bzicsyDaiNEASf7nu9hmeFkJ/Umx1pAusBt4/BPxOl8Wc8QFmVF5Ibs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785496834; c=relaxed/simple;
	bh=lPGeQtGtkliKoWwr21XXGI+GGiVUUAyij9qxpRv33SY=;
	h=To:Subject:From:Message-Id:Date; b=iDwNYhYytzg6kDiQelWBmIQT0GnylZd/HBg26iSG2MZtwcZIs17YrzVnZ2luM5pe7dvcsgc5EHAnOpiD2HwqF6bb6ZW+4e/krr98UtKp2r+MnekiqSMJa9d7IA+H7WyKx5cXfdrGVyvGnw7lAI5HP8i8Kv5HdEj8lWc9mjVpb+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZynYscA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZynYscA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD213C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785496833;
	bh=lPGeQtGtkliKoWwr21XXGI+GGiVUUAyij9qxpRv33SY=;
	h=To:Subject:From:Date:From;
	b=UZynYscA4anWcM0JyGSVmJeUuS67s96U8MLMu3gAsM1ZYe0DDHT2KQZAYaLm7J9G0
	 XCOVe5KwQYjCs9UdIiwmR+92r0TpFsnIY16yiJLQpOVSLcNvq+HLDfBGDJnRWDiddQ
	 v0wBUryQMV0HDzsViD3UZv2GtPXzbR7EWO9HQpYfLDrX19Ad0lf2hiv9WNA55ydUrn
	 yChTkp/+VVHIxgrmVF6rhPqj5RWpf14S/FbWprwpVmqJ12Hn6q0jKPET7PxzoRhuxn
	 OQBQCxxUACcMCX3eMN3JchGLhMwEHXlXx9TPbQlMQ1sWbeTRnf41QmPx1n9Ud5ZAgm
	 ZE5CHVajQ33+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD29C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549683368.25445.3084394199047863284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4113db1c8db5412833da2006a5bc502eba1947ef2a416dce11a0c78e694041ae
Date: Fri, 31 Jul 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785496833
